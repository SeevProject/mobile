import 'package:cv/language.dart';
import 'package:cv/welcome.dart';
import 'package:flutter/material.dart';


class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // upper text

          const Padding(
            padding: EdgeInsets.only(top: 70),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 150),
                  child: Text(
                    "Give us your\naddress.",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, right: 110),
                  child: Center(
                    child: Text(
                      "We won’t be visiting your\nanytime soon.",
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

          // text fields

          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 40, right: 230),
                child: Text(
                  "Country",
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
                      hintText: "Iraq",
                      labelStyle:
                          TextStyle(color: Color.fromARGB(255, 28, 127, 252)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 0.9, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ),

              // middle name

              const Padding(
                padding: EdgeInsets.only(top: 35, right: 220),
                child: Text(
                  "Province",
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
                  height: 55,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      fillColor: Color.fromARGB(255, 28, 127, 252),
                      hintText: "Hawler",
                      labelStyle:
                          TextStyle(color: Color.fromARGB(255, 28, 127, 252)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 0.9, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ),

              // last name

              const Padding(
                padding: EdgeInsets.only(top: 35, right: 260),
                child: Text(
                  "City",
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
                  height: 55,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      fillColor: Color.fromARGB(255, 28, 127, 252),
                      hintText: "Soran",
                      labelStyle:
                          TextStyle(color: Color.fromARGB(255, 28, 127, 252)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 0.9, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ),
              // strret
              const Padding(
                padding: EdgeInsets.only(top: 35, right: 260),
                child: Text(
                  "Street",
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
                  height: 55,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      fillColor: Color.fromARGB(255, 28, 127, 252),
                      hintText: "Baxtiry",
                      labelStyle:
                          TextStyle(color: Color.fromARGB(255, 28, 127, 252)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 0.9, color: Colors.grey),
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
                padding: const EdgeInsets.only(top: 60, left: 55, right: 20),
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
                padding: const EdgeInsets.only(top: 60),
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
                              builder: (context) => const Language()),
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
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      )),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
