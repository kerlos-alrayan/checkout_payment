import 'package:checkout_payment/features/checkout/presentation/views/widgets/custom_bottom.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/order_info_item.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/payment_method_list_view.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/total_price_widget.dart';
import 'package:flutter/material.dart';

class MyCardViewBody extends StatelessWidget {
  const MyCardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
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
          CustomBottom(
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaymentDetails()));
              showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  builder: (context) {
                    return PaymentMethodsBottomSheet();
                  });
            },
            text: 'Complete Payment',
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          PaymentMethodsListview(),
          SizedBox(
            height: 32,
          ),
          CustomBottom(text: 'Continue'),
        ],
      ),
    );
  }
}
