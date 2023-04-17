import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

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
                const SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    const Text(
                      "Reviews",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      '$_ratingValue',
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      child: RatingBar(
                          itemSize: 25,
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
                const Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        child: Text("Image"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Joab Perkins',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                RatingBar(
                                    itemSize: 16,
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
                                  style: const TextStyle(fontWeight: FontWeight.w900),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 100),
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
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry\n'
                        'Lorem Ipsum has been the industry standard dummy text ever since the 1500s\n',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
                const Divider(
                  height: 10,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
