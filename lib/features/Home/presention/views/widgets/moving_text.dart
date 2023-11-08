import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class MovingText extends StatelessWidget {
  const MovingText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: 52,
      color: const Color(0xFFFBC821),
      alignment: AlignmentDirectional.center,
      child: AnimatedTextKit(repeatForever: true,
          animatedTexts: [
            TyperAnimatedText("Lorem ipsum dolor sit amet consectetur. Dis neddddquz",
              speed: const Duration(milliseconds: 400),textStyle:const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 0.12,
              ),)

          ]),
    );
  }
}
