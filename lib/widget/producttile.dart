import 'package:flutter/material.dart';
import 'package:flutter_exam/model/productmodel.dart';

class ProductTiles extends StatelessWidget {
  final ProductModel product;

  ProductTiles(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              product.image!,
              height: 100,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 8),
            Text(
              product.title!,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8),
            Text("\$${product.price}"),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow, size: 20),
                SizedBox(width: 4),
                Text("${product.rating?.rate} (${product.rating?.count})"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
