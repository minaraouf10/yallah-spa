import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:yal_spa/core/config/widgets/custom_appbar.dart';
import 'package:yal_spa/core/config/widgets/custom_sized_box.dart';
import 'package:yal_spa/features/setting/data/model/articles_model.dart';
import 'package:yal_spa/generated/style_atoms.dart';

@RoutePage()
class ArticlesItemBody extends StatelessWidget {
  const ArticlesItemBody({required this.data, super.key});

  final ArticlesModel data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                data.image,
                height: 190.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Height(8.0),
              Text(
                data.titleAr,
                style: context.bold16TextMain,
              ),
              Height(12.0),
              Text(
                data.createdAt.split('T')[0],
                style: context.regular12TextSub,
              ),
              Height(12.0),
              Text(
                data.contentAr,
                style: context.regular14TextMain,
              )
            ],
          ),
        ),
      ),
    );
  }
}
