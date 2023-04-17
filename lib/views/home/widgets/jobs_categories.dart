import 'package:bizlx_app/constants/global_variables.dart';
import 'package:flutter/material.dart';

class JobsCategories extends StatelessWidget {
  const JobsCategories({super.key});
  static PageController _pageController = PageController();

  @override
  void initState() {}

  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: const Text(
                'Jobs',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 100,
          child: PageView.builder(
              controller: _pageController,
              itemCount: GlobalVariables.categoryImages.length,
              itemBuilder: (BuildContext context, int index) {
                return GridView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: GlobalVariables.categoryImages.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      crossAxisSpacing: 23,
                      mainAxisSpacing: 1,
                      mainAxisExtent: 100,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 20, right: 15),
                        child: Column(
                          children: [
                            Image.asset(
                              GlobalVariables.categoryImages[index]['image']!,
                              fit: BoxFit.cover,
                              height: 40,
                              width: 50,
                            ),
                            Text(
                              GlobalVariables.categoryImages[index]['title']!,
                            )
                          ],
                        ),
                      );
                    });
              }),
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(),
            Align(
              alignment: Alignment.bottomLeft,
              child: IconButton(
                onPressed: () {
                  // Use the controller to change the current page
                  _pageController.previousPage(
                      duration: const Duration(seconds: 1), curve: Curves.ease);
                },
                icon: Image.asset('assets/images/arrows/back_arrow.png'),
                /* icon: Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: Styles.boldBlue,
                      ),*/
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: IconButton(
                onPressed: () {
                  // Use the controller to change the current page
                  _pageController.nextPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut);
                },
                icon: Image.asset('assets/images/arrows/forward_arrow.png'),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 22),
              child: GestureDetector(
                onTap: () {},
                child: const Text(
                  'All',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
