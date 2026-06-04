import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yal_spa/core/config/extensions/future_provider_screen.dart';
import 'package:yal_spa/core/config/router/router.dart';
import 'package:yal_spa/core/config/widgets/custom_appbar.dart';
import 'package:yal_spa/core/config/widgets/custom_button.dart';
import 'package:yal_spa/core/config/widgets/custom_sized_box.dart';
import 'package:yal_spa/features/setting/presstion/order/controller/get_past_orders.dart';
import 'package:yal_spa/features/setting/presstion/order/controller/order_screen_provider.dart';
import 'package:yal_spa/features/setting/presstion/order/widget/order_item.dart';
import 'package:yal_spa/generated/style_atoms.dart';
import 'package:yal_spa/generated/translations.g.dart';
import '../../../../core/config/themes/app_colors.dart';
import 'controller/get_current_order.dart';

@RoutePage()
class OrderScreen extends ConsumerWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final orderScreen = ref.read(orderProviderScreen);
    ref.watch(orderScreen.isCurrent.provider);
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
                        child: (orderScreen.isCurrent.state)
                            ? CustomButton(
                          title: tr.Current_Orders,
                          onPress: () =>
                              orderScreen.changeCurrentOrder(),
                        )
                            : InkWell(
                          onTap: () =>
                              orderScreen.changeCurrentOrder(),
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              tr.Current_Orders,
                              style: context.bold14Primary,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: (orderScreen.isCurrent.state)
                            ? InkWell(
                          onTap: () =>
                              orderScreen.changeCurrentOrder(),
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              tr.Previous_requests,
                              style: context.bold14Primary,
                            ),
                          ),
                        )
                            : CustomButton(
                          title: tr.Previous_requests,
                          onPress: () =>
                              orderScreen.changeCurrentOrder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              (orderScreen.isCurrent.state) ? ref.watchWhen(
                  provider: getCurrentOrder,
                  data: (data) {
                    return ListView.separated(
                      itemBuilder: (context, index) {
                        return InkWell(
                            onTap: () {
                              context.pushRoute(ItemOrderDetailsRoute(
                                model: data[index],
                              ));
                            },
                            child: OrderItem(model: data[index],typeOrder: 'current'));
                      },
                      separatorBuilder: (context, index) {
                        return Height(10.0);
                      },
                      physics: BouncingScrollPhysics(),
                      itemCount: data.length,
                      shrinkWrap: true,
                    );
                  })
                  : ref.watchWhen(
                provider:getPastOrder,
                data: (data) {
                  return ListView.separated(
                    itemBuilder: (context, index) {
                      return OrderItem(model: data[index],typeOrder: 'past',);
                    },
                    separatorBuilder: (context, index) {
                      return Height(10.0);
                    },
                    physics: BouncingScrollPhysics(),
                    itemCount: data.length,
                    shrinkWrap: true,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
