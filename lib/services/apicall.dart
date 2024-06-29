import 'package:flutter_exam/model/productmodel.dart';
import 'package:http/http.dart'as http;

class HttpCall{
  static Future<List<ProductModel>> getProducts() async{
    http.Response res= await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if(res.statusCode==200){
      var data=res.body;
      return productModelFromJson(data);
    }
    else{
      throw Exception();
    }
  }
}