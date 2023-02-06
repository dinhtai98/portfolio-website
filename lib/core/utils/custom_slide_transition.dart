import 'package:flutter/material.dart';

class CustomSlideTransition extends StatefulWidget {
  final Widget child;
  final Tween<Offset> offset;
  final Duration? delay;
  final Duration animationDuration;
  final Curve? curve;
  const CustomSlideTransition({
    Key? key,
    required this.child,
    required this.offset,
    this.delay = Duration.zero,
    required this.animationDuration,
    this.curve = Curves.easeInOutSine,
  }) : super(key: key);

  @override
  State<CustomSlideTransition> createState() => _CustomSlideTransitionState();
}

class _CustomSlideTransitionState extends State<CustomSlideTransition>
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
    super.initState();
  }

  @override
  void didChangeDependencies() {
    Future.delayed(widget.delay!, () {
      _controller.forward();
    });
    super.didChangeDependencies();
  }

  @override
  void deactivate() {
    super.deactivate();
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
