import 'package:data_flow/features/mall/presentation/components/product_tile.dart';
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';



class MallPage extends StatefulWidget {
  const MallPage({super.key});

  @override
  State<MallPage> createState() => _MallPageState();
}

class _MallPageState extends State<MallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(5),
          ),

          child: Center(
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Search Salon...",
                border: InputBorder.none
              ),
            ),
          ),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: ImageIcon(AssetImage("lib/assets/Icon - Filter.png")),
          )
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DynamicHeightGridView(
            itemCount: 6,
            crossAxisCount: 2,
            builder: (context,index){
              return ProductTile(isDiscount: index % 2 == 0 ? false : true,);
            },
        ),
      )
    );
  }
}
