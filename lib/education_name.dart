import 'package:cv/courses.dart';
import 'package:flutter/material.dart';

import 'Contact.dart';

class education_name extends StatefulWidget {
  const education_name({super.key});

  @override
  State<education_name> createState() => _education_nameState();
}

class _education_nameState extends State<education_name> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 180, top: 70),
            child: Text(
              "About your\neducation.",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15, right: 110),
            child: Center(
              child: Text(
                "Add more of your degrees,\nor not.",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 21,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          // field

          const Padding(
            padding: EdgeInsets.only(top: 80, right: 210),
            child: Text(
              "Education",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
          ),

          // field of name
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 30),
            child: Container(
              width: 272,
              height: 55,
              color: const Color.fromARGB(255, 235, 235, 235),
              child: TextFormField(
                decoration: const InputDecoration(
                  fillColor: Color.fromARGB(255, 28, 127, 252),
                  hintText: "American Uni                          2022/Now",
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 28, 127, 252)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 0.9, color: Colors.grey),
                  ),
                ),
              ),
            ),
          ),
          // add more
          Padding(
            padding: const EdgeInsets.only(top: 40, right: 20),
            child: SizedBox(
              width: 272,
              height: 51,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: const Color.fromARGB(255, 15, 113, 234),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Contact()),
                    );
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Add More Info',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  )),
            ),
          ),
          // text

          const Padding(
            padding: EdgeInsets.only(top: 15, right: 50),
            child: Center(
              child: Text(
                "If you have other education info\nyou’d like to add, like another\ndegree, press add more info. You\ncan also change items by\npressing.",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 21,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),

          // next button
          Padding(
            padding: const EdgeInsets.only(top: 90, bottom: 50),
            child: SizedBox(
              width: 272,
              height: 51,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: const Color.fromARGB(255, 15, 113, 234),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const courses()),
                    );
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Image(
                          image: AssetImage("assets/next.png"),
                          width: 24,
                          height: 24,
                        ),
                      ),
                      Text(
                        'Next',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
