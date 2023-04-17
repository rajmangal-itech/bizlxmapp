import 'package:flutter/material.dart';

class ServicesListing extends StatelessWidget {
  const ServicesListing({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ExpansionTile(
            title: const Text(
              'Services',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            children: [
              ListTile(
                title: Row(
                  children: const [
                    Text('Your services content here'),
                  ],
                ),
              ),
              ListTile(
                title: Row(
                  children: const [
                    Text('Your services content here'),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
