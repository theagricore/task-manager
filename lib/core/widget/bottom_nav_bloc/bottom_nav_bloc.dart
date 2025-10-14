import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bottom_nav_event.dart';
part 'bottom_nav_state.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  BottomNavBloc() : super(const BottomNavInitial(currentIndex: 0)) {
    on<BottomNavIndexChanged>((event, emit) {
      emit(BottomNavInitial(currentIndex: event.index));
    });
  }
}