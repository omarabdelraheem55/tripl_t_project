import 'package:flutter/material.dart';
import '../model/response.dart';
import '../services/categories_services.dart';

class NewTourProvider extends ChangeNotifier {
  bool isLoading = false;
  List<Datum> ListOfCategories = [];

  Future<List<Datum>> getCategories() async {
    isLoading = true;
    var categories = await CategriesServices.getCategories();
    try {
      if (ListOfCategories.isEmpty) {
        ListOfCategories.addAll(categories.data.data);
        print('--------------------------------');
        print(ListOfCategories.first.name);
        return categories.data.data;
      } else {
        return categories.data.data;
      }
    } finally {
      isLoading = false;
    }
  }
}
