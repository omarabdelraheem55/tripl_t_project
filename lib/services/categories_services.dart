import '../model/response.dart';
import 'package:http/http.dart' as http;

class CategriesServices {
  static Future<CategoriesModel> getCategories() async {
    var response = await http.get(
      Uri.parse('http://alcaptin.com/api/places'),
      headers: {
        "Accept": "application/json",
        "Authorization":
        "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9hbGNhcHRpbi5jb21cL2FwaVwvbG9naW4iLCJpYXQiOjE2NjM1ODUwMjUsIm5iZiI6MTY2MzU4NTAyNSwianRpIjoiNFY5SFRjSnVaeHlWajVNdyIsInN1YiI6MTgsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.Cauf3ZW1DhUgRJ8cCVeNcS57FDO1BQih6edqvf4C3U0"
      },
    );
    if (response.statusCode == 200) {
      var responseBody = response.body;
      print('----------------------');
      print(responseBody);
      return categoriesModelFromJson(responseBody);
    } else {
      return throw Exception('Data not loaded');
    }
  }
}
