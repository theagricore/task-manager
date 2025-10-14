import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:task_manager/core/constant.dart';
import 'package:task_manager/core/widget/bottom_nav_bloc/bottom_nav_bloc.dart';
import 'package:task_manager/presentation/pages/account_page/account_page.dart';
import 'package:task_manager/presentation/pages/cart_page/cart_page.dart';
import 'package:task_manager/presentation/pages/home/home_page.dart';
import 'package:task_manager/presentation/pages/order_page/order_page.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      const HomePage(),
      const CartPage(),
      const OrderPage(),
      const AccountPage(),
    ];

    return BlocBuilder<BottomNavBloc, BottomNavState>(
      builder: (context, state) {
        final currentIndex = state is BottomNavInitial ? state.currentIndex : 0;
        
        return Scaffold(
          body: _pages[currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            selectedItemColor: kGreen,
            unselectedItemColor: kGrey,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: (value) {
              context.read<BottomNavBloc>().add(BottomNavIndexChanged(value));
            },
            items: const [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(LucideIcons.store600, size: 30),
              ),
              BottomNavigationBarItem(
                label: "Cart",
                icon: Icon(LucideIcons.shoppingBasket600, size: 30),
              ),
              BottomNavigationBarItem(
                label: "My Order",
                icon: Icon(LucideIcons.shoppingBag600, size: 30),
              ),
              BottomNavigationBarItem(
                label: "Account",
                icon: Icon(LucideIcons.user600, size: 30),
              ),
            ],
          ),
        );
      },
    );
  }
}