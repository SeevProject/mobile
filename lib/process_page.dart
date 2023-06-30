import 'package:flutter/material.dart';

class process_page extends StatefulWidget {
  const process_page({super.key});

  @override
  State<process_page> createState() => _process_pageState();
}

class _process_pageState extends State<process_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 160, top: 120),
            child: Text(
              "We’re done.",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15, right: 50),
            child: Center(
              child: Text(
                "You can access your profile in a\nbit.",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 21,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          //img
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 130),
                child: Container(
                  width: 350,
                  height: 200,
                  color: const Color(0x001c7ffc),
                  child: const Image(image: AssetImage("assets/loading.png")),
                ),
              )
            ],
          ),
          // team
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 220),
                child: Container(
                  width: 260,
                  height: 70,
                  color: Color.fromARGB(0, 0, 0, 0),
                  child: const Row(
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
