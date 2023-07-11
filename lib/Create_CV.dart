import 'package:flutter/material.dart';

import 'Contact.dart';
import 'education_name.dart';
import 'more_courses.dart';

class create_cv extends StatefulWidget {
  const create_cv({super.key});

  @override
  State<create_cv> createState() => _create_cvState();
}

class _create_cvState extends State<create_cv> {
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
                    const Padding(
                      padding: EdgeInsets.only(right: 180),
                      child: Text(
                        "Create a new\nCV.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15, right: 120),
                      child: Center(
                        child: Text(
                          "Make a new cv by selecting a\ntemplate.",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 21,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    // fields

                    const Padding(
                      padding: EdgeInsets.only(top: 40, right: 200),
                      child: Text(
                        "Templates to select",
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

                    // about
                    Padding(
                      padding:
                          EdgeInsets.only(top: 40, right: screenwidth * 0.5),
                      child: Text(
                        "Compatibility",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 21,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, right: 60),
                      child: Container(
                        color: const Color.fromARGB(255, 235, 235, 235),
                        width: 272,
                        height: 57,
                        child: TextFormField(
                          maxLines: 10,
                          minLines: 1,
                          decoration: const InputDecoration(
                            fillColor: Color.fromARGB(255, 28, 127, 252),
                            hintText: "",
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 28, 127, 252)),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 0.9, color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Row(
                      children: [
                        // back button
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 40, right: 20, top: 50, bottom: 50),
                          child: SizedBox(
                            width: 126,
                            height: 51,
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
                        Padding(
                          padding: const EdgeInsets.only(top: 50, bottom: 50),
                          child: SizedBox(
                            width: 126,
                            height: 51,
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
                                      'Next',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ],
                                )),
                          ),
                        ),
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
