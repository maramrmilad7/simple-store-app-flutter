
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:storeapplication/models/product_model.dart';

class CategoriesService {
   Future<List<ProductModel>> getCategoriesService({required String category_name}) async {
    http.Response response =
        await http.get(Uri.parse('https://fakestoreapi.com/products/category/$category_name'));
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
