import 'package:flutter/material.dart';

class ButtonCommon extends StatelessWidget {
  final VoidCallback onPressFunctionName;
  final String buttonText;
  final Color backgroundColor; // Added to customize the background color
  final Color textColor; // You can use Color type for this as well

  const ButtonCommon({
    super.key,
    required this.onPressFunctionName,
    required this.buttonText,
    required this.backgroundColor, // Make this parameter optional
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressFunctionName,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor, // Use the provided background color
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            color: textColor, // Use Color(textColor) here
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
