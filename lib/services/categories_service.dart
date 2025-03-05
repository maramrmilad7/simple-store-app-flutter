
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:storeapplication/helpers/api.dart';

import 'package:storeapplication/models/product_model.dart';

class CategoriesService {
   Future<List<ProductModel>> getCategoriesService({required String category_name}) async {
     List<dynamic> data = await ApiServices().get(url: 'https://fakestoreapi.com/products/category/$category_name');
  

    List<ProductModel> products = [];
    for (var product in data) {
      products.add(ProductModel.fromJson(product));
    }
    return products;    } 
   
  }

