import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfo {
  Stream<bool> get isConnected;
  Future<bool> get isConnectedNow;
}

class NetworkInfoImpl implements NetworkInfo {
  final Connectivity connectivity;

  NetworkInfoImpl(this.connectivity);

  @override
  Stream<bool> get isConnected {
    return connectivity.onConnectivityChanged.map(_checkConnection);
  }

  @override
  Future<bool> get isConnectedNow async {
    final results = await connectivity.checkConnectivity();
    return _checkConnection(results);
  }

  bool _checkConnection(List<ConnectivityResult> results) {
    return results.isNotEmpty && 
           results.any((result) => result != ConnectivityResult.none);
  }
}