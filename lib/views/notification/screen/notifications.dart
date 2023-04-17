import 'package:bizlx_app/constants/global_variables.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'Notifications',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.transparent,
                          decorationColor: GlobalVariables.boldBlue,
                          shadows: [
                            Shadow(
                                color: GlobalVariables.boldBlue,
                                offset: Offset(0, -10))
                          ],
                          decoration: TextDecoration.underline,
                          decorationThickness: 3),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: 100,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
                    child: Stack(
                      children: [
                        Card(
                          child: ListTile(
                            leading: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://images.unsplash.com/photo-1602772576751-f90059b6a8ff?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8aGluZHUlMjBnb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60"),
                              ),
                            ),
                            title: const Text(
                              'Hotel Wood Stock Inn',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                              ),
                            ),
                            subtitle: Text(
                              'Blessed with the nature all around, the mountain peaks and the valleys\n'
                              'and away from the noise.',
                              style: TextStyle(
                                fontSize: 7,
                                fontWeight: FontWeight.w400,
                                color: GlobalVariables.boldBlack,
                              ),
                            ),
                            trailing: Image.asset(
                                "assets/images/wishlist/arrow1 1.png"),
                            isThreeLine: true,
                          ),
                        ),
                        Positioned(
                          left: 0,
                          child: Container(
                              width: 4,
                              height: 95,
                              padding: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                  color: GlobalVariables.boldBlue)),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
