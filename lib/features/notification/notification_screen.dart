import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:yal_spa/core/config/widgets/custom_appbar.dart';
import 'package:yal_spa/core/config/widgets/custom_sized_box.dart';
import 'package:yal_spa/features/notification/widget/notification_item.dart';
import 'package:yal_spa/generated/translations.g.dart';

@RoutePage()
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: tr.notification,
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Height(10.0),
          NotificationItem(),
          Height(12.0),
          NotificationItem(),
          Height(12.0),
          NotificationItem(),
          Height(12.0),
          NotificationItem(),
        ],
      ),
    );
  }
}
