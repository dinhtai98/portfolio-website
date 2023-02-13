import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_website/core/blocs/bloc/size_bloc.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SizeBloc, SizeState>(
      builder: (context, state) {
        if (state.isDesktop) {
          return desktop;
        } else if (state.isTablet) {
          return tablet;
        } else {
          return mobile;
        }
      },
    );
  }
}
