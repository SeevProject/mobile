import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadPicture extends StatefulWidget {
  const UploadPicture({Key? key}) : super(key: key);

  @override
  _UploadPictureState createState() => _UploadPictureState();
}

class _UploadPictureState extends State<UploadPicture> {
  File? imageFile;

  Future<void> uploadFromGallery() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        imageFile = File(pickedImage.path);
      });
    }
    Navigator.pop(context);
  }

  Future<void> _imageFromCamera(BuildContext context) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.camera);

    if (pickedImage != null) {
      setState(() {
        imageFile = File(pickedImage.path);
      });
    }
    Navigator.pop(context);
  }

  void _showOption(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Choose Picture"),
        content: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.image),
                title: const Text("Gallery"),
                onTap: () => uploadFromGallery(),
              ),
              ListTile(
                leading: const Icon(Icons.camera),
                title: const Text("Camera"),
                onTap: () => _imageFromCamera(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: screenheight / 10, left: 30),
                child: SizedBox(
                  width: screenwidth * 0.55,
                  height: screenheight * 0.17,
                  child: Padding(
                    padding: EdgeInsets.only(top: screenheight / 19),
                    child: Container(
                      child: const Text(
                        "Set a picture for\nyour profile.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: SizedBox(
                    width: screenwidth * 0.7,
                    height: screenheight * 0.09,
                    child: Container(
                      child: const Text(
                        "Don’t worry. You look good.",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: SizedBox(
                        width: screenwidth * 0.7,
                        height: screenheight * 0.09,
                        child: Container(
                          child: const Text(
                            "Picture",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: screenwidth * 0.75,
                height: screenheight * 0.30,
                child: Column(
                  children: [
                    if (imageFile != null)
                      Image.file(
                        imageFile!,
                        width: screenwidth * 0.80,
                        height: screenheight * 0.30,
                      ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
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
                      onPressed: () => _showOption(context),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Text(
                                "Choose Picture",
                                style: TextStyle(fontSize: 20),
                              )),
                        ],
                      )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
