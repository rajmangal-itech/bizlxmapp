import 'package:bizlx_mobile_app/screens/Ui/Review_screen_view/review_screen2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../utills/app_styles.dart';

class ReviewScreen extends StatefulWidget {
  ReviewScreen({Key? key}) : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  // The rating value
  double? _ratingValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 50,),
                Column(
                  children: [
                    Text(
                      "Reviews",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      '$_ratingValue',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                    ),
                    Container(
                      child: RatingBar(
                          itemSize:25,
                          initialRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          ratingWidget: RatingWidget(
                              full: const Icon(Icons.star,
                                  color: Colors.blueAccent),
                              half: const Icon(
                                Icons.star_half,
                                color: CupertinoColors.activeBlue,
                              ),
                              empty: const Icon(
                                Icons.star_outline,
                                color: CupertinoColors.activeBlue,
                              )),
                          onRatingUpdate: (value) {
                            setState(() {
                              _ratingValue = value;
                            });
                          }),
                    )
                  ],
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        child: Text("Image"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Username',
                              style: TextStyle(fontSize: 20),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                RatingBar(
                                    itemSize: 20,
                                    initialRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    ratingWidget: RatingWidget(
                                        full: const Icon(Icons.star,
                                            color: Colors.blueAccent),
                                        half: const Icon(
                                          Icons.star_half,
                                          color: CupertinoColors.activeBlue,
                                        ),
                                        empty: const Icon(
                                          Icons.star_outline,
                                          color: CupertinoColors.activeBlue,
                                        )),
                                    onRatingUpdate: (value) {
                                      setState(() {
                                        _ratingValue = value;
                                      });
                                    }),
                                Text(
                                  '$_ratingValue',
                                  style: TextStyle(fontWeight: FontWeight.w900),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:100),
                                  child: Text('1 Days ago'),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text('Lorem Ipsum is simply dummy text of the printing and\n'
                          ' typesetting industry. Lorem Ipsum has been the industry\n'
                          " standard dummy text ever since the 1500s,")
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        child: Text("Image"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Username',
                              style: TextStyle(fontSize: 20),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                RatingBar(
                                    itemSize: 20,
                                    initialRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    ratingWidget: RatingWidget(
                                        full: const Icon(Icons.star,
                                            color: Colors.blueAccent),
                                        half: const Icon(
                                          Icons.star_half,
                                          color: CupertinoColors.activeBlue,
                                        ),
                                        empty: const Icon(
                                          Icons.star_outline,
                                          color: CupertinoColors.activeBlue,
                                        )),
                                    onRatingUpdate: (value) {
                                      setState(() {
                                        _ratingValue = value;
                                      });
                                    }),
                                Text(
                                  '$_ratingValue',
                                  style: TextStyle(fontWeight: FontWeight.w900),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:100),
                                  child: Text('1 Days ago'),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text('Lorem Ipsum is simply dummy text of the printing and\n'
                          ' typesetting industry. Lorem Ipsum has been the industry\n'
                          " standard dummy text ever since the 1500s,")
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FloatingActionButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>  ReviewScreen2()));
                        },
                        backgroundColor: Styles.boldBlue,
                        child: Container(child: Icon(Icons.navigate_next))),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
