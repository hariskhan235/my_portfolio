import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


class TypeWriterTextWidget extends StatelessWidget {

  final double fontSize;

   const TypeWriterTextWidget({
    Key? key, required this.fontSize
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: DefaultTextStyle(
        style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: fontSize) ?? const TextStyle(),
        child: FittedBox(
          child: AnimatedTextKit(
            totalRepeatCount: 100,
            animatedTexts: [
              TypewriterAnimatedText('M Haris Akhtar"}', speed: const Duration(milliseconds: 200), ),
              TypewriterAnimatedText('A Flutter Mobile Application Developer"}', speed: const Duration(milliseconds: 200),),
              TypewriterAnimatedText('A Java Developer"}', speed: const Duration(milliseconds: 200),),
              TypewriterAnimatedText('Android Developer"}', speed: const Duration(milliseconds: 200),),
              TypewriterAnimatedText('iOS Developer"}', speed: const Duration(milliseconds: 200),),
              TypewriterAnimatedText('Cross Platform Developer"}', speed: const Duration(milliseconds: 200),),


            ],
            onTap: () {
              // print("Tap Event");
            },
          ),
        ),
      ),
    );
  }
}