import 'package:bloc/bloc.dart';
import 'package:task_manager/data/datasources/notification_services.dart';
import 'package:task_manager/presentation/bloc/notification_bloc/notification_event.dart';
import 'package:task_manager/presentation/bloc/notification_bloc/notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final NotificationServices _services;
  NotificationBloc(this._services) : super(NotificationInitial()) {
    on<NotificationEvent>((event, emit) async {
      emit(NotificationLoading());
      final result = await _services.loadNotifications();
      result.fold(
        (error) => emit(NotificationFailure(error)),
        (data) => emit(NotificationLoaded(data)),
      );
    });
  }
}
