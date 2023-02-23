import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import '../models/post_model/post_model.dart';
import '../models/user_model/user_model.dart';

class FirebaseFireStore extends GetxController{
  static FirebaseFireStore get to => Get.find();
  final FirebaseFirestore fireStore = FirebaseFirestore.instance;
  FirebaseStorage storage = FirebaseStorage.instance;
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> addUser(UserModel user)async{
    log(user.toString());
    await fireStore.collection("users").doc(user.uid).set(user.toJson());
  }

  Future<UserModel?> getUser(String uid) async {
    log("hello");
    final doc = await fireStore.collection("users").doc(uid).get();
    return doc.exists ? UserModel.fromJson(doc.data()!) : null;
  }

  Future<void> uploadUserPost(PostModel post)async{
    final postId = fireStore.collection("Posts").doc().id;
    await fireStore
        .collection("Posts")
        .doc(postId)
        .set(post.copyWith(
            postId: postId
          ).toJson());
  }

  Future<QuerySnapshot> getAllNGOData() async {
    return await fireStore
        .collection("NGO's")
        .get();
  }

}