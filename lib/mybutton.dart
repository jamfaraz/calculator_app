import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;
  const Mybutton(
      {super.key,
      required this.title,
      required this.onPress,
      
      this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 11),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 66,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            child: Center(
              child: Text(
                title,
                style: const TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
