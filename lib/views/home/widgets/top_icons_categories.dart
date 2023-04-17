import 'package:bizlx_app/common/responsive_widget.dart';
import 'package:bizlx_app/constants/global_variables.dart';
import 'package:flutter/material.dart';

class TopIconsCategories extends StatefulWidget {
  const TopIconsCategories({super.key});

  @override
  State<TopIconsCategories> createState() => _TopIconsCategoriesState();
}

class _TopIconsCategoriesState extends State<TopIconsCategories> {
  final PageController _pageController = PageController();
  void initState() {
    // _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    double h = MediaQuery.of(context).size.width * .90 / 4;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(left: 15),
              child: const Text(
                'Popular',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 15),
              child: const Text('All'),
            ),
          ],
        ),
        Container(
          height: 200,
          width: _mediaQuery.size.width,
          decoration: const BoxDecoration(),
          child: ResponsiveWidget.isSmallScreen(context)
              ? Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: GlobalVariables.categoryImages.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GridView.count(
                        crossAxisCount: 4,
                        childAspectRatio: 1.0,
                        mainAxisSpacing: 4.0,
                        crossAxisSpacing: 4.0,

                        //     crossAxisCount: 4,
                        // childAspectRatio: 4 / 2,
                        // mainAxisSpacing: 4.0,
                        // crossAxisSpacing: 4.0,
                        children: List.generate(8, (index) {
                          return Column(
                            children: [
                              Image.asset(
                                GlobalVariables.categoryImages[index]['image']!,
                                fit: BoxFit.cover,
                                height: 40,
                                width: 40,
                              ),
                              Text(
                                GlobalVariables.categoryImages[index]['title']!,
                              )
                            ],
                          );
                        }),
                      );
                    },
                  ),
                )
              : Padding(
                  padding: EdgeInsets.all(5.0),
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: GlobalVariables.categoryImages.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GridView.count(
                        crossAxisCount: 4,
                        crossAxisSpacing: 4.0,
                        mainAxisSpacing: 12.0,
                        childAspectRatio: 4 / 2,
                        children: List.generate(8, (index) {
                          return Column(
                            children: [
                              Image.asset(
                                GlobalVariables.categoryImages[index]['image']!,
                                fit: BoxFit.cover,
                                height: 40,
                                width: 40,
                              ),
                              Text(
                                GlobalVariables.categoryImages[index]['title']!,
                              )
                            ],
                          );
                        }),
                      );
                    },
                  ),
                ),
        ),
        Row(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Align(
              alignment: Alignment.bottomLeft,
              child: IconButton(
                onPressed: () {
                  // Use the controller to change the current page
                  _pageController.previousPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.ease);
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
                onTap: () {

                },
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
