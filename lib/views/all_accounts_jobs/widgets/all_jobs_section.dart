import 'package:bizlx_app/constants/global_variables.dart';
import 'package:flutter/material.dart';

class AllJobSection extends StatelessWidget {
  const AllJobSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8, top: 5),
          child: Container(
            height: 36,
            color: GlobalVariables.greyBackgroundColor,
            child: Row(
              children: [
                Image.asset(
                  "assets/images/jobs_icons/accounts 3.png",
                  width: 25,
                  height: 25,
                ),
                const Text(
                  'All Account Jobs',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12, left: 5, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                ),
                child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Agra (10)',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    )),
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'Bengaluru (15)',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12, left: 5, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Chamba (10)',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 55),
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Delhi (5)',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12, left: 5, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Gujarat (5)',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35),
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Jammu (5)',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12, left: 5, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                ),
                child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Agra (10)',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    )),
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'Bengaluru (15)',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12, left: 5, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Chamba (10)',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 55),
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Delhi (5)',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12, left: 5, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Gujarat (5)',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35),
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Jammu (5)',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
