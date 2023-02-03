import 'package:flutter/material.dart';

class AnimationEase extends StatefulWidget {
  final Widget child;
  final Tween<Offset> offset;
  final Duration? delay;
  final Duration animationDuration;
  final Curve? curve;
  const AnimationEase({
    Key? key,
    required this.child,
    required this.offset,
    this.delay = Duration.zero,
    required this.animationDuration,
    this.curve = Curves.easeInOutSine,
  }) : super(key: key);

  @override
  State<AnimationEase> createState() => _AnimationEaseState();
}

class _AnimationEaseState extends State<AnimationEase>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _offset = widget.offset.animate(CurvedAnimation(
    parent: _controller,
    curve: widget.curve!,
  ));
  @override
  void initState() {
    _controller =
        AnimationController(duration: widget.animationDuration, vsync: this);
    Future.delayed(widget.delay!, () {
      _controller.forward();
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offset,
      child: widget.child,
    );
  }
}
