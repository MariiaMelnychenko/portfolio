import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart';
import 'package:portfolio/core/constants/app_colors.dart';

class CustomContainerPressed extends StatefulWidget {
  const CustomContainerPressed({
    super.key,
    this.width,
    this.height,
    this.title,
    this.icon,
    this.onTap,
  });

  final double? width;
  final double? height;
  final String? title;
  final Widget? icon;
  final VoidCallback? onTap;

  @override
  State<CustomContainerPressed> createState() => _CustomContainerPressedState();
}

class _CustomContainerPressedState extends State<CustomContainerPressed> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    const blur = 5.0;
    final distance = _isPressed ? const Offset(3, 3) : const Offset(5, 5);

    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isPressed = false;
        });
        Future.delayed(const Duration(milliseconds: 100), () {
          widget.onTap?.call();
        });
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: AppColors.bg,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              blurRadius: blur,
              color: AppColors.white,
              offset: -distance,
              inset: _isPressed,
            ),
            BoxShadow(
              blurRadius: blur,
              color: AppColors.grey,
              offset: distance,
              inset: _isPressed,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (widget.icon != null) ...[
                widget.height != null
                    ? Expanded(child: Center(child: widget.icon!))
                    : widget.icon!,
                const SizedBox(height: 12),
              ],
              if (widget.title != null)
                Text(
                  widget.title!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
