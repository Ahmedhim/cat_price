import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({super.key, this.ontab});
   final void Function()?ontab;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ontab,
      child: Container(
        alignment: AlignmentDirectional.center,
        width: double.infinity,
        height: 52,
        decoration: ShapeDecoration(
          color: const Color(0xFFFBC821),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: const Text(
          'Calculate',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),

      ),
    );
  }
}
