
import 'package:bizlx_mobile_app/screens/Ui/ListingProfile/listing_profile_list_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utills/app_styles.dart';

class InfoScreens extends StatelessWidget {
  const InfoScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Follow Bizlx'),
              Spacer(),
              Image.asset("assets/info/icon_info.png")
            ],
          ),
        ),
        body: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ExpansionTile(
                      leading: ImageIcon(
                        AssetImage(
                          "assets/info/Vector.png",
                        ),
                        color: Colors.blue,
                      ),
                      title: Text(
                        "GENERAL INFO",
                        style: TextStyle(color: Colors.black),
                      ),
                      children: [
                        ListTile(
                          title: Text(
                            "Home",
                          ),
                        ),
                        ListTile(
                          title: Text(
                            "Blog",
                          ),
                        ),
                        ListTile(
                          title: Text(
                            "About",
                          ),
                        ),
                      ],
                      trailing: ImageIcon(
                        AssetImage(
                          "assets/info/Vector (1).png",
                        ),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ExpansionTile(
                      leading: ImageIcon(
                        AssetImage(
                          "assets/info/Vector (2).png",
                        ),
                        color: Colors.blue,
                      ),
                      title: Text(
                        "RESOURCES",
                        style: TextStyle(color: Colors.black),
                      ),
                      children: [
                        ListTile(
                          title: Text(
                            "Payment",
                          ),
                        ),
                        ListTile(
                          title: Text(
                            "Terms Of Use",
                          ),
                        ),
                        ListTile(
                          title: Text(
                            "Privacy Policy",
                          ),
                        ),
                      ],
                      trailing: ImageIcon(
                        AssetImage(
                          "assets/info/Vector (1).png",
                        ),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ExpansionTile(
                      leading: ImageIcon(
                        AssetImage(
                          "assets/info/Vector (3).png",
                        ),
                        color: Colors.blue,
                      ),
                      title: Text(
                        "RESELLER",
                        style: TextStyle(color: Colors.black),
                      ),
                      children: [
                        ListTile(
                          title: Text(
                            "Login",
                          ),
                        ),
                        ListTile(
                          title: Text(
                            "Register",
                          ),
                        ),
                      ],
                      trailing: ImageIcon(
                        AssetImage(
                          "assets/info/Vector (1).png",
                        ),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ExpansionTile(
                      leading: ImageIcon(
                        AssetImage(
                          "assets/info/Vector (4).png",
                        ),
                        color: Colors.blue,
                      ),
                      title: Text(
                        "BUSINESS LISTING",
                        style: TextStyle(color: Colors.black),
                      ),
                      children: [
                        ListTile(
                          title: Text(
                            "Login",
                          ),
                        ),
                        ListTile(
                          title: Text(
                            "Register",
                          ),
                        ),
                      ],
                      trailing: ImageIcon(
                        AssetImage(
                          "assets/info/Vector (1).png",
                        ),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListingProfile()));
                    },
                    backgroundColor: Styles.boldBlue,
                    child: Container(child: Icon(Icons.navigate_next))),
              ],
            )
          ],
        ));
  }
}
