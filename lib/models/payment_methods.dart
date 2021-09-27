import 'package:flutter/material.dart';

class PaymentMethod {
  final String image;
  final String label;

  PaymentMethod({
    required this.image,
    required this.label,
  });
}

List<PaymentMethod> paymentMethods = [
  PaymentMethod(
    image: 'assets/payment_methods/mastercard.png',
    label: 'Mastercard',
  ),
  PaymentMethod(
    image: 'assets/payment_methods/visa.png',
    label: 'VISA',
  ),
  PaymentMethod(
    image: 'assets/payment_methods/google_pay.png',
    label: 'Google Pay',
  ),
  PaymentMethod(
    image: 'assets/payment_methods/apple_pay.png',
    label: 'Apple Pay',
  ),
];
