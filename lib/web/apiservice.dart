import 'dart:convert';

import 'package:sssss/model/RespMain.dart';

import '../model/Products.dart';
import 'package:http/http.dart' as http;
class ApiService{
  Future<List<Products>?>fetchdata() async {
    var response=await http.get(Uri.parse(("https://dummyjson.com/products")));
    var data=jsonDecode(response.body.toString());
    var main=RespMain.fromJson(data);
    var list=main.products;
    return list;
  }
}