import 'package:flutter/material.dart';

class Finished_creating extends StatefulWidget {
  const Finished_creating({super.key});

  @override
  State<Finished_creating> createState() => _Finished_creatingState();
}

class _Finished_creatingState extends State<Finished_creating> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          // head text
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: screenheight / 10, left: 30),
                child: Container(
                  //color: Colors.amber,
                  width: screenwidth * 0.45,
                  height: screenheight * 0.17,
                  child: Padding(
                    padding: EdgeInsets.only(top: screenheight / 19),
                    child: Container(
                      child: Text(
                        "Finished\ncreating.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          //intorduction

          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Container(
                    // color: Colors.amber,
                    width: screenwidth * 0.7,
                    height: screenheight * 0.09,
                    child: Container(
                      child: Text(
                        "We’ve finished creating your cv.\nAnd we will not charge you.",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 21,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 90),
                child: Container(
                  width: screenwidth * 0.5,
                  height: screenheight * 0.23,
                  //color: Colors.amber,
                  child: const Center(
                      child: Image(image: AssetImage("assets/done.png"))),
                ),
              )
            ],
          ),

          // team
          Padding(
            padding: EdgeInsets.only(top: screenheight / 4.2),
            child: Column(
              children: [
                Container(
                  //color: Colors.amber,
                  width: screenwidth * 0.64,
                  height: screenheight * 0.06,
                  // color: Colors.amber,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage("assets/go.png")),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Center(
                          child: Text(
                            "Developed by CV Team.",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 21,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
