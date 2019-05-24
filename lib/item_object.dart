import 'package:flutter/material.dart';

class TourismPlaces{
  var imageUrl;
  var placeTitle;
  var country;
  TourismPlaces(String imageUrl, String placeTitle, String country){
    this.imageUrl = imageUrl;
    this.placeTitle = placeTitle;
    this.country = country;
  }

  String getImageUrl(){
    return this.imageUrl;
  }
  String getPlaceTitle(){
    return this.placeTitle;
  }
  String getCountry(){
    return this.country;
  }
}