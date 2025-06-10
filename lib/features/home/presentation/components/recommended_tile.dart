import 'package:flutter/material.dart';

class RecommendedTile extends StatelessWidget {
  const RecommendedTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        margin: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12)
                  ),
                  image: DecorationImage(
                      image: AssetImage("lib/assets/Image.jpg"),
                      fit: BoxFit.cover
                  )
              ),
            ),

            SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lorem Ipsum",
                    style: TextStyle(
                        color: Colors.grey
                    ),
                  ),

                  Text(
                    "Lorem Ipsum dolor sit amet consectetur",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                    ),
                  ),

                  SizedBox(height: 5,),

                  Text(
                    "RM 10.00",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.green.shade600,

                    ),
                  ),
                ],
              ),
            ),


          ],
        )
    );
  }
}
