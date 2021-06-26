import 'package:flutter/material.dart';
import 'package:vcure_doctors/components/custom_appbar.dart';
import 'package:vcure_doctors/components/nav_drawer.dart';
import 'package:vcure_doctors/pages/homepage/homepage.dart';
import 'package:vcure_doctors/pages/sign_in/sign_in_body.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: CustomAppBar(),
      body: Navigator(key: _navigatorKey, onGenerateRoute: generateRoute),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.grey.shade800,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/home.png',
            height: 25,
            width: 25,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/profile.png',
            height: 25,
            width: 25,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/settings.png',
            height: 25,
            width: 25,
          ),
          label: "",
        )
      ],
      onTap: _onTap,
      currentIndex: _currentTabIndex,
    );
  }

  _onTap(int tabIndex) {
    switch (tabIndex) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePageBody()));
        break;
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
        break;
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
        break;
    }
    setState(() {
      _currentTabIndex = tabIndex;
    });
  }

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "Account":
        return MaterialPageRoute(builder: (context) => SignInBody());
      case "Settings":
        return MaterialPageRoute(builder: (context) => SignInBody());
      default:
        return MaterialPageRoute(builder: (context) => HomePageBody());
    }
  }
}
