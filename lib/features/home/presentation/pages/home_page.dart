import 'package:data_flow/features/home/presentation/components/category_tile.dart';
import 'package:data_flow/features/home/presentation/components/plant_tile.dart';
import 'package:data_flow/features/home/presentation/components/recommended_tile.dart';
import 'package:data_flow/features/home/presentation/components/trending_tile.dart';
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Header
            Container(
              height: 250,
              width: double.infinity,
              color: Colors.green.shade900,
              child: Column(
                children: [
                  SizedBox(height: 20,),

                  // LOGO
                  Text(
                      "L O G O",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40
                    ),
                  ),

                  SizedBox(height: 10,),

                  // DIVIDER + TEXT
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.white,
                          thickness: 1,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric( horizontal: 20.0),
                        child: Text(
                            "NEXT APPOINTMENT",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12
                          ),
                        ),
                      ),

                      Expanded(
                        child: Divider(
                          color: Colors.white,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20,),

                  // DATE + ADDRESS
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:  12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_today,
                              size: 20,
                              color: Colors.green,
                            ),

                            SizedBox(width: 10,),

                            Text(
                                "14 Oct 2020",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                              ),
                            )
                          ],
                        ),

                        Row(
                          children: [
                            Icon(
                              Icons.access_time_filled,
                              size: 20,
                              color: Colors.green,
                            ),

                            SizedBox(width: 10,),

                            Text(
                              "12.30 PM",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500
                              ),
                            )
                          ],
                        ),

                        Row(
                          children: [
                            Icon(
                              Icons.pin_drop,
                              size: 20,
                              color: Colors.green,
                            ),

                            SizedBox(width: 10,),

                            Text(
                              "123 Plant Street, 1/1",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  overflow: TextOverflow.ellipsis
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 25,),

                  // WALLET
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                  "CREDIT",
                                style: TextStyle(
                                  color: Colors.green.shade900
                                ),
                              ),

                              Text(
                                "RM 100.00",
                                style: TextStyle(
                                    color: Colors.green.shade900,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "POINTS",
                                style: TextStyle(
                                    color: Colors.green.shade900
                                ),
                              ),

                              Text(
                                "10",
                                style: TextStyle(
                                    color: Colors.green.shade900,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "PACKAGE",
                                style: TextStyle(
                                    color: Colors.green.shade900
                                ),
                              ),

                              Text(
                                "1",
                                style: TextStyle(
                                    color: Colors.green.shade900,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            /// Image Banner
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("lib/assets/Home Banner.jpg"),
                  fit: BoxFit.cover
                )
              ),
            ),
            SizedBox(height: 25,),

            /// category
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(
                height: 70, // match the height of your containers
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoryTile(text: "SHOP"),

                    CategoryTile(text: "SERVICES"),

                    CategoryTile(text: "POSTS"),
                  ],
                ),
              ),
            ),

            SizedBox(height: 25,),

            /// plant category,
            SizedBox(
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  PlantTile(imagePath: "lib/assets/Shop Plants - Icon 1.png"),

                  PlantTile(imagePath: "lib/assets/Shop Plants - Icon 2.png"),

                  PlantTile(imagePath: "lib/assets/Shop Plants - Icon 3.png"),

                  PlantTile(imagePath: "lib/assets/Shop Plants - Icon 4.png"),

                  PlantTile(imagePath: "lib/assets/Shop Plants - Icon 5.png"),
                ],
              ),
            ),

            SizedBox(height: 25,),
            
            /// new services
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "NEW SERVICES",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),

                          Text(
                            "Recommended based on your preferences",
                            style: TextStyle(
                              color: Colors.grey
                            ),
                          )
                        ],
                      ),

                      Text(
                        "View All",
                        style: TextStyle(
                            color: Colors.grey.shade600
                        ),
                      )
                    ],
                  ),

                  SizedBox(height: 25,),

                  SizedBox(
                    height: 340,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        RecommendedTile(),

                        RecommendedTile(),

                        RecommendedTile(),
                      ],
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 40,),
            
            /// shop plants category
            Row(
              children: [
                Image.asset("lib/assets/Shop Plants - Icon Main.png",scale: 1.6,),

                Expanded(
                  child: SizedBox(
                    height: 70,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        PlantTile(imagePath: "lib/assets/Shop Plants - Icon 1.png"),

                        PlantTile(imagePath: "lib/assets/Shop Plants - Icon 2.png"),

                        PlantTile(imagePath: "lib/assets/Shop Plants - Icon 3.png"),

                        PlantTile(imagePath: "lib/assets/Shop Plants - Icon 4.png"),

                        PlantTile(imagePath: "lib/assets/Shop Plants - Icon 5.png"),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 10,),

            /// grid view plants
            Container(
              height: 180,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("lib/assets/Trending Discoveries.jpg"),
                  fit: BoxFit.cover
                )
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DynamicHeightGridView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  crossAxisCount: 2,
                  builder: (ctx, index) {
                    return TrendingTile();
                  }
              ),
            ),

            SizedBox(
              height: 35,
            ),

            /// Location
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "LOCATION",
                    style: TextStyle(
                      color: Colors.green.shade900,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),

                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("lib/assets/map.jpg"),
                          fit: BoxFit.cover
                      )
                    ),
                  ),

                  SizedBox(height: 20,),

                  /// Address 1
                  Text(
                    "Sunway Piramid",
                    style: TextStyle(
                        color: Colors.green.shade900,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),
                  ),

                  SizedBox(height: 10,),
                  
                  Row(
                    children: [
                      Icon(Icons.pin_drop, color: Colors.green.shade900,),

                      SizedBox(width: 15,),

                      Flexible(
                        child: Text(
                          "10 Floor, Lorem Ipsum Mall, Jalan ss23 Lorem, Selangor, Malaysia",
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline

                          ),
                        ),
                      )
                    ],
                  ),

                  SizedBox(height: 20,),

                  Row(
                    children: [
                      Icon(Icons.access_time_filled, color: Colors.green.shade900,),

                      SizedBox(width: 15,),

                      Text(
                        "10am - 10pm",
                        style: TextStyle(
                            color: Colors.grey.shade600,
                        ),
                      )
                    ],
                  ),

                  SizedBox(height: 30,),


                  /// Address 2
                  Text(
                    "The Gardens Mall",
                    style: TextStyle(
                        color: Colors.green.shade900,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),
                  ),

                  SizedBox(height: 10,),

                  Row(
                    children: [
                      Icon(Icons.pin_drop, color: Colors.green.shade900,),

                      SizedBox(width: 15,),

                      Flexible(
                        child: Text(
                          "10 Floor, Lorem Ipsum Mall, Jalan ss23 Lorem, Selangor, Malaysia",
                          style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline

                          ),
                        ),
                      )
                    ],
                  ),

                  SizedBox(height: 20,),

                  Row(
                    children: [
                      Icon(Icons.access_time_filled, color: Colors.green.shade900,),

                      SizedBox(width: 15,),

                      Text(
                        "10am - 10pm",
                        style: TextStyle(
                          color: Colors.grey.shade600,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )

          ],
        ),
      )
    );
  }
}
