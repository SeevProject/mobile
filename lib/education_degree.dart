import 'package:cv/education_name.dart';
import 'package:cv/language.dart';
import 'package:flutter/material.dart';

class Education_degree extends StatefulWidget {
  const Education_degree({super.key});

  @override
  State<Education_degree> createState() => _Education_degreeState();
}

class _Education_degreeState extends State<Education_degree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 170),
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
                          "Add your latest education\nhere.",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 21,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    // fields

                    const Padding(
                      padding: EdgeInsets.only(top: 40, right: 190),
                      child: Text(
                        "Institution Name",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 21,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

                    // years
                    Padding(
                      padding: const EdgeInsets.only(top: 15, right: 60),
                      child: Container(
                        width: 272,
                        height: 55,
                        color: const Color.fromARGB(255, 235, 235, 235),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            fillColor: Color.fromARGB(255, 28, 127, 252),
                            hintText: "American Uni",
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
                    const Padding(
                      padding: EdgeInsets.only(top: 30, right: 190),
                      child: Text(
                        "Years Attended",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 21,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

                    Container(
                      child: Row(
                        children: [
                          // box time
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 15, right: 10, left: 40),
                            child: Container(
                              width: 135,
                              height: 55,
                              color: const Color.fromARGB(255, 235, 235, 235),
                              child: TextFormField(
                                maxLines: 5,
                                minLines: 1,
                                decoration: const InputDecoration(
                                  fillColor: Color.fromARGB(255, 28, 127, 252),
                                  hintText:
                                      "\n           2020\n         20 May",
                                  labelStyle: TextStyle(
                                      color: Color.fromARGB(255, 28, 127, 252)),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 0.9, color: Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          // box step
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 15, right: 10, left: 10),
                            child: Container(
                              width: 135,
                              height: 55,
                              color: const Color.fromARGB(255, 235, 235, 235),
                              child: TextFormField(
                                maxLines: 5,
                                minLines: 1,
                                decoration: const InputDecoration(
                                  fillColor: Color.fromARGB(255, 28, 127, 252),
                                  hintText: "           Now",
                                  labelStyle: TextStyle(
                                      color: Color.fromARGB(255, 28, 127, 252)),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 0.9, color: Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // normall field

                    const Padding(
                      padding: EdgeInsets.only(top: 30, right: 270),
                      child: Text(
                        "Degree",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 21,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

                    // years
                    Padding(
                      padding: const EdgeInsets.only(top: 15, right: 60),
                      child: Container(
                        width: 272,
                        height: 55,
                        color: const Color.fromARGB(255, 235, 235, 235),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            fillColor: Color.fromARGB(255, 28, 127, 252),
                            hintText: "Bachelors",
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
                    const Padding(
                      padding: EdgeInsets.only(top: 30, right: 270),
                      child: Text(
                        "Field",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 21,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

                    // years
                    Padding(
                      padding: const EdgeInsets.only(top: 15, right: 60),
                      child: Container(
                        width: 272,
                        height: 55,
                        color: const Color.fromARGB(255, 235, 235, 235),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            fillColor: Color.fromARGB(255, 28, 127, 252),
                            hintText: "Economic",
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
                    // about
                    const Padding(
                      padding: EdgeInsets.only(top: 40, right: 270),
                      child: Text(
                        "About",
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
                        height: 70,
                        child: TextFormField(
                          maxLines: 10,
                          minLines: 1,
                          decoration: const InputDecoration(
                            fillColor: Color.fromARGB(255, 28, 127, 252),
                            hintText: "I’m learning a lot\nof stuff thre ",
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

                    //
                    //
                    //
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
                                        builder: (context) => const Language()),
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
                                            const education_name()),
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
