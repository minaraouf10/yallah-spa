import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:yal_spa/features/home/data/model/home_screen_model.dart';
import 'package:yal_spa/features/home/presstion/product/widget/product_body.dart';
import '../../../../core/config/widgets/custom_appbar.dart';

@RoutePage()
class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key, required this.data,});

  final ProductData data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                  data.gallery[0].galleryURL,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200,
                ),
                CustomAppBar(
                  backgroundColor: Colors.transparent,
                )
              ],
            ),
             ProductBody(data: data),
          ],
        ),
      ),
    );
  }
}
