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

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yal_spa/core/config/utils/assets_manager.dart';

import 'controller/search_provider_screen.dart';

class CustomSearchBar extends SearchDelegate<String> {
  final WidgetRef ref;

  CustomSearchBar({required this.ref});

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return Transform.scale(
      scale: 0.45,
      child: InkWell(
        onTap: () {
          close(context, '');
        },
        child: Icon(Icons.arrow_back), // استبدال الصورة بأيقونة عادية
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final searchLogic = ref.read(searchProvider);

    // تأجيل استدعاء search()
    Future(() {
      searchLogic.search(query);
    });

    final isLoading = ref.watch(searchProvider.select((state) => state.isLoading.state));
    final results = searchLogic.searchData;

    if (isLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    if (results.isEmpty) {
      return Center(
        child: Text('No results found'),
      );
    }

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        final item = results[index];
        return ListTile(
          title: Text(item.nameAR),
          subtitle: Text(item.descriptionAR ?? ''),
          onTap: () {
            close(context, item.nameAR);
          },
        );
      },
    );
  }


  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Suggestion $index'),
          onTap: () {
            query = 'Suggestion $index';
            showResults(context);
          },
        );
      },
    );
  }
}

