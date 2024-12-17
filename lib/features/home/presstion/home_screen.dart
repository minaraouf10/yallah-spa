import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:yal_spa/core/config/widgets/custom_sized_box.dart';
import 'package:yal_spa/features/home/presstion/widget/category/category.dart';
import 'package:yal_spa/features/home/presstion/widget/smooth_page.dart';
import 'widget/search.dart';
import 'widget/top_screen.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          child: Column(
            children: [
              TopScreen(),
              Height(20.0),
              Search(),
              Height(20.0),
              SmoothPage(),
              Height(20.0),
              Category(),
            ],
          ),
        ),
      ),
    );
  }
}
