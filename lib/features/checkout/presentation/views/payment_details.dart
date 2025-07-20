import 'package:checkout_payment/features/checkout/presentation/views/widgets/custom_app_bar.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/payment_details_view_body.dart';
import 'package:flutter/material.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Payment Details'),
      body: PaymentDetailsViewBody(),
    );
  }
}
