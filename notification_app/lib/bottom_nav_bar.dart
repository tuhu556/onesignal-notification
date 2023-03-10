import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:notification_app/constants/colors.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'routes/routes.gr.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  double iconSize = 25;
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      backgroundColor: AppColors.colorF0F5F9,
      routes: const [
        DashboardRouter(),
        UsersRouter(),
        PostsRouter(),
        NotificationsRouter(),
        SettingsRouter(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return SalomonBottomBar(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: [
              SalomonBottomBarItem(
                selectedColor: AppColors.kPrimaryColor,
                icon: Icon(
                  Icons.home_outlined,
                  size: iconSize,
                ),
                title: const Text('Home'),
              ),
              SalomonBottomBarItem(
                selectedColor: AppColors.kPrimaryColor,
                icon: Icon(
                  Icons.person_outlined,
                  size: iconSize,
                ),
                title: const Text('Users'),
              ),
              SalomonBottomBarItem(
                selectedColor: AppColors.kPrimaryColor,
                icon: Icon(
                  Icons.post_add_outlined,
                  size: iconSize,
                ),
                title: const Text('Post'),
              ),
              SalomonBottomBarItem(
                selectedColor: AppColors.kPrimaryColor,
                icon: Icon(
                  Icons.notifications_outlined,
                  size: iconSize,
                ),
                title: const Text('Noti'),
              ),
              SalomonBottomBarItem(
                selectedColor: AppColors.kPrimaryColor,
                icon: Icon(
                  Icons.settings,
                  size: iconSize,
                ),
                title: const Text('Setting'),
              ),
            ]);
      },
    );
  }
}
