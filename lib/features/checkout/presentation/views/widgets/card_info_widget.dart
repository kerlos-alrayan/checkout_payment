import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/styles.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      const EdgeInsets.symmetric(horizontal: 23, vertical: 16),
      height: 73,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/images/master_card.svg',
            fit: BoxFit.scaleDown,
          ),
          SizedBox(
            width: 22,
          ),
          Text.rich(
            TextSpan(
              children: [
                const TextSpan(text: 'Credit Card\n', style: Styles.style18),
                const TextSpan(text: 'Mastercard **78', style: Styles.style16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
