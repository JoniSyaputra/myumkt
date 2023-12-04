import 'package:flutter/material.dart';
import 'package:myumkt/widgets/umkt.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/logo.png.png',
          width: 58,
          height: 58,
          fit: BoxFit.cover,
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
          Icon(
            Icons.notifications_none_outlined,
            size: 35,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
            Icons.person_outline,
            size: 35,
            ),
          ),
        ]
      ),
      body: const HomePage(),
    );
 }
}