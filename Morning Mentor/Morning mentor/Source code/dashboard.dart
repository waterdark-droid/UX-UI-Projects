import 'package:flutter/material.dart';

class DashboardMenu extends StatefulWidget {
  const DashboardMenu({Key? key}) : super(key: key);

  //DashboardMenu({Key? key}) : super(key: key);

  @override
  State<DashboardMenu> createState() => _DashboardMenuState();
}

class _DashboardMenuState extends State<DashboardMenu> {
  var digit = 0;
  String textHolder = 'None';

  changeState(textName) {
    setState(() {
      textHolder = textName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return dashBoard();
  }

  Widget dashBoard() => Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                SizedBox(
                  height: 200,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      buildCard(),
                      SizedBox(
                        width: 10,
                      ),
                      buildCard(),
                      SizedBox(
                        width: 10,
                      ),
                      buildCard(),
                      SizedBox(
                        width: 10,
                      ),
                      buildCard(),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 500,
                  height: 210,
                ),
                Positioned(
                  top: 150,
                  left: 47,
                  child: buildSteak(),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Icon(Icons.more_horiz),
            SizedBox(
              height: 2,
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              height: 10,
              thickness: 1,
              color: Colors.black45,
            ),
            SizedBox(
              height: 400,
              width: 350,
              child: ListView(
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    buttonName('MOVE'),
                    SizedBox(
                      height: 10,
                    ),
                    buttonName('REFLECT'),
                    SizedBox(
                      height: 10,
                    ),
                    buttonName('GROW'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'You have pressed $textHolder',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 16),
                    ),
                  ]),
            ),
          ],
        ),
      );

  Widget buildCard() => SizedBox(
        width: 395,
        height: 200,
        child: Card(
          elevation: 0,
          color: Color(0xC4C4C4C4),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      );

  Widget buildSteak() => SizedBox(
        width: 300,
        height: 60,
        child: Card(
          elevation: 0,
          color: Color(0xD9D9D9D9),
          //color: Colors.green,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        ),
      );

  Widget buttonName(String textReceive) => Container(
        width: 310,
        // height: 90,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: Color(0xD9D9D9D9),
            fixedSize: Size(250, 90),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onPressed: () {
            changeState(textReceive);
            // print("You pressed $textReceive");
          },
//             dig = dig + 1;
//             print(dig);
          child: SizedBox(
            width: 310,
            height: 80,
            child: Card(
              elevation: 0,
              color: Color.fromARGB(206, 181, 181, 181),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              child: Align(
                alignment: Alignment(-0.9, 0.0),
                child: Text(textReceive,
                    style: TextStyle(
                      color: Colors.black45,
                      fontFamily: 'Lemon Days',
                      fontSize: 29,
                    )),
              ),
            ),
          ),
        ),
      );

  // @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   throw UnimplementedError();
  // }

}
