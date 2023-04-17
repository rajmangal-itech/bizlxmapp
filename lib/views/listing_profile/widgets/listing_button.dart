import 'package:flutter/material.dart';

class ListingButtons extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const ListingButtons({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 0.0,
            ),
            color: Colors.red,
          ),
          child: OutlinedButton(
            style: ElevatedButton.styleFrom(),
            onPressed: onTap,
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
          )),
    );
  }
}
