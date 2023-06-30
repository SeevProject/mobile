import 'package:cv/address.dart';
import 'package:cv/welcome.dart';
import 'package:flutter/material.dart';

class Information extends StatefulWidget {
  const Information({super.key});

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width * 8,
        height: MediaQuery.of(context).size.height * 5,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 110, top: 75),
              child: Text(
                " Give us more\n information.",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, right: 90),
              child: Center(
                child: Text(
                  "We’d just like to know you\nbetter.",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 21,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),

            //

            // text fields

            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 95, right: 250),
                  child: Text(
                    "Status",
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
                        hintText: "I’m still a student",
                        labelStyle:
                            TextStyle(color: Color.fromARGB(255, 28, 127, 252)),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 0.9, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ),

                // field of name
                Padding(
                  padding: const EdgeInsets.only(top: 15, right: 30),
                  child: Container(
                    color: const Color.fromARGB(255, 235, 235, 235),
                    width: 272,
                    height: 55,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        fillColor: Color.fromARGB(255, 28, 127, 252),
                        hintText: "I’m currently employed",
                        labelStyle:
                            TextStyle(color: Color.fromARGB(255, 28, 127, 252)),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 0.9, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ),

                // last name

                const Padding(
                  padding: EdgeInsets.only(top: 35, right: 250),
                  child: Text(
                    "About",
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
                    color: const Color.fromARGB(255, 235, 235, 235),
                    width: 272,
                    height: 90,
                    child: TextFormField(
                      maxLines: 10,
                      minLines: 1,
                      decoration: const InputDecoration(
                        fillColor: Color.fromARGB(255, 28, 127, 252),
                        hintText:
                            "A self-motivated and inspiring sales person, fostering long lasting relationships.",
                        labelStyle:
                            TextStyle(color: Color.fromARGB(255, 28, 127, 252)),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 0.9, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                // back button
                Padding(
                  padding: const EdgeInsets.only(top: 100, left: 55, right: 20),
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
                                builder: (context) => const Welcome()),
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
                  padding: const EdgeInsets.only(top: 100),
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
                                builder: (context) => const Address()),
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
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
    );
  }
}
