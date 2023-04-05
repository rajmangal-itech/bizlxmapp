import 'package:bizlx_mobile_app/screens/Ui/Hotelscreenview/hotel_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_styles.dart';

class AppBarHeader extends StatelessWidget {
  const AppBarHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Image.asset(
                "assets/logo/logo1.png",
                height: 50,
              ),
            ),
            Container(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('List Business'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Styles.redButton,
                      shape: const StadiumBorder()),
                )),
            Container(
                child: IconButton(
                  icon: Icon(Icons.navigate_next),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HotelScreen()));
                  },
                ))
          ],
        ),
      ),
    );
  }
}
