import 'package:flutter/material.dart';
import 'package:sssss/web/apiservice.dart';

import '../model/Products.dart';

class Dataprovider with ChangeNotifier{
  List<Products>?mylist=[];
  bool isloading=false;
  ApiService apiService=ApiService();

  Future<void> getdata() async {
    changeloading();
    mylist=await apiService.fetchdata();
    notifyListeners();
    changeloading();
  }
  void changeloading(){
    isloading=!isloading;
    notifyListeners();
  }
}