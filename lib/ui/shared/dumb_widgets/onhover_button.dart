import 'package:flutter/material.dart';

class OnHoverButton extends StatefulWidget {
  const OnHoverButton({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  State<OnHoverButton> createState() => _OnHoverButtonState();
}

class _OnHoverButtonState extends State<OnHoverButton> {
  bool isHovered = false;

  void onEntered(PointerEvent isEnter) => setState(() {
        isHovered = true;
      });

  void onExited(PointerEvent inExit) => setState(() {
        isHovered = isHovered;
      });

  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()..scale(1.1);
    final transform = isHovered ? hoveredTransform : Matrix4.identity();

    return MouseRegion(
      onEnter: onEntered,
      onExit: onExited,
      child: AnimatedContainer(
        duration: const Duration(microseconds: 200),
        transform: transform,
        child: widget.child,
      ),
    );
  }
}
