import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Event {
  String? category;
  String? date;
  String? description;
  String? id;
  String? location;
  double? mapsLangLink;
  double? mapsLatLink;
  int? price;
  String? title;
  String? type;
  String? userDesc;
  String? userName;
  String? userProfile;
  String? image;
  String? image2;
  String? image3;
  String? image4;
  String? image5;
  int? ticket;

  Event(
      {this.category,
      this.date,
      this.description,
      this.id,
      this.location,
      this.mapsLangLink,
      this.mapsLatLink,
      this.price,
      this.title,
      this.type,
      this.image2,
      this.image3,
      this.image4,
      this.image5,
      this.userDesc,
      this.ticket,
      this.userName,
      this.image,
      this.userProfile});

  factory Event.fromFirestore(DocumentSnapshot snapshot){
    Map data = snapshot.data() as Map<dynamic, dynamic>;
    return Event(
       category : data['category'],
    date  : data['date'],
    image: data['image'],
    description  : data['description'],
    id  : data['id'],
    location  : data['location'],
    mapsLangLink  : data['mapsLangLink'],
    mapsLatLink  : data['mapsLatLink'],
    price  : data['price'],
    title  : data['title'],
    image2: data['image2'],
    image3: data['image3'],
    image4: data['image4'],
    image5: data['image5'],
    type  : data['type'],
    ticket: data['ticket'],
    userDesc  : data['userDesc'],
    userName  : data['userName'],
    userProfile  : data['userProfile'],
    );
  }
}


class Event2 {
  String? category;
  String? date;
  String? description;
  String? id;
  String? location;
  double? mapsLangLink;
  double? mapsLatLink;
  int? price;
  String? title;
  String? type;
  String? userDesc;
  String? userName;
  String? userProfile;
  String? image;

  Event2(
      {this.category,
      this.date,
      this.description,
      this.id,
      this.location,
      this.mapsLangLink,
      this.mapsLatLink,
      this.price,
      this.title,
      this.type,
      this.userDesc,
      this.userName,
      this.image,
      this.userProfile});

  factory Event2.fromFirestore(DocumentSnapshot snapshot){
    Map data = snapshot.data() as Map<dynamic, dynamic>;
    return Event2(
       category : data['category'],
    date  : data['date'],
    image: data['image'],
    description  : data['description'],
    id  : data['id'],
    location  : data['location'],
    mapsLangLink  : data['mapsLangLink'],
    mapsLatLink  : data['mapsLatLink'],
    price  : data['price'],
    title  : data['title'],
    type  : data['type'],
    userDesc  : data['userDesc'],
    userName  : data['userName'],
    userProfile  : data['userProfile'],
    );
  }
}