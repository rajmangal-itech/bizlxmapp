import 'package:bizlx_app/constants/global_variables.dart';
import 'package:flutter/material.dart';

class AllCategoriesJobs extends StatefulWidget {
  const AllCategoriesJobs({super.key});

  @override
  State<AllCategoriesJobs> createState() => _AllCategoriesJobsState();
}

class _AllCategoriesJobsState extends State<AllCategoriesJobs> {
  List<String> _items = [
    "Banquet Halls",
    "Camping",
    "Cottages",
    "Guest Houses",
    "Home Stay",
    "Hostels",
  ];

  // This function is called when a "Remove" button associated with an item is pressed

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: GlobalVariables.greyBackgroundColor,
          child: ExpansionTile(
            leading: Image.network(
              "https://images.unsplash.com/photo-1444201983204-c43cbd584d93?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
              height: 25,
              width: 25,
              fit: BoxFit.cover,
            ),
            title: Text(
              "Hotels & Accommodation",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: GlobalVariables.boldBlue,
              ),
            ),
            // Contents
            children: const [
              ListTile(
                title: Text(
                  "Banquet Halls",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  "Camping",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Divider(
                height: 2,
              ),
              ListTile(
                title: Text(
                  "Cottages",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  "Guest Houses",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Divider(),
            ],
          ),
        ),
        Divider(),
        Container(
          color: GlobalVariables.greyBackgroundColor,
          child: ExpansionTile(
            leading: Image.network(
              "https://images.unsplash.com/photo-1516483638261-f4dbaf036963?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjl8fHRyYXZlbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60",
              height: 25,
              width: 25,
              fit: BoxFit.cover,
            ),
            title: Text(
              "Travel & Adventure",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: GlobalVariables.boldBlue,
              ),
            ),
            // Contents
            children: const [
              ListTile(
                title: Text(
                  "Banquet Halls",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  "Camping",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Divider(
                height: 2,
              ),
              ListTile(
                title: Text(
                  "Cottages",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  "Guest Houses",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Divider(),
            ],
          ),
        )
      ],
    );
  }
}
