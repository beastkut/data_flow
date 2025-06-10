import 'package:flutter/material.dart';


class PlantTile extends StatelessWidget {
  String imagePath;
  PlantTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5),
      height: 70,
      width: 70,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imagePath))
      ),
    );
  }
}
