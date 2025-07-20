import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({
    super.key,  this.isActive = false, required this.image,
  });
final bool isActive;
final String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 600),
      width: 103,
      height: 62,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.5,
            color: isActive ? Color(0xFF34A853) : Color(0xFF808080),
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: [
          BoxShadow(
            color: isActive ? Color(0xFF34A853) : Colors.white,
            blurRadius: 4,
            offset: const Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: Center(
              child: SvgPicture.asset(
                image,
               fit: BoxFit.scaleDown,
              ))),
    );
  }
}
