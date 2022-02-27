import 'package:brilliant/modules/services/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CallCenterView extends StatelessWidget {
  const CallCenterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Call Center',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              buildRequestHeaderService(
                context,
                image: 'call_center_details',
                text: 'Smart home solutions. Easily expand your Smart Home with Smart devices. Start building your smart home now with a wide set of useful automation.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
