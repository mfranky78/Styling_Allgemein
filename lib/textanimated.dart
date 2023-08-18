import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


class TextAnimated extends StatefulWidget {
  const TextAnimated({super.key});

  @override
  State<TextAnimated> createState() => _TextAnimatedState();
}

class _TextAnimatedState extends State<TextAnimated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Animated')), backgroundColor: Colors.black,),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Center(
            child: SizedBox(
              height: 500,
              width: 500,
              child: SizedBox(
                width: 250.0,
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 70.0,
                   fontFamily: 'italic',
                  ),
                  child: Center(
                    child: AnimatedTextKit(
                      animatedTexts: [
                        ScaleAnimatedText('Thank', textStyle: const TextStyle(color: Colors.yellow)),
                        ScaleAnimatedText('you', textStyle: const TextStyle(color: Colors.blue)),
                        ScaleAnimatedText('for', textStyle: const TextStyle(color: Colors.green)),
                        ScaleAnimatedText('Watching', textStyle: const TextStyle(color: Colors.pink)),
                        ScaleAnimatedText('Bye!!!', textStyle: const TextStyle(color: Colors.purple)),
                      ],
                     
                    ),
                  ),
                ),
              ),
            ),
          
          ),
           FloatingActionButton.large(
                  onPressed: () {
                    // Add your onPressed code here!
                  },
                  child: const Icon(Icons.play_arrow_outlined),
      ),
        ],
      ),
      
    
    );
  }
}
