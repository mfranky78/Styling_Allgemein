import 'package:flutter/material.dart';

class SwitchApp extends StatefulWidget {
   const SwitchApp({super.key,});

  @override
  State<SwitchApp> createState() => _SwitchAppState();
}

class _SwitchAppState extends State<SwitchApp> {
   bool isLight = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: const Text('App Akademie Aufgabe 2 '),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Hello World'),
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: isLight ? Colors.red : Colors.green
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: isLight ? Colors.green : Colors.red
                    ),
                  ],
                ),
                const SizedBox(
                  height: 120,
                ),
                Switch(
                  value: isLight,
                  activeColor: Colors.amber,
                  onChanged: (bool value) {
                    setState(() {
                    isLight = value;
                    });
                  },
                ),
                const SizedBox(
                  height: 120,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/steckbrief');
                  },
                  child: const Text('Steckbrief Lama'),
                ),
              ],
            ),
          ),
        );
  }
}