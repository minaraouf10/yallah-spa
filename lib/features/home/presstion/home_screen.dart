import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yal_spa/core/config/widgets/custom_sized_box.dart';
import 'package:yal_spa/features/home/presstion/widget/category/category.dart';
import 'package:yal_spa/features/home/presstion/widget/smooth_page.dart';

import '../../search/presstion/controller/search_provider_screen.dart';
import '../../search/presstion/search_screen.dart';
import 'widget/search.dart';
import 'widget/top_screen.dart';

@RoutePage()
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeScreen = ref.read(searchProvider);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TopScreen(),
                Height(20.0),
                InkWell(
                  onTap: () {
                    // تمرير ref إلى CustomSearchBar
                    showSearch(
                      context: context,
                      delegate: CustomSearchBar(ref: ref),
                    );
                  },
                  child: Search(),
                ),
                Height(20.0),
                SmoothPage(),
                Height(20.0),
                Category(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
