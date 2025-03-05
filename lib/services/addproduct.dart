import 'package:storeapplication/helpers/api.dart';
import 'package:storeapplication/models/product_model.dart';

class AddProductService {
  Future<ProductModel> addProductService(
      {required String title,
      required String price,
      required String description,
      required String category,
      required String image}) async {
    Map<String, dynamic> data = await ApiServices()
        .post(url: 'https://fakestoreapi.com/products', body: {
      "title": title,
      "price": price,
      "description": description,
      "category": category,
      "image": image
    });
    return ProductModel.fromJson(data);
  }
}