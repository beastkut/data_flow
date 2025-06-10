import 'package:flutter/material.dart';


class TrendingTile extends StatelessWidget {
  const TrendingTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade300)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            height: 185,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8)
                ),
                image: DecorationImage(
                    image: AssetImage("lib/assets/Image.jpg"),
                    fit: BoxFit.cover
                )
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),

                Text(
                  "Lorem Ipsum",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),

                Text(
                  "Lorem ipsum dolor sit amet consectetur adipiscing elit",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );;
  }
}
