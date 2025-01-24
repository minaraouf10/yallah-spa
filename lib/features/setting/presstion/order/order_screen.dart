import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:yal_spa/core/config/widgets/custom_appbar.dart';
import 'package:yal_spa/core/config/widgets/custom_button.dart';
import 'package:yal_spa/features/setting/presstion/order/widget/order_item.dart';
import 'package:yal_spa/generated/translations.g.dart';

import '../../../../core/config/themes/app_colors.dart';

@RoutePage()
class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: tr.orders,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 12.0,
            children: [
              Container(
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: AppColors.secondaryLight),
                child: Row(
                  spacing: 10.0,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CustomButton(
                          title: tr.Current_Orders,
                          onPress: () => OrderItem(),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CustomButton(
                          height: 40,
                          title: tr.Previous_requests,
                          onPress: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //OrderItem(),
            ],
          ),
        ),
      ),
    );
  }
}
