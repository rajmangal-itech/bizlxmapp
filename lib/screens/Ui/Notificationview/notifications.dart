import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [Text('Notifications',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 24
                ),)],
              ),
            ),
            Container(
             height: MediaQuery.of(context).size.height,
              width: 100,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Card(
                          child: ListTile(
                            leading:CircleAvatar(
                              radius:30,
                            ),
                            title: Text('Hotel Wood Stock Inn'),
                            subtitle:
                            Text('nullBlessed with the nature all around, the mountain peaks and the valleys\n'
                                'and away from the noise '),
                            trailing: Icon(Icons.more_vert),
                            isThreeLine: true,
                          ),
                        ),
                        Positioned(
                          left: 0,
                          child: Container(
                              width: 4,
                              height: 100,
                              padding: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(color: Colors.red[400])),
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
