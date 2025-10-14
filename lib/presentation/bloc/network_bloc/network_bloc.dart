import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:task_manager/core/network/network_info.dart';

part 'network_event.dart';
part 'network_state.dart';

class NetworkBloc extends Bloc<NetworkEvent, NetworkState> {
  final NetworkInfo networkInfo;
  StreamSubscription<bool>? _networkSubscription;

  NetworkBloc({required this.networkInfo}) : super(NetworkInitial()) {
    on<NetworkObserve>(_observe);
    on<NetworkNotify>(_notifyStatus);
    
    // Start observing network connectivity when bloc is created
    add(NetworkObserve());
  }

  Future<void> _observe(NetworkObserve event, Emitter<NetworkState> emit) async {
    // Check current connection status first
    final isConnectedNow = await networkInfo.isConnectedNow;
    if (isConnectedNow) {
      emit(NetworkSuccess());
    } else {
      emit(NetworkFailure());
    }

    // Listen for connectivity changes
    _networkSubscription?.cancel();
    _networkSubscription = networkInfo.isConnected.listen((isConnected) {
      add(NetworkNotify(isConnected: isConnected));
    });
  }

  void _notifyStatus(NetworkNotify event, Emitter<NetworkState> emit) {
    if (event.isConnected) {
      emit(NetworkSuccess());
    } else {
      emit(NetworkFailure());
    }
  }

  @override
  Future<void> close() {
    _networkSubscription?.cancel();
    return super.close();
  }
}