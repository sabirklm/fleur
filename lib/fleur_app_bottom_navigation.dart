import 'package:fleur/bloc/home_bloc.dart';
import 'package:fleur/bloc/service_center_bloc.dart';
import 'package:fleur/bloc/user_bloc.dart';
import 'package:fleur/views/feeds/feeds_view.dart';
import 'package:fleur/views/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'views/home/home_screen.dart';
import 'views/service_center_screen.dart';

class FleurAppBottomNavigation extends StatefulWidget {
  const FleurAppBottomNavigation({super.key});

  @override
  State<FleurAppBottomNavigation> createState() =>
      _FleurAppBottomNavigationState();
}

class _FleurAppBottomNavigationState extends State<FleurAppBottomNavigation> {
  var screens = <Widget>[
    const HomeScreen(),
    const FeedView(),
    const ServiceCenterScreen(),
    const ProfileScreen(),
  ];
  var _selectedScreenIndex = 0;

  @override
  void initState() {
    context.read<UserBloc>().add(GetUserEvent());
    context.read<ServiceCenterBloc>().add(GetServiceCenterEvent());
    context.read<HomeBloc>().add(LoadHomeViewEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedScreenIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _selectedScreenIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.feed),
            label: 'Feeds',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bike_scooter),
            label: 'Service',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: screens[_selectedScreenIndex],
    );
  }
}
