import 'package:flutter/material.dart';
import '../../../core/utils/navigation_helper.dart';

class LoginScreen extends StatefulWidget {
  final Function(String username, String password)? onLogin;
  final Function(String emailOrPhone, String otp)? onOtpLogin;
  final String? logoAssetPath;
  final bool showOtpLogin;
  final VoidCallback? onForgotPassword;

  const LoginScreen({
    Key? key,
    this.onLogin,
    this.onOtpLogin,
    this.logoAssetPath,
    this.showOtpLogin = true,
    this.onForgotPassword,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _emailPhoneController = TextEditingController();
  final _otpController = TextEditingController();

  bool _isPasswordVisible = false;
  bool _isOtpVisible = false;
  bool _isOtpMode = false;
  bool _isLoading = false;

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _emailPhoneController.dispose();
    _otpController.dispose();
    super.dispose();
  }

  void _toggleAuthMode() {
    setState(() {
      _isOtpMode = !_isOtpMode;
      _formKey.currentState?.reset();
    });

    // Navigate to dashboard based on device type (mobile or tablet)
    NavigationHelper.navigateToDashboard(context, replace: true);
  }

  Future<void> _handleLogin() async {
    if (_formKey.currentState!.validate()) {
      setState(() => _isLoading = true);

      try {
        // Simulate login process
        if (_isOtpMode) {
          // Call external login callback if provided
          await widget.onOtpLogin?.call(
            _emailPhoneController.text.trim(),
            _otpController.text.trim(),
          );
        } else {
          // Call external login callback if provided
          await widget.onLogin?.call(
            _usernameController.text.trim(),
            _passwordController.text.trim(),
          );
        }

        // Navigate to appropriate dashboard based on device type
        if (mounted) {
          await NavigationHelper.navigateToDashboard(context, replace: true);
        }
      } catch (e) {
        // Handle login errors
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Login failed: ${e.toString()}'),
              backgroundColor: Colors.red,
            ),
          );
        }
      } finally {
        if (mounted) {
          setState(() => _isLoading = false);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final isTablet = MediaQuery.of(context).size.width > 600;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF1E5A7A), Color(0xFF2E7D9F), Color(0xFF3E9BC4)],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: isTablet ? 80 : 24,
                vertical: 40,
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: isTablet ? 500 : double.infinity,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Logo Section
                    _buildLogo(isTablet),
                    SizedBox(height: isTablet ? 60 : 40),

                    // Title Section
                    _buildTitle(),
                    SizedBox(height: isTablet ? 50 : 35),

                    // Login Form
                    _buildLoginForm(isTablet),

                    // Toggle Authentication Mode
                    if (widget.showOtpLogin) ...[
                      SizedBox(height: isTablet ? 30 : 20),
                      //_buildToggleButton(),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLogo(bool isTablet) {
    return Column(
      children: [
        // Logo Container
        Container(
          width: isTablet ? 140 : 120,
          height: isTablet ? 140 : 120,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.15),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.white.withOpacity(0.3), width: 2),
          ),
          child: widget.logoAssetPath != null
              ? Image.asset(widget.logoAssetPath!, fit: BoxFit.contain)
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Guest',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: isTablet ? 22 : 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'OS',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: isTablet ? 50 : 42,
                        fontWeight: FontWeight.bold,
                        height: 0.9,
                      ),
                    ),
                  ],
                ),
        ),

        // Voice Assistant Icons (Optional)
        if (_isOtpMode) ...[
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildVoiceIcon('G', Colors.grey.shade600),
              const SizedBox(width: 8),
              _buildVoiceIcon('B', Colors.black),
            ],
          ),
        ],
      ],
    );
  }

  Widget _buildVoiceIcon(String letter, Color color) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      child: Center(
        child: Text(
          letter,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Column(
      children: [
        Text(
          'Personalised workspace',
          style: TextStyle(
            color: Colors.white,
            fontSize: MediaQuery.of(context).size.width > 600 ? 28 : 24,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          'view tasks, data, goals and more.',
          style: TextStyle(
            color: Colors.white.withOpacity(0.9),
            fontSize: MediaQuery.of(context).size.width > 600 ? 16 : 14,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildLoginForm(bool isTablet) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          if (_isOtpMode) ...[
            // OTP Login Fields
            _buildTextField(
              controller: _emailPhoneController,
              hintText: 'Email ID/ Phone Number',
              prefixIcon: Icons.mail_outline,
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email or phone number';
                }
                return null;
              },
            ),
            SizedBox(height: isTablet ? 20 : 16),
            _buildTextField(
              controller: _otpController,
              hintText: 'Enter OTP to verify',
              prefixIcon: Icons.lock_outline,
              obscureText: !_isOtpVisible,
              suffixIcon: IconButton(
                icon: Icon(
                  _isOtpVisible ? Icons.visibility_off : Icons.visibility,
                  color: Colors.white.withOpacity(0.7),
                ),
                onPressed: () {
                  setState(() => _isOtpVisible = !_isOtpVisible);
                },
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter OTP';
                }
                return null;
              },
            ),
          ] else ...[
            // Username/Password Login Fields
            _buildTextField(
              controller: _usernameController,
              hintText: 'Username',
              prefixIcon: Icons.person_outline,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your username';
                }
                return null;
              },
            ),
            SizedBox(height: isTablet ? 20 : 16),
            _buildTextField(
              controller: _passwordController,
              hintText: 'Password',
              prefixIcon: Icons.lock_outline,
              obscureText: !_isPasswordVisible,
              suffixIcon: IconButton(
                icon: Icon(
                  _isPasswordVisible ? Icons.visibility_off : Icons.visibility,
                  color: Colors.white.withOpacity(0.7),
                ),
                onPressed: () {
                  setState(() => _isPasswordVisible = !_isPasswordVisible);
                },
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
            ),
          ],
          SizedBox(height: isTablet ? 35 : 25),

          // Login Button
          _buildLoginButton(isTablet),

          // Forgot Password
          if (!_isOtpMode && widget.onForgotPassword != null) ...[
            const SizedBox(height: 16),
            TextButton(
              onPressed: widget.onForgotPassword,
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.9),
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hintText,
    required IconData prefixIcon,
    bool obscureText = false,
    Widget? suffixIcon,
    TextInputType? keyboardType,
    String? Function(String?)? validator,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.15),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white.withOpacity(0.3), width: 1),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        validator: validator,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.white.withOpacity(0.6),
            fontSize: 15,
          ),
          prefixIcon: Icon(
            prefixIcon,
            color: Colors.white.withOpacity(0.7),
            size: 22,
          ),
          suffixIcon: suffixIcon,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 18,
          ),
        ),
      ),
    );
  }

  Widget _buildLoginButton(bool isTablet) {
    return SizedBox(
      width: double.infinity,
      height: isTablet ? 58 : 52,
      child: ElevatedButton(
        onPressed: _isLoading ? null : _handleLogin,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF8FB5C9),
          foregroundColor: const Color(0xFF1E5A7A),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          disabledBackgroundColor: const Color(0xFF8FB5C9).withOpacity(0.6),
        ),
        child: _isLoading
            ? const SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator(
                  strokeWidth: 2.5,
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF1E5A7A)),
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: isTablet ? 18 : 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Icon(Icons.arrow_forward, size: 20),
                ],
              ),
      ),
    );
  }

  Widget _buildToggleButton() {
    return TextButton(
      onPressed: _toggleAuthMode,
      child: Text(
        _isOtpMode ? 'Login with Username & Password' : 'Login with OTP',
        style: TextStyle(
          color: Colors.white.withOpacity(0.9),
          fontSize: 14,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
