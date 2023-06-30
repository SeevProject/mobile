import 'package:flutter/material.dart';

class Change_info extends StatefulWidget {
  const Change_info({super.key});

  @override
  State<Change_info> createState() => _Change_infoState();
}

class _Change_infoState extends State<Change_info> {
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
                  // color: Colors.amber,
                  width: screenwidth * 0.45,
                  height: screenheight * 0.17,
                  child: Padding(
                    padding: EdgeInsets.only(top: screenheight / 19),
                    child: Container(
                      child: Text(
                        "Change your\ninformation.",
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
                    width: screenwidth * 0.6,
                    height: screenheight * 0.09,
                    child: Container(
                      child: Text(
                        "Select a part of your\ninformation that you want to\nchange.",
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

          // team
          Padding(
            padding: EdgeInsets.only(top: screenheight / 1.79),
            child: Column(
              children: [
                Container(
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
