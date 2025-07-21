import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCheckIcon extends StatelessWidget {
  const CustomCheckIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: Color(0xffEDEDED),
      child: Center(
        child: CircleAvatar(
          radius: 40,
          backgroundColor: Color(0xff34A853),
          child: SvgPicture.asset(
            'assets/images/right_icon.svg',
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
