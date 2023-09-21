import 'dart:convert';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:http/http.dart' as http;

class Usercontroller extends GetxController {
  Future GetUser() async {
    final userUrl = Uri.parse("https://jsonplaceholder.typicode.com/users");
    final response = await http.get(userUrl);
    print(response.body);
    print(response.statusCode);
    return jsonDecode(response.body);
  }
}
