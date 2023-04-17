import 'package:bizlx_app/constants/global_variables.dart';
import 'package:flutter/material.dart';

class Jewellery extends StatefulWidget {
  const Jewellery({Key? key}) : super(key: key);

  @override
  State<Jewellery> createState() => _JewelleryState();
}

class _JewelleryState extends State<Jewellery> with TickerProviderStateMixin {
  int index = 0;
  late TabController _tabController;
  final _pageController = PageController();

  final List<bool> _isDisabled = [true, false, false, false];

  onTap() {
    if (_isDisabled[_tabController.index]) {
      int index = _tabController.previousIndex;
      setState(() {
        _tabController.index = index;
      });
    }
  }

  final List<Tab> jewelleryTabs = <Tab>[
    Tab(
      child: Padding(
        padding: const EdgeInsets.only(top: 15, right: 8),
        child: Text(
          'Hotels',
          style: TextStyle(
              color: Colors.transparent,
              decorationColor: Colors.red,
              shadows: [
                Shadow(color: GlobalVariables.boldBlue, offset: Offset(0, -10))
              ],
              decorationThickness: 3,
              decoration: TextDecoration.underline),
        ),
      ),
    ),
    const Tab(
      child: Align(
        alignment: Alignment.center,
        child: Text("Info"),
      ),
    ),
    const Tab(
      child: Align(
        alignment: Alignment.center,
        child: Text(
          "Hot Deals",
          style: TextStyle(
            fontSize: 11,
          ),
        ),
      ),
    ),
    const Tab(
      child: Align(
        alignment: Alignment.center,
        child: Text(
          "Jobs",
          style: TextStyle(
            fontSize: 12,
          ),
        ),
      ),
    ),
    const Tab(
      child: Align(
        alignment: Alignment.center,
        child: Text("Video"),
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: jewelleryTabs.length);
    _tabController.addListener(onTap);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 350,
          width: MediaQuery.of(context).size.width * 100,
          child: DefaultTabController(
            length: 4,
            child: Scaffold(
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                bottom: TabBar(
                    controller: _tabController,
                    labelColor: index == 0 ? Colors.black : Colors.white,
                    onTap: (value) {
                      setState(() {
                        index = value;
                      });
                    },
                    indicatorWeight: 2,
                    indicatorPadding: const EdgeInsets.all(5),
                    unselectedLabelColor: Colors.black,
                    indicator: index == 0
                        ? BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          )
                        : BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.redAccent,
                          ),
                    tabs: jewelleryTabs),
              ),
              body: TabBarView(
                controller: _tabController,
                children: [
                  Container(
                    height: 300,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        controller: _pageController,
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Card(
                              // elevation: 10.0,
                              margin: const EdgeInsets.only(left: 9, right: 9),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 150,
                                    child: Image.network(
                                      "https://images.unsplash.com/photo-1681105192375-aadb6e706216?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=600&q=60",
                                      height: 200,
                                      width: 180,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Hardev Jewellers",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Icon(
                                                Icons.location_on,
                                                size: 15,
                                              ),
                                              Text(
                                                  'Showroom No-10, \nChandigarh',
                                                  style: TextStyle()),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: IconButton(
                onPressed: () {
                  _pageController.previousPage(
                      duration: const Duration(seconds: 1), curve: Curves.ease);
                  // Use the controller to change the current page
                },
                icon: Image.asset('assets/images/arrows/back_arrow.png'),
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
          ],
        ),
      ],
    );
  }
}
