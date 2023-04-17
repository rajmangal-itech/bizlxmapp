import 'package:bizlx_app/constants/global_variables.dart';
import 'package:flutter/material.dart';

class DealDetails extends StatelessWidget {
  const DealDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0),
      child: Column(
        children: [
          Container(
            color: GlobalVariables.greyBackgroundColor,
            child: ExpansionTile(
              title: Text(
                'Details',
                style: TextStyle(
                    color: GlobalVariables.boldBlue,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              children: [
                ListTile(
                  title: Row(
                    children: const [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'To prepare, cook and serve food delegated as your responsibility, '
                          'ensuring that the highest possible quality is maintained and that agreed '
                          'standards for food preparation and presentation are met at all times '
                          'under guidance from a senior chef. To monitor stock movement and be '
                          'responsible for ordering on your section.',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          softWrap: true,
                          maxLines: 7,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify, // new
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
