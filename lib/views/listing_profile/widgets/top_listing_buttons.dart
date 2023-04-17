import 'package:bizlx_app/constants/global_variables.dart';
import 'package:bizlx_app/views/listing_profile/widgets/listing_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TopListingButtons extends StatefulWidget {
  const TopListingButtons({super.key});

  @override
  State<TopListingButtons> createState() => _TopListingButtonsState();
}

class _TopListingButtonsState extends State<TopListingButtons> {
  var ratingvalue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: RotatedBox(
                  quarterTurns: 3,
                  child: ListingButtons(
                    text: 'Enquiry',
                    onTap: () {},
                  ),
                ),
              ),
              Expanded(
                flex: 9,
                child: Column(
                  children: [
                    Text(
                      "Hotel Daawat",
                      style: TextStyle(
                          color: GlobalVariables.boldBlue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RatingBar.builder(
                                itemSize: 20,
                                initialRating: 3,
                                minRating: 1,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemBuilder: (context, _) => Container(
                                      // height: 30,
                                      child: Icon(
                                        Icons.star,
                                        color: GlobalVariables.boldBlue,
                                      ),
                                    ),
                                onRatingUpdate: (rating) {
                                  setState(() {
                                    ratingvalue = rating;
                                  });
                                  print('${rating}');
                                }),
                            Text("Write a Review"),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text("Rating :$ratingvalue Reviews"),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("View All"),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton.icon(
                              onPressed: () {
                                print("You pressed Icon Elevated Button");
                              },
                              icon: Icon(Icons.phone),
                              label: const Text(
                                '9456789532',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: GlobalVariables.boldRed),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ElevatedButton.icon(
                              onPressed: () {
                                print("You pressed Icon Elevated Button");
                              },
                              icon: Image.asset(
                                  'assets/images/contact_us/whatsapp.png'),
                              label: const Text(
                                'Whatsapp',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: GlobalVariables.greenColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton.icon(
                              onPressed: () {
                                print("You pressed Icon Elevated Button");
                              },
                              icon: Image.asset(
                                  'assets/images/listing_icons/Vector.png'),
                              label: Text(
                                'Google Location',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: GlobalVariables.greenColor),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            ElevatedButton.icon(
                              onPressed: () {
                                print("You pressed Icon Elevated Button");
                              },
                              icon: Image.asset(
                                  'assets/images/listing_icons/Vector (1).png'),
                              label: Text(
                                'Share',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: GlobalVariables.boldBlue),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
