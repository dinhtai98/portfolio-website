import 'package:flutter/material.dart';

class CustomAnimatedBuilder extends StatefulWidget {
  final Widget child;
  final Curve? curve;
  final Duration? duration;
  const CustomAnimatedBuilder({
    super.key,
    required this.child,
    this.curve = Curves.decelerate,
    this.duration = const Duration(milliseconds: 600),
  });

  @override
  State<CustomAnimatedBuilder> createState() => _CustomAnimatedBuilderState();
}

class _CustomAnimatedBuilderState extends State<CustomAnimatedBuilder>
    with TickerProviderStateMixin {
  late final AnimationController _animationController =
      AnimationController(duration: widget.duration!, vsync: this);
  late Animation sizeAnimation =
      Tween<double>(begin: 0.5, end: 1.0).animate(CurvedAnimation(
    parent: _animationController,
    curve: widget.curve!,
  ));
  @override
  void initState() {
    _animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      child: widget.child,
      builder: (context, widget) => Transform.scale(
        scale: sizeAnimation.value,
        child: widget,
      ),
    );
  }
}
