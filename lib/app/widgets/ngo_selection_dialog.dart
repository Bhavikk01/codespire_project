
import 'dart:developer';

import 'package:codespire_app/app/screens/getx_helper/controllers/post_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NGOSelectionDialog extends GetView<PostController> {
  final Function(List<String>) ngoToPost;
  NGOSelectionDialog({Key? key,required this.ngoToPost}) : super(key: key);

  final TextEditingController balanceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    log(controller.ngoIds.toString());
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width/1.4,
        height: 400,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Text(
                    "Select your NGO",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Obx(() =>
                      SizedBox(
                        height: 280,
                        child: ListView(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          children: controller.ngoList.map(
                                (element) => CheckboxListTile(
                                  value: controller.ngoIds.contains(element.id),
                                  onChanged: (value){
                                    if(value!){
                                      controller.ngoIds.add(element.id);
                                    }else{
                                      controller.ngoIds.remove(element.id);
                                    }
                                  },
                                  title: Text(
                                    element.name,
                                  ),
                                  controlAffinity: ListTileControlAffinity.leading,
                                ),
                          ).toList(),
                        ),
                      ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  if(controller.ngoIds.isNotEmpty){
                    ngoToPost(
                      controller.ngoIds
                    );

                    Navigator.pop(context);
                  }
                },
                child: const Text(
                  "Post",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400
                  ),
                ),

              )
            ],
          ),
        ),
      ),
    );
  }
}