import 'package:flutter/material.dart';
import 'package:hotel_booking/screens/home_screen.dart';
import 'package:hotel_booking/screens/map_screen.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      color: Colors.white,
      child: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavBarIcon(
              isSelected: index == 0,
              text: 'Home',
              iconPath: Icons.home,
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            NavBarIcon(
              isSelected: index == 1,
              text: 'Map',
              iconPath: Icons.my_location,
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const MapScreen()));
              },
            ),
            const NavBarIcon(
              text: 'Booking',
              iconPath: Icons.airplane_ticket,
            ),
            const NavBarIcon(
              text: 'Profile',
              iconPath: Icons.person,
            ),
          ],
        ),
      ),
    );
  }
}

class NavBarIcon extends StatelessWidget {
  const NavBarIcon({
    super.key,
    required this.text,
    required this.iconPath,
    this.isSelected = false,
    this.onTap,
  });
  final IconData iconPath;
  final String text;
  final Function()? onTap;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    final color = isSelected ? Color(0xff252B5C) : Colors.grey;
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Icon(
            iconPath,
            color: color,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: color,
            ),
          )
        ],
      ),
    );
  }
}
