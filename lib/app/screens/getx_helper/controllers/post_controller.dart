
import 'dart:developer';
import 'dart:io';

import 'package:codespire_app/app/services/firebase.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../models/ngo_model/ngo_model.dart';
import '../../../models/post_model/post_model.dart';
import '../../../user_store.dart';

class PostController extends GetxController{
  TextEditingController postDescriptionController = TextEditingController();
  Rx<String> imagePath = ''.obs;
  RxList<NGOModel> ngoList = <NGOModel>[].obs;
  var isPosting = false.obs;
  RxList<String> ngoIds = <String>[].obs;
  RxList<Marker> ngoMarkers = <Marker>[].obs;

  late GoogleMapController mapController;

  Rx<LatLng> initialPosition= const LatLng(
    45.51563,
    -122.677433,
  ).obs;

  CameraPosition initialCameraPosition = const CameraPosition(
      target: LatLng(
        45.51563,
        -122.677433,
      )
  );


  @override
  Future<void> onInit() async {
    await fetchNgoLocations();
    await getCurrentLocation();
    super.onInit();
  }

  postToNGO(List<String> ngoSelected) async {
    try{
      isPosting.value = true;
      final dateTime = DateTime.now().toIso8601String();
      final ref =
          FirebaseFireStore.to.storage.ref("${UserStore.to.uid}/$dateTime");
      final uploadTask = await ref.putFile(File(imagePath.value));
      imagePath.value = await uploadTask.ref.getDownloadURL();
    }catch(error){
      imagePath.value = '';
    }
    if(imagePath.value != ''){
      await FirebaseFireStore
          .to.uploadUserPost(
          PostModel(
            userId: UserStore.to.uid,
            postId: '',
            postDescription: postDescriptionController.text,
            postTime: DateTime.now(),
            postSrc: imagePath.value,
            toNGOs: ngoSelected,
            isOccupied: false,
            occupiedByNGOId: ''
          )
      );
      imagePath.value = '';
      postDescriptionController.clear();
      ngoIds.clear();
      isPosting.value = false;
    }
    isPosting.value = false;
  }

  getAllSelectedNGOIds(List<NGOModel> ngos) async {
    ngoIds.clear();
    for (var ngo in ngos) {
      ngoIds.add(ngo.id);
    }
  }

  void setMapController(GoogleMapController controller) {
    mapController = controller;
  }

  fetchNgoLocations() async {
    ngoList.clear();
    var documents = await FirebaseFireStore.to.getAllNGOData();
    log(documents.toString());
    for(int i=0; i<documents.docs.length; i++){
      ngoList.add(NGOModel.fromJson(documents.docs[i].data() as Map<String, dynamic>));
      ngoMarkers.add(
        Marker(
          markerId: MarkerId('${i+1}'),
          position: LatLng(
            ngoList[i].latitude,
            ngoList[i].longitude
          ),
          icon: BitmapDescriptor.defaultMarker
        )
      );
    }
  }

  Future<void> navigateToCurrentLocation() async {
    bool isServiceEnabled = false;
    LocationPermission permission;

    isServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if(!isServiceEnabled){
      return Future.error('error');
    }

    permission = await Geolocator.checkPermission();
    if(permission == LocationPermission.denied){
      permission = await Geolocator.requestPermission();
      if(permission == LocationPermission.denied){
        return Future.error('Permission Denied');
      }
    }
    if(permission == LocationPermission.deniedForever){
      return Future.error('Permission Denied forever');
    }

    Position position = await Geolocator.getCurrentPosition();
    initialPosition.value = LatLng(
      position.latitude,
      position.longitude
    );
    ngoMarkers.add(
      const Marker(
        markerId: MarkerId('0'),
        infoWindow: InfoWindow(
          title: 'Current Location',
        ),
        icon: BitmapDescriptor.defaultMarker
      )
    );
    mapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: LatLng(
              position.latitude,
              position.longitude
            ),
            zoom: 16
          )
        ));
  }

  Future<void> getCurrentLocation() async {
    bool isServiceEnabled = false;
    LocationPermission permission;

    isServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if(!isServiceEnabled){
      return Future.error('error');
    }

    permission = await Geolocator.checkPermission();
    if(permission == LocationPermission.denied){
      permission = await Geolocator.requestPermission();
      if(permission == LocationPermission.denied){
        return Future.error('Permission Denied');
      }
    }
    if(permission == LocationPermission.deniedForever){
      return Future.error('Permission Denied forever');
    }

    Position position = await Geolocator.getCurrentPosition();
    initialPosition.value = LatLng(
        position.latitude,
        position.longitude
    );
    ngoMarkers.add(
        const Marker(
            markerId: MarkerId('0'),
            infoWindow: InfoWindow(
              title: 'Current Location',
            ),
            icon: BitmapDescriptor.defaultMarker
        )
    );
  }
}
