import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager/core/widget/bottom_nav_bar.dart';
import 'package:task_manager/core/widget/bottom_nav_bloc/bottom_nav_bloc.dart';
import 'package:task_manager/presentation/bloc/network_bloc/network_bloc.dart';
import 'package:task_manager/presentation/pages/home/home_page.dart';
import 'package:task_manager/presentation/pages/no_network/no_network_page.dart';
import 'package:task_manager/presentation/pages/splash/splash_page.dart';
import 'package:task_manager/presentation/widgets/network_aware_widget.dart';
import 'package:task_manager/service_locater/service_locater.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => di.sl<NetworkBloc>()),
        BlocProvider(create: (context) => BottomNavBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Task Manager',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // Option 1: Set splash as home and use routes for navigation
        home: const NetworkAwareWidget(
          child: SplashPage(),
        ),
        routes: {
          '/home': (context) => const HomePage(),
          '/nav-bar': (context) => const BottomNavBar(),
          '/no-network': (context) => const NoNetworkPage(),
        },
        // Add this to handle any unexpected routes
        onGenerateRoute: (settings) {
          // Fallback to splash screen for any unknown routes
          return MaterialPageRoute(
            builder: (context) => const NetworkAwareWidget(
              child: SplashPage(),
            ),
          );
        },
      ),
    );
  }
}
