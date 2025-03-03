import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:storeapplication/models/product_model.dart';

class allProductsServices {
   Future<List<ProductModel>> getAllProductsServices() async {
    http.Response response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
 if(response.statusCode == 200) {

    List<dynamic> data = jsonDecode(response.body);
    List<ProductModel> products = [];
    for (var product in data) {
      products.add(ProductModel.fromJson(product));
    }
    return products;    } 
    else {
      throw Exception('Failed to load products from the internet, there is a problem with status code ${response.statusCode}');
    }
  }
}
