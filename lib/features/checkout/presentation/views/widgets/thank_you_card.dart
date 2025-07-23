import 'package:checkout_payment/core/utils/styles.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/card_info_widget.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/payment_item_info.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/total_price_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffEDEDED),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 66, left: 22, right: 22),
          child: Column(
            children: [
              const Text('Thank You!', style: Styles.style25),
              Text('Your transaction was successful', style: Styles.style20),
              const SizedBox(height: 42),
              const PaymentItemInfo(title: 'Data', value: '01/24/2023'),
              const SizedBox(height: 20),
              const PaymentItemInfo(title: 'Time', value: '10:15 AM'),
              const SizedBox(height: 20),
              const PaymentItemInfo(title: 'To', value: 'Sam Louis'),
              const Divider(height: 60, thickness: 2),
              const TotalPrice(title: 'Tota', value: r'$50.97'),
              const SizedBox(height: 30),
              const CardInfoWidget(),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    FontAwesomeIcons.barcode,
                    size: 64,
                  ),
                  Container(
                    width: 113,
                    height: 58,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.5, color: Color(0xff34A853)),
                      borderRadius: BorderRadius.circular(15),
                    )),
                    child: Center(
                        child: Text('PAID',
                            style: Styles.style24
                                .copyWith(color: Color(0xff34A853)))),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.06),
            ],
          ),
        ),
      ),
    );
  }
}
