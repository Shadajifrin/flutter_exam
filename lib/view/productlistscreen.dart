import 'package:flutter/material.dart';
import 'package:flutter_exam/controller/productcontroller.dart';
import 'package:flutter_exam/widget/producttile.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProductHome extends StatelessWidget {
  final Productcontroller productcontroller = Get.put(Productcontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body:
       SizedBox(
        child: Obx(() {
          if (productcontroller.isLoading.value) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return StaggeredGrid.count(
              crossAxisCount: 6,
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
              children: productcontroller.productlist.map((product) {
                return StaggeredGridTile.fit(
                  crossAxisCellCount: 2,
                  child: ProductTiles(product),
                );
              }).toList(),
            );
          }
        }),
      ),
    );
  }
}
