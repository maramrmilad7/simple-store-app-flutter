import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:storeapplication/helpers/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCategoriesService() async {
    List<dynamic> data =await
        ApiServices().get(url: 'https://fakestoreapi.com/products/categories');
   
      return data;
    }
  }

