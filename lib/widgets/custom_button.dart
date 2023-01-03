import 'package:flutter/material.dart';
import 'package:flutter_mixi/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPresssed;
  const CustomButton({
    Key? key,
    required this.text,
    required this.onPresssed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ElevatedButton(
        onPressed: onPresssed,
        child: Text(
          text,
          style: const TextStyle(fontSize: 17),
        ),
        style: ElevatedButton.styleFrom(
            // foregroundColor: buttonColor,
            minimumSize: const Size(
              double.infinity,
              50,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: const BorderSide(color: buttonColor),
            )),
      ),
    );
  }
}
