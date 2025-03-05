
import 'package:storeapplication/helpers/api.dart';

import 'package:storeapplication/models/product_model.dart';

class allProductsServices {
   Future<List<ProductModel>> getAllProductsServices() async {
   List<dynamic> data=await  ApiServices().get(url: 'https://fakestoreapi.com/products');
   
 
    List<ProductModel> products = [];
    for (var product in data) {
      products.add(ProductModel.fromJson(product));
    }
    return products;   
  }
}
