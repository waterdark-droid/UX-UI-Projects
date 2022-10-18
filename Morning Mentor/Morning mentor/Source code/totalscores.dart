import 'package:flutter/material.dart';

class TotalScoresTab extends StatefulWidget {
  TotalScoresTab({Key? key}) : super(key: key);

  @override
  State<TotalScoresTab> createState() => _TotalScoresTabState();
}

class _TotalScoresTabState extends State<TotalScoresTab> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: SizedBox(
            width: 385,
            height: 680,
            child: Card(
              elevation: 0.0,
              color: Color(0xC9C9C9C9),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
            ),
          ),
        ),
        Center(
          child: Column(
            children: [
              SizedBox(
                height: 13,
              ),
              top3Wid(),
              SizedBox(
                height: 9,
              ),
              top3Wid(),
              SizedBox(
                height: 9,
              ),
              top3Wid(),
              SizedBox(
                height: 9,
              ),
              SizedBox(
                width: 350,
                height: 330,
                child: Card(
                  elevation: 0,
                  color: Color(0xD9D9D9D9),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
              Stack(
                children: [
                  top3Wid(),
                  Positioned(
                    top: 5,
                    left: 5,
                    child: SizedBox(
                      width: 340,
                      height: 60,
                      child: Card(
                        elevation: 0,
                        color: Color(0xC0C0C0C0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget top3Wid() => SizedBox(
        width: 350,
        height: 70,
        child: Card(
          elevation: 0,
          color: Color(0xD9D9D9D9),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      );
}
