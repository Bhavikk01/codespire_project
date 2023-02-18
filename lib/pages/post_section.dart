import 'dart:io';

import 'package:codespire_app/widgets/small_text.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';

class PostSection extends StatefulWidget {
  const PostSection({Key? key}) : super(key: key);

  @override
  State<PostSection> createState() => _PostSectionState();
}

class _PostSectionState extends State<PostSection> {
  @override
  late TextEditingController postDescriptionController;
  bool imagePresent = false;
  XFile? imageUploaded = null;

  @override
  void initState() {
    super.initState();
    postDescriptionController = new TextEditingController();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.only(left: 30.w, right: 30.w, top: 100.h),
              child: DottedBorder(
                borderType: BorderType.RRect,
                radius: Radius.circular(20.h),
                color: Colors.grey,
                strokeWidth: 3,
                child: GestureDetector(
                  onTap: () {},
                  child: ClipRRect(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20.h),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.download_rounded,
                            size: 35.h,
                          ),
                          SmallText(
                            text: "Choose a file...",
                            size: 18.h,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            (imagePresent)
                ? Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.h),
                        child: TextFormField(
                          maxLines: 20,
                          minLines: 1,
                          keyboardType: TextInputType.multiline,
                          controller: postDescriptionController,
                          style: TextStyle(
                            fontSize: 13.h,
                            color: Colors.black87,
                            fontWeight: FontWeight.w400,
                          ),
                          decoration: InputDecoration(
                            focusColor: Colors.white,
                            //add prefix icon
                            prefixIcon: const Icon(
                              Icons.description,
                              color: Colors.grey,
                            ),

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),

                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 1.h),
                              borderRadius: BorderRadius.circular(8.h),
                            ),
                            fillColor: Colors.amber,

                            hintText: "Enter Description",

                            //make hint text
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: "verdana_regular",
                              fontWeight: FontWeight.w400,
                            ),

                            //create lable
                            labelText: 'Description',
                            //lable style
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 14.h,
                              fontFamily: "verdana_regular",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(),
                        onPressed: () {
                          if (postDescriptionController.text != null &&
                              imageUploaded != null) {
                            print("Post Successful");
                          }
                        },
                        child: Text("Post"),
                      ),
                    ],
                  )
                : Lottie.asset(
                    'assets/anim/pickImage.json',
                    width: 200,
                    fit: BoxFit.cover,
                    height: 200,
                  ),
          ],
        ),
      ),
    );
  }
}
