import 'package:flutter_bloc/flutter_bloc.dart';

part 'size_event.dart';
part 'size_state.dart';

class SizeBloc extends Bloc<SizeEvent, SizeState> {
  SizeBloc() : super(const SizeState.initial()) {
    on<SizeInitEvent>((event, emit) {
      var isDesktop = event.width >= 1100;
      var isTablet = event.width < 1100 && event.width >= 650;
      var isMobile = event.width < 650;

      emit(SizeState.sizeLoaded(
        isDesktop: isDesktop,
        isMobile: isMobile,
        isTablet: isTablet,
      ));
    });
    on<SizeChangedEvent>((event, emit) {
      var isDesktop = event.width >= 1340;
      var isTablet = event.width < 1340 && event.width >= 1000;
      var isMobile = event.width < 1000;

      emit(SizeState.sizeLoaded(
        isDesktop: isDesktop,
        isMobile: isMobile,
        isTablet: isTablet,
      ));
    });
  }
}
