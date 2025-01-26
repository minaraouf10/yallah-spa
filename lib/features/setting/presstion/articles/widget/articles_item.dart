import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yal_spa/core/config/extensions/future_provider_screen.dart';
import 'package:yal_spa/generated/style_atoms.dart';

import '../../../../../core/config/router/router.dart';
import '../../../../../core/config/widgets/primary_widget/default_divider.dart';
import '../../controller/get_articles.dart';

class ArticlesItem extends ConsumerWidget {
  const ArticlesItem({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return ref.watchWhen(
        provider: getArticlesProvider,
        data: (data) {
          return ListView.separated(
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () => context.pushRoute(
                  ArticlesItemBodyRouter(data: data[index]),
                ),
                child: Row(
                  spacing: 8.0,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image.network(
                        data[index].image,
                        height: 96,
                        width: 105.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        spacing: 8.0,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data[index].titleAr,
                            style: context.bold14TextMain,
                          ),
                          Text(
                            data[index].contentAr,
                            style: TextStyle(fontSize: 10.0),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            data[index].createdAt.split('T')[0],
                            style: context.regular12TextSub,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: DefaultDivider(),
              );
            },
            itemCount: data.length,
          );
        });
  }
}
