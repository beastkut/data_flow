import 'package:flutter/material.dart';


class ProductTile extends StatelessWidget {
  bool isDiscount;
  ProductTile({super.key, required this.isDiscount});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 370,
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  isDiscount
                      ? Image.asset("lib/assets/50%.png", scale: 1.7,)
                      : SizedBox()
                ],
              ),
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

                SizedBox(height: 10,),

                isDiscount
                    ? Text(
                        "RM 100.00",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                        ),
                      )
                    : SizedBox(),

                Text(
                  isDiscount ? "RM 50.00" : "RM 100.00",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.green.shade600,

                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
