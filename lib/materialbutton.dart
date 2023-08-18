import 'package:flutter/material.dart';

import 'custumstyle.dart';

class MaterialStyle extends StatelessWidget {
  const MaterialStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custombutton Aufgabe 5')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('OutLineButton'),
            const SizedBox(
              height: 20,
            ),
            gradientButton(),
            const SizedBox(
              height: 100,
            ),
            const Text('Button with ripple_efect'),
            const SizedBox(
              height: 20,
            ),
            Center(child: rippleButton(context)),
          ],
        ),
      ),
    );
  }
}
