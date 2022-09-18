import 'dart:io';

import 'package:flutter/material.dart';
import 'package:food_ninja/app_screens/screens.dart';
import 'package:food_ninja/intro_screens/intro_screens.dart';
import 'package:food_ninja/models/models.dart';
import 'package:food_ninja/widgets/widgets.dart';
import 'package:image_picker/image_picker.dart';

// ignore: must_be_immutable
class UploadPhoto extends StatelessWidget {
  UploadPhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background_light.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Material(
              color: Colors.transparent,
              child: Ink(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 70),
                    Container(
                      width: 45,
                      height: 45,
                      margin: const EdgeInsets.only(left: 25.0),
                      decoration: BoxDecoration(
                        color: Color(0xffF9A84D).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.chevron_left,
                          size: 33,
                          color: Color(0xffDA6317),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: BoldText(
                        text: "Upload Your Photo \nProfile",
                        isCentered: false,
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: NormalText(
                        text: "This data will be displayed in your \naccount profile for security",
                        isCentered: false,
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0, bottom: 20),
                      child: CustomIconButton(
                        height: 130,
                        isVertical: true,
                        imageUrl: "assets/icons/gallery.png",
                        text: "From Galary",
                        width: 300,
                        onTab: () => takePhoto(ImageSource.gallery),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0, bottom: 20),
                      child: CustomIconButton(
                        height: 130,
                        isVertical: true,
                        imageUrl: "assets/icons/camera.png",
                        text: "Take Photo",
                        width: 300,
                        onTab: () => takePhoto(ImageSource.camera),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 60.0),
                      child: Center(
                        child: GreenButton(
                          width: 160,
                          text: "Next",
                          onTab: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) {
                            //       print("${this.image.toString()}");
                            //       return image == null ? UploadPreview() : UploadPreview(file: image);
                            //     },
                            //   ),
                            // );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    ImagePicker().pickImage(source: source).then((image) {
      if (image != null) {
        savePhoto(image.name, File(image.path));
      }
    });
  }
}
