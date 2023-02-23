import 'dart:io';

import 'package:codespire_app/app/utils/small_text.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart' as lotti;

import '../screens/getx_helper/controllers/post_controller.dart';
import 'ngo_selection_dialog.dart';

class PostSection extends GetView<PostController> {
  const PostSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: controller.initialPosition.value,
                  zoom: 16,
                ),
                markers: Set<Marker>.of(controller.ngoMarkers),
                zoomControlsEnabled: false,
                compassEnabled: false,
                indoorViewEnabled: true,
                mapToolbarEnabled: false,
                onMapCreated: (GoogleMapController mapController){
                  controller.setMapController(mapController);
                },
              ),
            ),
          ),
          Positioned(
            bottom: 80,
            right: 10,
            child: FloatingActionButton(
              onPressed: () {
                _showModelBottomSheet(context);
              },
              child: const Icon(Icons.add, size: 15,),
            ),
          ),
          Positioned(
            bottom: 80,
            left: 10,
            child: FloatingActionButton(
              onPressed: () async {
                await controller.navigateToCurrentLocation();
              },
              child: const Icon(Icons.location_searching_sharp, size: 15,),
            ),
          ),
        ],
      ),

    );
  }

  Future<Widget> _showModelBottomSheet (BuildContext context) async {
    return await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30)
        )
      ),
      builder: (context) => DraggableScrollableSheet(
        expand: false,
        initialChildSize: 0.5,
        maxChildSize: 0.9,
        builder: (context, scrollController){
          return Obx(
                ()=> !controller.isPosting.value ?
            SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  children: [
                    const SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          style: const ButtonStyle(),
                          onPressed: () async {
                            controller.getAllSelectedNGOIds(controller.ngoList);
                            await controller.postToNGO(controller.ngoIds);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(
                                Icons.my_location,
                                size: 15,
                              ),
                              SizedBox(width: 8,),
                              Text("All NGO's"),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          style: const ButtonStyle(),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return NGOSelectionDialog(
                                      ngoToPost: (ngos) async {
                                        await controller.postToNGO(ngos);
                                        controller.ngoIds.clear();
                                      }
                                  );
                                });
                          },
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(
                                Icons.my_location,
                                size: 15,
                              ),
                              SizedBox(width: 8,),
                              Text("Select NGO's"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Obx(
                          () => controller.imagePath.value == ''?
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: DottedBorder(
                          borderType: BorderType.RRect,
                          radius: Radius.circular(20.h),
                          color: Colors.grey,
                          strokeWidth: 3,
                          child: GestureDetector(
                            onTap: () async {
                              final image = await ImagePicker().pickImage(
                                source: ImageSource.camera,
                              );
                              if (image != null) {
                                controller.imagePath.value = image.path;
                              }
                            },
                            child: ClipRRect(
                              child: Container(
                                width: 250,
                                height: 250,
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
                      ): Container(
                        height: 250,
                        width: 250,
                        margin: const EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(20.h),
                            image: DecorationImage(
                                image: FileImage(
                                  File(controller.imagePath.value),
                                ),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Obx(
                        () {
                          if(controller.imagePath.value != ''){
                            return Padding(
                              padding: EdgeInsets.all(12.h),
                              child: TextFormField(
                                maxLines: 20,
                                minLines: 1,
                                keyboardType: TextInputType.multiline,
                                controller: controller.postDescriptionController,
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
                                  hintStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: "verdana_regular",
                                    fontWeight: FontWeight.w400,
                                  ),
                                  labelText: 'Description',
                                  labelStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.h,
                                    fontFamily: "verdana_regular",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            );
                          }else{
                            return lotti.Lottie.asset(
                              'assets/anim/pickImage.json',
                              width: 200,
                              fit: BoxFit.cover,
                              height: 200,
                            );
                          }
                        }
                    )
                  ],
                )
            ):
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircularProgressIndicator(),
                    SizedBox(height: 20,),
                    Text(
                      'Posting',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                      ),
                    )
                  ],
                ),
          );
        },
      )
    );
  }
}
