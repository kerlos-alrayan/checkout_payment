import 'package:checkout_payment/features/checkout/presentation/views/widgets/payment_method_item.dart';
import 'package:flutter/material.dart';

class PaymentMethodsListview extends StatefulWidget {
  const PaymentMethodsListview({super.key});

  @override
  State<PaymentMethodsListview> createState() => _PaymentMethodsListviewState();
}

class _PaymentMethodsListviewState extends State<PaymentMethodsListview> {
  final List<String> paymentMethodsItem = const [
    'assets/images/card.svg',
    'assets/images/paypal.svg',
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: paymentMethodsItem.length,
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: GestureDetector(
                  onTap: () {
                    activeIndex = index;
                    setState(() {});
                  },
                  child: PaymentMethodItem(
                    isActive: activeIndex == index,
                    image: paymentMethodsItem[index],
                  ),
                ),
              )),
    );
  }
}
