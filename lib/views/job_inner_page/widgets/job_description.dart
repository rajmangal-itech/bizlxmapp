import 'package:bizlx_app/constants/global_variables.dart';
import 'package:flutter/material.dart';

class JobDescription extends StatelessWidget {
  const JobDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            ExpansionTile(
              title: const Text(
                'Description',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
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
                          style: TextStyle(fontSize: 15),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Manager',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: GlobalVariables.boldRed),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text('Apple Hotels',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: GlobalVariables.boldBlack)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text('Panchkula,Haryana',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: GlobalVariables.boldBlack)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            'Job Details',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: GlobalVariables.boldRed),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text('Salary',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: GlobalVariables.boldBlack)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.check,
                                color: GlobalVariables.boldRed,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text('₹15,000 - ₹30,000 a Month',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: GlobalVariables.boldBlack)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text('Job Type',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: GlobalVariables.boldBlack)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.check,
                                color: GlobalVariables.boldRed,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text('Full-Time : Regular / Permanent',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: GlobalVariables.boldBlack)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text('Qualifications',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: GlobalVariables.boldBlack)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.check,
                                color: GlobalVariables.boldRed,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text('Master',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: GlobalVariables.boldBlack)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text('Experience',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: GlobalVariables.boldBlack)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.check,
                                color: GlobalVariables.boldRed,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text('2 Year - 4 Years',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: GlobalVariables.boldBlack)),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          // onPressed: () {
                          //   showDialogBox(context);
                          // },
                          child: const Text('Apply Now',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  color: GlobalVariables.backgroundColor)),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: GlobalVariables.greenColor),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
