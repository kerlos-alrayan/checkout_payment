import 'package:checkout_payment/features/checkout/presentation/views/widgets/custom_bottom.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/order_info_item.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/total_price_widget.dart';
import 'package:flutter/material.dart';

import '../payment_details.dart';

class MyCardViewBody extends StatelessWidget {
  const MyCardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final double h = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: Image.asset(
              'assets/images/basket_image.png',
            ),
          ),
          SizedBox(
            height: 25,
          ),
          OrderInfoItem(
            title: 'Order Subtotal',
            value: '\$42.97',
          ),
          SizedBox(
            height: 3,
          ),
          OrderInfoItem(
            title: 'Discount',
            value: '\$0',
          ),
          SizedBox(
            height: 3,
          ),
          OrderInfoItem(
            title: 'Shipping',
            value: '\$8',
          ),
          const Divider(
            thickness: 2,
            height: 34,
            color: Color(0xffC7C7C7),
          ),
          TotalPrice(title: 'Total', value: r'$50.97'),
          SizedBox(height: 16),
          CustomBottom(onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => PaymentDetails()),
            );
          }, text: 'Complete Payment',),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
