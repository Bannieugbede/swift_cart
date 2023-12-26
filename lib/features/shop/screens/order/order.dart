import 'package:flutter/material.dart';
import 'package:swift_cart/common/widgets/appbar/appbar.dart';
import 'package:swift_cart/features/shop/screens/order/widgets/order_list.dart';
import 'package:swift_cart/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ZAppBar(
        title:
            Text('My Orders', style: Theme.of(context).textTheme.headlineSmall),showBackArrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(ZSizes.defaultSpace),

        // orders 
        child: ZOrderList(),
      ),
    );
  }
}
