import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './calender.dart';
import './dashboard.dart';
import './totalscores.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((value) => runApp(MyApp()));
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  //NavigationBar({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // var obj = MyApp();  For dynamic --> create object for the class, For static ==> make the class name

  int digit = 0;
  int selectedIndex = 0;
  int changeText = 0;
  final screens = [
    DashboardMenu(),
    CalenderMenu(),
    TotalScoresTab(),
    Center(
      child: Text('Fourth page'),
    ),
  ];

  final appbarTitle = ['Dashboard', 'Calender', 'Total Scores', 'Profile'];

  void changeThing(index) {
    setState(() {
      selectedIndex = index;
      changeText = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color(0xD1D1D1D1),
      appBar: AppBar(
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        backgroundColor: Color(0xD9D9D9D9),
        title: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: (() {
                digit = digit + 1; //here comes the function of settings button
                print(digit);
              }),
              color: Colors.white,
            ),
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.transparent,
//                   ),

            SizedBox(width: 50),
            Expanded(
              child: Center(
                child: Text(
                  appbarTitle[changeText],
                  style: TextStyle(
                      color: Color(0x6A6A6A6A),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            SizedBox(width: 50),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0x7E7E7E7E),
              ),
              padding: EdgeInsets.all(7),
              child: Icon(
                Icons.person,
              ),
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ), //screens[selectedIndex]
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: BottomNavigationBar(
          onTap: (index) => changeThing(index),
          elevation: 0,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              //backgroundColor: Colors.blueAccent,   use background color when shifting
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Calender',
              //backgroundColor: Colors.greenAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.emoji_events_outlined,
              ),
              label: 'Trophy',
              //backgroundColor: Colors.redAccent,
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                // backgroundColor: Colors.yellowAccent,
                label: 'Profile'),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: Color.fromARGB(192, 187, 187, 187),
        ),
      ),
    ));
  }
}
