import 'package:bizlx_app/views/home/widgets/tab_bar_button.dart';
import 'package:flutter/material.dart';

class Hotels extends StatefulWidget {
  const Hotels({super.key});

  @override
  State<Hotels> createState() => _HotelsState();
}

class _HotelsState extends State<Hotels> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TabBarButton(),
      ],
    );
  }
}
