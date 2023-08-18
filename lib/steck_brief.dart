import 'package:flutter/material.dart';

class SteckBrief extends StatefulWidget {
  const SteckBrief({super.key});

  @override
  State<SteckBrief> createState() => _SteckBriefState();
}

class _SteckBriefState extends State<SteckBrief> {
  List<String> properties = ['Name:', 'Gewicht:', 'Größe:', 'Lieblingsessen:'];
  List<String> value = ['Diana das Lama', '120kg', '1,80m', 'Gras'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Steckbrief Lama Aufgabe 3')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/lama.png'),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(15),
                itemCount: properties.length,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 50,
                    width: 50,
                    child: Column(
                      children: [
                        Center(
                            child: Text(
                          ' ${properties[index]}',
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )),
                        Center(child: Text(' ${value[index]}')),
                      ],
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/materialstyle');
              },
              child: const Text('Next Page'),
            ),
            const SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
