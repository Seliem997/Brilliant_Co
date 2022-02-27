import 'package:flutter/material.dart';

class ShippingView extends StatelessWidget {
  const ShippingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Shipping View',
        style: TextStyle(
          fontSize: 24,
          color: Colors.blue,
        ),
      ),
    );
  }
}
