import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavBarScreen extends StatelessWidget {
  final StatefulNavigationShell shell;

  const BottomNavBarScreen({super.key, required this.shell});

  void _onTap(int index) {
    shell.goBranch(
      index,
      initialLocation: index == shell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: shell,

      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
            )
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: shell.currentIndex,
          onTap: _onTap,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people_outline),
              label: "Doctors",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: "Bookings",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline),
              label: "Chat",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}