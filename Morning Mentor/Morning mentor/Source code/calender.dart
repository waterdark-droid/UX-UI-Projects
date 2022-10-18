import 'package:flutter/material.dart';

class CalenderMenu extends StatefulWidget {
  const CalenderMenu({Key? key}) : super(key: key);

  @override
  State<CalenderMenu> createState() => _CalenderMenuState();
}

class _CalenderMenuState extends State<CalenderMenu> {
  final months = [
    'JAN',
    'FEB',
    'MAR',
    'APR',
    'MAY',
    'JUN',
    'JUL',
    'AUG',
    'SEP',
    'OCT',
    'NOV',
    'DEC'
  ];
  var currentMonth = 0;

  void changeMonthLeft() {
    setState(() {
      currentMonth = (currentMonth - 1) % 12;
    });
  }

  void changeMonthRight() {
    setState(() {
      currentMonth = (currentMonth + 1) % 12;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: SizedBox(
            width: 385,
            height: 680,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Color(0xC9C9C9C9),
              elevation: 0.0,
            ),
          ),
        ),
        Positioned(
            child: Column(
          children: [
            SizedBox(height: 12),
            Stack(
              children: [
                Center(
                  child: SizedBox(
                    width: 360,
                    height: 380,
                    child: Card(
                      elevation: 0.0,
                      color: Color(0xD9D9D9D9),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                ),
                Positioned(
                  top: 6,
                  left: 22,
                  child: IconButton(
                    onPressed: changeMonthLeft,
                    icon: Icon(
                      Icons.chevron_left_sharp,
                      size: 43,
                      color: Color(0x7D7D7D7D),
                    ),
                  ),
                ),
                Positioned(
                  top: 6,
                  left: 312,
                  child: IconButton(
                    onPressed: changeMonthRight,
                    icon: Icon(
                      Icons.chevron_right_sharp,
                      size: 43,
                      color: Color(0x7D7D7D7D),
                    ),
                  ),
                ),
                Positioned(
                  top: 11,
                  left: 128,
                  child: SizedBox(
                    width: 140,
                    height: 45,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11)),
                      elevation: 0.0,
                      color: Color(0xC1C1C1C1),
                      child: Center(
                        child: Text(
                          months[currentMonth],
                          style: TextStyle(
                            fontFamily: 'Lemon Days',
                            fontSize: 28,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 62,
                    left: 41,
                    child: SizedBox(
                      width: 310,
                      height: 295,
                      child: Card(
                        color: Color(0xC1C1C1C1),
                        elevation: 0.0,
                      ),
                    ))
              ],
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              height: 10,
              thickness: 1,
              color: Colors.black45,
            ),
            Center(
              child: Text(
                'Our Overall Score',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
              ),
            ),
            RectInfo(),
            SizedBox(
              height: 10,
            ),
            RectInfo(),
            SizedBox(
              height: 10,
            ),
            RectInfo(),
          ],
        )),
      ],
    );
  }

  Widget RectInfo() => Column(
        children: const [
          SizedBox(
            width: 360,
            height: 20,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              color: Color(0xD9D9D9D9),
              elevation: 0.0,
            ),
          ),
          SizedBox(
            width: 260,
            height: 20,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              color: Color(0xD9D9D9D9),
              elevation: 0.0,
            ),
          ),
          SizedBox(
            width: 200,
            height: 20,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              color: Color(0xD9D9D9D9),
              elevation: 0.0,
            ),
          ),
        ],
      );
}
