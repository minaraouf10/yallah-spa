// import 'package:flutter/material.dart';
//
// import 'package:yal_spa/core/config/widgets/custom_appbar.dart';
// import 'package:yal_spa/features/search/presstion/widget/item_search.dart';
//
// import '../../../core/config/widgets/custom_search_bar/custom_search_bar.dart';
// import '../../../main.dart';
// import 'controller/search_provider_screen.dart';
//
// class SearchScreen extends StatefulWidget {
//   const SearchScreen({super.key});
//
//   @override
//   State<SearchScreen> createState() => _SearchScreenState();
// }
//
// class _SearchScreenState extends State<SearchScreen> {
//   @override
//   void dispose() {
//     globalRef.read(searchProviderScreen).searchController.clear();
//     globalRef.read(searchProviderScreen).searchData.clear();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: CustomAppBar(title:'Search' ,),
//       body: SafeArea(
//         child: Column(
//           children: const [
//             // Padding(
//             //   padding: EdgeInsetsDirectional.symmetric(horizontal: 20.0),
//             //   child: CustomTopScreen(
//             //     title: 'Search',
//             //     enableBack: true,
//             //   ),
//             // ),
//             Padding(
//               padding: EdgeInsetsDirectional.symmetric(horizontal: 20.0),
//               child: CustomSearchBar(),
//             ),
//             Expanded(
//               child: ItemsSearch(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
