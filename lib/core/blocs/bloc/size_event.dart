part of 'size_bloc.dart';

abstract class SizeEvent {
  const SizeEvent();
}

class SizeInitEvent extends SizeEvent {
  final double width;
  const SizeInitEvent({
    required this.width,
  });
}

class SizeChangedEvent extends SizeEvent {
  final double width;
  const SizeChangedEvent({
    required this.width,
  });
}
