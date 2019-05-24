import 'package:flutter/material.dart';

Image imageButton(String assetName/*, double width, double height*/) {
  var imageAssets = AssetImage(assetName);
  var image = Image(
    fit: BoxFit.cover,
    image: imageAssets,
    /*width: width,
    height: height,*/
    filterQuality: FilterQuality.medium,
  );
  return image;
}