// import 'package:capstone_s6/app/data/Service.dart';
// import 'package:capstone_s6/app/data/model/movie.dart';
import 'package:capstone_s6/utils/api.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HistoryController extends GetxController {
 RxList<dynamic> dataList = <dynamic>[].obs;

  Future<void> fetchData() async {
    try {
      final response = await http.get(Uri.parse(
        // API.baseUrl + API.historyEndPoint.history
        "https://dummyjson.com/todos"
        ));
      if (response.statusCode == 200) {
        dataList.value = jsonDecode(response.body);
        print(dataList.value = jsonDecode(response.body));
      } else {
        // Handle error
        print('Failed to fetch data');
      }
    } catch (e) {
      // Handle exception
      print('Exception occurred: $e');
    }
  }
  }
//    var isLoading = true.obs;
//   var todoList = List<Todo>().obs;

//   @override
//   void onInit() {
//     fetchfinaltodo();
//     super.onInit();
//   }

//   void fetchfinaltodo() async {
//     isLoading(true);
//     try {
//       var todos = await Dataservices.getTodo();
//       if (todos != null) {
//         todoList.value = todos;
//       }
//     } finally {
//       isLoading(false);
//     }
//   }
