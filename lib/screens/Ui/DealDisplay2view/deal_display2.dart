import 'package:flutter/material.dart';

import '../../../utills/app_styles.dart';

class DealDisplay2 extends StatelessWidget {
  const DealDisplay2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 160,
        flexibleSpace: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Container(
                    child: Image.asset(
                      "assets/logo/logo1.png",
                      height: 40,
                    ),
                  ),
                  Spacer(),
                  Container(
                      child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('List Business'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Styles.redButton,
                        shape: const StadiumBorder()),
                  )),
                  Spacer(),
                  Container(
                      child: IconButton(
                    icon: Icon(
                      Icons.navigate_next,
                      color: Styles.boldBlue,
                    ),
                    onPressed: () {},
                  ))
                ],
              ),
            ),
            // SizedBox(
            //   height:1,
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 1)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Container(
                        width: 120,
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search',
                            hintStyle: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                              color: Styles.redButton,
                            ),
                            height: 70,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                'Submit',
                                style: Styles.heading3,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        label: Text(
                          "Back",
                          style: TextStyle(color: Styles.whiteButton),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.red)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                          label: Text(
                            "Add To Wishlist",
                            style: TextStyle(color: Styles.whiteButton),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Styles.boldBlue)),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                          color: Colors.red
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // height: MediaQuery.of(context).size.height *.40,
                    // width: MediaQuery.of(context).size.width *.90,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 120,
                          // decoration: BoxDecoration(
                          //   color: Colors.red,
                          //   borderRadius: BorderRadius.circular(10)
                          // ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dimpu Taxi Manali Atal Tunnel Taxi\n'
                                "Snow Sightseeing Review from\n"
                                "Delhi Guests",
                                style: Styles.heading1,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'By:',
                                    style: Styles.heading4,
                                  ),
                                  Text(' Hyatt Regency Dharamshala')
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Price",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                  Text(
                                      ' ₹1200 - ₹1800 ( Inclusive of all taxes )'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Validity ",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(' 10 Dec, 2022 - 25 Dec, 2022'),
                                ],
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Icon(Icons.phone),
                            SizedBox(
                              height: 20,
                            ),
                            Icon(Icons.favorite)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  // height: MediaQuery.of(context).size.height * .1,
                  // width: MediaQuery.of(context).size.width * 11,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: ExpansionTile(
                    title: Text("Details"),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height:150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ListView(
                            children: [
                              Text("Anim pariatur cliche reprehenderit, enim eiusmod high life,"
                                  "accusamus terry richardson ad squid. 3 wolf moon officia aute"
                                  "non cupidatat skateboard dolor brunch. Food truck quinoa "
                                  "nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt"
                                  "aliqua put a bird on it squid single origin coffee nulla assumenda"
                                  "shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes"
                                  "anderson cred nesciunt sapiente ea proident. Ad vegan excepteur"
                                  "butcher vice lomo. Leggings occaecat craft beer farm to table,"
                                  "raw denim aesthetic synth nesciunt you probably haven t heard of"
                                  "them accusamus labore sustainable VHS.")
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
