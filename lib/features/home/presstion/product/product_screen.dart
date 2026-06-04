import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:yal_spa/core/config/themes/app_colors.dart';
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
                Stack(
                  children:[
                    Image.network(
                    data.gallery.isNotEmpty
                        ? data.gallery[0].galleryURL ?? ''
                        : 'https://creativeschoolarabia.com/wp-content/uploads/2019/02/Moon-lunar-full-moon-amazing-creative-school-arabia-%D8%B5%D9%88%D8%B1%D8%A9-%D9%84%D9%84%D9%82%D9%85%D8%B1-%D8%AA%D8%B5%D9%88%D9%8A%D8%B1-%D8%A7%D9%84%D9%82%D9%85%D8%B1-%D8%AA%D8%B5%D9%88%D9%8A%D8%B1-%D9%81%D9%88%D8%AA%D9%88%D8%BA%D8%B1%D8%A7%D9%81%D9%8A-%D8%B5%D9%88%D8%B1%D8%A9-%D9%84%D9%84%D9%82%D9%85%D8%B1-%D9%85%D9%83%D9%88%D9%86%D8%A9-%D9%85%D9%86-50-%D8%A7%D9%84%D9%81-%D8%B5%D9%88%D8%B1%D8%A9-%D8%AA%D9%85-%D8%AA%D8%AC%D9%85%D9%8A%D8%B9%D9%87%D8%A7-%D8%A8%D8%A7%D9%84%D9%81%D9%88%D8%AA%D9%88%D8%B4%D9%88%D8%A82.jpg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 300,
                  ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        alignment: AlignmentDirectional.center,
                        margin: EdgeInsets.all(16.0),
                        width: data.gallery.length * 65,
                        height: 60,
                        decoration: BoxDecoration(
                          color: AppColors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: data.gallery.map((e) => Container(
                            alignment: AlignmentDirectional.center,
                            margin: EdgeInsets.all(4.0),
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                image: NetworkImage(e.galleryURL ?? ''),
                                fit: BoxFit.cover
                              )
                            ),
                          )).toList(),
                        ),
                      ),
                    )
                  ]
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
