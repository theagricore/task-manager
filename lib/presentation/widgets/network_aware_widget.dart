import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager/presentation/bloc/network_bloc/network_bloc.dart';
import 'package:task_manager/presentation/pages/no_network/no_network_page.dart';

class NetworkAwareWidget extends StatelessWidget {
  final Widget child;
  
  const NetworkAwareWidget({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NetworkBloc, NetworkState>(
      builder: (context, state) {
        if (state is NetworkFailure) {
          return const NoNetworkPage();
        }
        return child;
      },
    );
  }
}