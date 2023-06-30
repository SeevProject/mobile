import 'package:cv/welcome.dart';
import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
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
                  //  color: Colors.amber,
                  width: screenwidth * 0.35,
                  height: screenheight * 0.17,
                  child: Padding(
                    padding: EdgeInsets.only(top: screenheight / 19),
                    child: Container(
                      child: Text(
                        "Welcome,\nJames.",
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
                    //color: Colors.amber,
                    width: screenwidth * 0.7,
                    height: screenheight * 0.04,
                    child: Container(
                      child: Text(
                        "How can we help you today ?",
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

          Padding(
            padding: EdgeInsets.only(
                left: screenwidth * 0.25, top: screenheight / 15),
            child: Row(
              children: [
                Container(
                  // color: Colors.amber,
                  width: screenwidth * 0.35,
                  height: screenheight * 0.04,
                  child: Container(
                    child: Text(
                      "Actions to take",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 21,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),

          // Facebook

          Padding(
            padding: const EdgeInsets.only(top: 20, left: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: screenwidth * 0.6,
                  height: screenheight * 0.07,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor:
                            const Color.fromARGB(255, 15, 113, 234),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Welcome()),
                        );
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Edit your info',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20, left: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: screenwidth * 0.6,
                  height: screenheight * 0.07,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor:
                            const Color.fromARGB(255, 15, 113, 234),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Welcome()),
                        );
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Create CV',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20, left: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: screenwidth * 0.6,
                  height: screenheight * 0.07,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor:
                            const Color.fromARGB(255, 15, 113, 234),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Welcome()),
                        );
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'View all CVs',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),

          // team
          Padding(
            padding: EdgeInsets.only(top: screenheight / 5),
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
