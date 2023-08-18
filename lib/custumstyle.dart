import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

Widget gradientButton() {
  return Container(
    height: 150,
    width: 100,
    decoration: BoxDecoration(
        border: const GradientBoxBorder(
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.amber, Colors.green, Colors.red]),
          width: 12,
        ),
        borderRadius: BorderRadius.circular(8)),
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
      onPressed: () {},
      child: const Text(
        'Hello',
        style: TextStyle(color: Colors.blue),
      ),
    ),
  );
}
//Next---------------------------------------------------------------------------------------

Widget rippleButton(context) {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.all(50.0),
        height: 80.0,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 9.0,
              spreadRadius: 1.0,
              offset: Offset(0.0, 0.0),
            )
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/themepage');
            },
            child: GestureDetector(
              onLongPress: () {
                ScaffoldMessenger.of(context as BuildContext)
                    .showSnackBar(const SnackBar(
                  content: Text('( # )Kuukuuk( # )'),
                ));
              },
              child: const Center(
                child: Text(
                  'Flat Button',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
