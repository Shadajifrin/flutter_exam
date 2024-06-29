import 'package:flutter_exam/services/apicall.dart';
import 'package:get/get.dart';

class Productcontroller extends GetxController{
  var isLoading=true.obs;
  var productlist=[].obs;
  @override
  void onInit(){
    readProducts();
    super.onInit();
  }
  
  void readProducts() async{
    try{
      isLoading(true);
      var products = await HttpCall.getProducts();
      if(products!= null){
        productlist.value=products;
      }
        }
        catch(e){
          print(e);
        }
        finally{
          isLoading(false);
        }
  }
}