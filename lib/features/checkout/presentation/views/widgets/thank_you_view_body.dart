import 'package:checkout_payment/features/checkout/presentation/views/widgets/cusrom_dashed_line.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/custom_chek_icon.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/thank_you_card.dart';
import 'package:flutter/material.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final double h = MediaQuery.of(context).size.height;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ThankYouCard(),

        // CustomCheckIcon
        Align(
          alignment: Alignment.topCenter,
          child: CustomCheckIcon(),
        ),

        // CustomDashedLine
        Positioned(
          bottom: h * 0.27,
          left: 55,
          right: 55,
          child: CustomDashedLine(),
        ),

        // CustomHalfContainer
        Positioned(
          bottom: h * 0.25,
          left: 10,
          child: CustomHalfCircleAvatar(),
        ),
        Positioned(
          bottom: h * 0.25,
          right: 10,
          child: CustomHalfCircleAvatar(),
        ),
      ],
    );
  }
}

class CustomHalfCircleAvatar extends StatelessWidget {
  const CustomHalfCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
    );
  }
}
