import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager/core/widget/bottom_nav_bar.dart';
import 'package:task_manager/presentation/bloc/network_bloc/network_bloc.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashPage> {
  Timer? _timer;
  bool _initialized = false;

  @override
  void initState() {
    super.initState();
    _startAppInitialization();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startAppInitialization() {
    _timer = Timer(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          _initialized = true;
        });
        _checkNetworkAndNavigate();
      }
    });
  }

  void _checkNetworkAndNavigate() {
    final networkState = context.read<NetworkBloc>().state;
    _navigateBasedOnNetwork(networkState);
  }

  void _navigateBasedOnNetwork(NetworkState networkState) {
    if (!mounted) return;

    if (networkState is NetworkFailure) {
      Navigator.pushReplacementNamed(context, '/no-network');
    } else if (networkState is NetworkSuccess) {
      // Use pushReplacement to replace splash with nav-bar
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const BottomNavBar()),
      );
      // Or using named route:
      // Navigator.pushReplacementNamed(context, '/nav-bar');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<NetworkBloc, NetworkState>(
      listener: (context, networkState) {
        if (_initialized) {
          _navigateBasedOnNetwork(networkState);
        }
      },
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(color: Colors.white),
              const SizedBox(height: 20),
              const Text(
                'Task Manager',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              BlocBuilder<NetworkBloc, NetworkState>(
                builder: (context, state) {
                  String statusText = 'Initializing...';
                  Color statusColor = Colors.white;

                  if (state is NetworkSuccess) {
                    statusText = _initialized ? 'Ready' : 'Connected';
                    statusColor = Colors.green[100]!;
                  } else if (state is NetworkFailure) {
                    statusText = 'No Internet Connection';
                    statusColor = Colors.red[100]!;
                  }

                  return Text(
                    statusText,
                    style: TextStyle(
                      fontSize: 14,
                      color: statusColor,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}