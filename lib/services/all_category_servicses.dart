
import 'package:store_app/helper/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCateogires() async {
    
 List<dynamic> data =await Api().get(urlBase: 'https://fakestoreapi.com/products/categories');
  
  return data;

  }
}