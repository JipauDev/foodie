import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Food {
  num? ratting;
  Timestamp? date;
  String? image;
  bool? isImageCrop;
  bool? clicked, clicked2, clicked3, clicked4;
  bool? isDiscount;
  String? description;
  String? id;
  String? category;
  LatLng? latLng;
  int? discount;
  String? location;
  double? long;
  double? lat;
  num? price;
  String? driver;
  String? title;
  int? count;
  List? photoGallery;
  int? valueAffordable;
  int? valueTaste;
  int? valuePackaging;
  int? valueYummy;
String?  dateOrder;
String? name;
String? photoProfile;
String? status;
String? locationUser;
int? timeOrder;
int? quantity;
num? totalPrice;





  Food(
      {this.category,
      this.date,
      this.clicked,
      this.clicked2,
      this.clicked3,
      this.clicked4,
      this.description,
      this.id,
      this.location,
      this.price,
      this.title,
      this.count,
      this.photoGallery,
      this.valueAffordable,
      this.valueTaste,
      this.valuePackaging,
      this.driver,
      this.latLng,
      this.valueYummy,
      this.image,
      this.isImageCrop,
      this.isDiscount,
      this.discount,
      this.ratting,
      this.long,
      this.lat,
      this.dateOrder,
      this.name,
      this.photoProfile,
      this.status,
      this.timeOrder,
      this.quantity,
      this.totalPrice,
      this.locationUser,

      });

  factory Food.fromFirestore(DocumentSnapshot snapshot){
    Map data = snapshot.data() as Map<dynamic, dynamic>;
    
    
  LatLng latLng = LatLng(data['lat']??1, data['long']??1);
    return Food(
    ratting  : data['ratting']??1,
    category : data['category']??"",
    date  : data['date'],
    clicked  : data['clicked']??false,
    clicked2  : data['clicked2']??false,
    clicked3  : data['clicked3']??false,
    clicked4  : data['clicked4']??false,
    quantity: data['quantity']??1,
    totalPrice: data['totalPrice']??0,
    description  : data['description']??"",
    id  : snapshot.id,
    latLng: latLng,
    image: data["image"]??'',
    driver: data['driver']??"",
    dateOrder: data['dateOrder']??"",
    name: data['name']??"",
    photoProfile: data['photoProfile']??"",
    status: data['status']??"",
    timeOrder: data['timeOrder']??0,
    count: data['count']??1,
    location  : data['location']??"",
    price  : data['price']??1.0,
    title  : data['title']??"",
    locationUser: data['locationUser']??"",
    photoGallery  : data['photoGallery']?? [],
    valueAffordable  : data['valueAffordable']??0,
    valueTaste  : data['valueTaste']??0,
    valuePackaging  : data['valuePackaging']??0,
    valueYummy  : data['valueYummy']??0,
    isImageCrop: data['isImageCrop']??false,
    isDiscount: data['isDiscount']??false,
    discount: data['discount']??0,
    long: latLng.longitude,
    lat: latLng.latitude,
    );
  }
}

