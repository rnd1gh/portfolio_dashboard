import 'package:flutter/material.dart';

import 'package:portfolio_dashboard/config/constants.dart';
import 'package:portfolio_dashboard/home_controller.dart';
import 'package:portfolio_dashboard/widgets/dashboard_screen.dart';
import 'package:portfolio_dashboard/widgets/side_menu.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => HomeController(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Row(
          children: const [
            // side menu
            SideMenu(),
            // dashboard screen
            Expanded(
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
