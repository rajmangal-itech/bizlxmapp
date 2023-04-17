import 'package:flutter/material.dart';

class AboutListing extends StatelessWidget {
  const AboutListing({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ExpansionTile(
            title: const Text(
              'About Us',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            children: [
              ListTile(
                title: Row(
                  children: const [
                    Text(
                      'Anim pariatur cliche reprehenderit,',
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Row(
                  children: const [
                    Text('Anim pariatur cliche reprehenderit,'),
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
