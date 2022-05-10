import 'package:flutter/material.dart';
import 'package:fluttertask/Utils/Constant.dart';
import 'HomeScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController search = TextEditingController();

  var _currentNav = 0;
  bool isFocus = false;
  bool isTap = false;

  final PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
  }

  void onContinue(int index) {
    _controller.animateToPage(
      index,
      duration: const Duration(
        seconds: 1,
      ),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorDark,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            elevation: 0,
            currentIndex: _currentNav,
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: TextStyle(color: kColorDark),
            unselectedLabelStyle: TextStyle(color: Colors.grey),
            selectedItemColor: kColorDark,
            items: [
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Padding(
                  padding: EdgeInsets.all(4),
                  child: Image.asset(
                    _currentNav == 0
                        ? 'assets/insight.png'
                        : 'assets/insight.png',
                    height: 25,
                    width: 25,
                  ),
                ),
                activeIcon: Padding(
                  padding: EdgeInsets.all(4),
                  child: Image.asset(
                    'assets/insight.png',
                    height: 25,
                    width: 25,
                    color: kColorDark,
                  ),
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Padding(
                  padding: EdgeInsets.all(4),
                  child: Image.asset(
                    _currentNav == 1
                        ? 'assets/insight.png'
                        : 'assets/insight.png',
                    height: 25,
                    width: 25,
                  ),
                ),
                activeIcon: Padding(
                  padding: EdgeInsets.all(4),
                  child: Image.asset(
                    'assets/insight.png',
                    height: 25,
                    width: 25,
                    color: kColorDark,
                  ),
                ),
                label: "Cart",
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Padding(
                  padding: EdgeInsets.all(4),
                  child: Image.asset(
                    _currentNav == 2
                        ? 'assets/insight.png'
                        : 'assets/insight.png',
                    height: 25,
                    width: 25,
                  ),
                ),
                activeIcon: Padding(
                  padding: EdgeInsets.all(4),
                  child: Image.asset(
                    'assets/insight.png',
                    height: 25,
                    width: 25,
                    color: kColorDark,
                  ),
                ),
                label: "Profile",
              ),
            ],
            onTap: (index) {
              setState(() {
                _currentNav = index;
              });
              _controller.jumpToPage(index);
            },
          ),
        ),
      ),

      //region For Bottom bar Pages of PageView
      body: PageView(
        controller: _controller,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (index) {
          setState(() {
            this._currentNav = index.clamp(0, 2);
          });
        },
        children: const <Widget>[
          HomeScreen(),
          HomeScreen(),
          HomeScreen(),
        ],
      ),
      //endregion

    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
