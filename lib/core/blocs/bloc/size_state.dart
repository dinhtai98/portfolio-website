part of 'size_bloc.dart';

class SizeState {
  final bool isMobile;
  final bool isTablet;
  final bool isDesktop;

  const SizeState._({
    this.isMobile = false,
    this.isTablet = false,
    this.isDesktop = true,
  });

  const SizeState.initial() : this._();
  const SizeState.sizeLoaded(
      {required bool isMobile, required bool isTablet, required bool isDesktop})
      : this._(isMobile: isMobile, isDesktop: isDesktop, isTablet: isTablet);
}
