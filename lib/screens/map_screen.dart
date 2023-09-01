import 'package:flutter/material.dart';
import 'package:hotel_booking/widets/custom_nav_bar.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: CustomNavBar(index: 1,),
      body: Image(image: AssetImage('assets/image/img.png'),
          height: double.infinity , fit: BoxFit.fill, ),
    );
  }
}
