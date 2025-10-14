import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:task_manager/core/network/network_info.dart';
import 'package:task_manager/core/widget/bottom_nav_bloc/bottom_nav_bloc.dart';
import 'package:task_manager/presentation/bloc/network_bloc/network_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // External packages
  sl.registerLazySingleton(() => Connectivity());

  // Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  // Blocs
  sl.registerFactory(() => NetworkBloc(networkInfo: sl()));
  sl.registerFactory(() => BottomNavBloc());
}
