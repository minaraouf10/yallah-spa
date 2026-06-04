import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yal_spa/core/config/extensions/future_provider_screen.dart';
import 'package:yal_spa/features/home/presstion/widget/category/widget/category_item.dart';
import 'package:yal_spa/generated/style_atoms.dart';
import 'package:yal_spa/generated/translations.g.dart';
import '../../../../../core/config/widgets/custom_sized_box.dart';
import '../../controller/service_provider.dart';

class Category extends ConsumerWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return ref.watchWhen(
      provider: serviceProvider,
      data: (data) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tr.Your_beauty_is_a_journey_that_begins_with_our_services,
              style: context.bold14Primary,
            ),
            const Height(12.0),
            // GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //   crossAxisCount: 3, // number of items in each row
            //   mainAxisSpacing: 8.0, // spacing between rows
            //   crossAxisSpacing: 8.0, // spacing between columns
            // ), itemBuilder: (context, index) {
            //   return CategoryItem(
            //     image: data[index].image,
            //     title: data[index].nameAR,
            //     data: data[index],
            //     id: data[index].id,
            //   );
            // }, itemCount: data.length,),
            Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: data.map((item) {
                return SizedBox(
                 // width: MediaQuery.of(context).size.width / 2 - 17,
                  child: CategoryItem(
                    image: item.image,
                    title: item.nameAR,
                    id: item.id,
                    data: item,
                  ),
                );
              }).toList(),
            ),
            Height(50.0),
          ],
        );
      },
      error: (error, stackTrace) {
        log(error.toString(),
            stackTrace: stackTrace, name: 'home service screen');
        return Center(
          child: Text(error.toString()),
        );
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
