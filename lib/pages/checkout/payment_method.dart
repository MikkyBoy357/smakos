import 'package:flutter/material.dart';
import 'package:smakos/models/payment_methods.dart';
import 'package:smakos/pages/checkout/components/payment_method_card.dart';

import '../../constants.dart';

class PaymentMethodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Payment Method'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: paymentMethods.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.9,
                ),
                itemBuilder: (context, index) => PaymentMethodCard(
                  paymentMethod: paymentMethods[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
