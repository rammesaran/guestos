import 'dart:ui';
import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class GlassContainer extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final double blurIntensity;
  final double opacity;
  final List<Color>? gradientColors;
  final Border? border;
  final bool showBorder;
  final VoidCallback? onTap;

  const GlassContainer({
    Key? key,
    required this.child,
    this.width,
    this.height,
    this.margin,
    this.padding = const EdgeInsets.all(16),
    this.borderRadius,
    this.blurIntensity = 20.0,
    this.opacity = 0.2,
    this.gradientColors,
    this.border,
    this.showBorder = true,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultBorderRadius = BorderRadius.circular(20);
    final defaultGradientColors = [
      Colors.white.withOpacity(0.25),
      Colors.white.withOpacity(0.10),
    ];

    Widget glassWidget = Container(
      width: width,
      height: height,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? defaultBorderRadius,
        border: showBorder
            ? border ??
                Border.all(
                  color: AppColors.glassBorder,
                  width: 1.0,
                )
            : null,
        boxShadow: [
          BoxShadow(
            color: AppColors.glassShadow,
            offset: const Offset(0, 8),
            blurRadius: 32,
            spreadRadius: 0,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: borderRadius ?? defaultBorderRadius,
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: blurIntensity,
            sigmaY: blurIntensity,
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: gradientColors ?? defaultGradientColors,
              ),
            ),
            child: Padding(
              padding: padding ?? EdgeInsets.zero,
              child: child,
            ),
          ),
        ),
      ),
    );

    if (onTap != null) {
      return GestureDetector(
        onTap: onTap,
        child: glassWidget,
      );
    }

    return glassWidget;
  }
}

class GlassCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;
  final double elevation;

  const GlassCard({
    Key? key,
    required this.child,
    this.margin,
    this.padding = const EdgeInsets.all(20),
    this.onTap,
    this.elevation = 4.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      margin: margin,
      padding: padding,
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      blurIntensity: 10.0,
      child: child,
    );
  }
}

class GlassButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;
  final double? width;
  final double? height;
  final BorderRadiusGeometry? borderRadius;
  final List<Color>? gradientColors;

  const GlassButton({
    Key? key,
    required this.child,
    this.onPressed,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    this.width,
    this.height,
    this.borderRadius,
    this.gradientColors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultGradientColors = [
      AppColors.primaryBlue.withOpacity(0.6),
      AppColors.primaryLight.withOpacity(0.4),
    ];

    return GlassContainer(
      width: width,
      height: height,
      padding: padding,
      borderRadius: borderRadius ?? BorderRadius.circular(12),
      gradientColors: gradientColors ?? defaultGradientColors,
      onTap: onPressed,
      child: Center(child: child),
    );
  }
}

class GlassBottomSheet extends StatelessWidget {
  final Widget child;
  final double? height;
  final EdgeInsetsGeometry? padding;

  const GlassBottomSheet({
    Key? key,
    required this.child,
    this.height,
    this.padding = const EdgeInsets.all(24),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      width: double.infinity,
      height: height,
      padding: padding,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
      blurIntensity: 25.0,
      child: child,
    );
  }
}

// Glass App Bar for consistent styling
class GlassAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? titleWidget;
  final List<Widget>? actions;
  final Widget? leading;
  final bool automaticallyImplyLeading;
  final double elevation;

  const GlassAppBar({
    Key? key,
    this.title,
    this.titleWidget,
    this.actions,
    this.leading,
    this.automaticallyImplyLeading = true,
    this.elevation = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white.withOpacity(0.25),
                Colors.white.withOpacity(0.10),
              ],
            ),
            border: Border(
              bottom: BorderSide(
                color: AppColors.glassBorder,
                width: 1.0,
              ),
            ),
          ),
          child: SafeArea(
            bottom: false,
            child: AppBar(
              title: titleWidget ??
                  (title != null
                      ? Text(
                          title!,
                          style: const TextStyle(
                            color: AppColors.textPrimary,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      : null),
              actions: actions,
              leading: leading,
              automaticallyImplyLeading: automaticallyImplyLeading,
              backgroundColor: Colors.transparent,
              elevation: 0,
              foregroundColor: AppColors.textPrimary,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
