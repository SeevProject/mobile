import 'package:flutter/material.dart';

import 'education_name.dart';
import 'more_courses.dart';

class Your_cv extends StatefulWidget {
  const Your_cv({super.key});

  @override
  State<Your_cv> createState() => _Your_cvState();
}

class _Your_cvState extends State<Your_cv> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: screenwidth * 0.51),
                      child: Text(
                        "Your CVs.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 15, right: screenwidth * 0.25),
                      child: Center(
                        child: Text(
                          "This is a list of the CVs you’ve\nmade with us. How cool!",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 21,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    // fields

                    Padding(
                      padding:
                          EdgeInsets.only(top: 40, right: screenwidth * 0.55),
                      child: Text(
                        "CV list",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 21,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    // cv's
                    Container(
                      width: screenwidth * 2,
                      height: screenheight * 0.5,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 30, left: screenwidth * 0.15),
                              child: Container(
                                color: const Color(0x001c7ffc),
                                child: const Image(
                                    image: AssetImage("assets/cv2023.jpg")),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 30),
                              child: Container(
                                color: const Color(0x001c7ffc),
                                child: const Image(
                                    image: AssetImage("assets/temps.png")),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 30),
                              child: Container(
                                color: const Color(0x001c7ffc),
                                child: const Image(
                                    image: AssetImage("assets/cv2023.jpg")),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 40),
                          child: SizedBox(
                            width: screenwidth * 0.5,
                            height: screenheight * 0.06,
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
                                        builder: (context) =>
                                            const more_courses()),
                                  );
                                },
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 20),
                                      child: Image(
                                        image: AssetImage("assets/next.png"),
                                        width: 24,
                                        height: 24,
                                      ),
                                    ),
                                    Text(
                                      'Download',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                        // back button
                        Padding(
                          padding: EdgeInsets.only(
                              left: 40, right: screenwidth * 0.10, top: 20),
                          child: SizedBox(
                            width: screenwidth * 0.5,
                            height: screenheight * 0.06,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  backgroundColor:
                                      const Color.fromARGB(255, 236, 236, 236),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const education_name()),
                                  );
                                },
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 20),
                                      child: Image(
                                        image: AssetImage("assets/Button.png"),
                                        width: 24,
                                        height: 24,
                                      ),
                                    ),
                                    Text(
                                      'Back',
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 20),
                                    ),
                                  ],
                                )),
                          ),
                        ),

                        // next button
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
