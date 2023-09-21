import 'package:get/get.dart';
// import 'package:http/http.dart' as http;

class HomeRepo extends GetConnect {
  Future<Response> getUser() async {
    try {
      Response response =
          await get("https://jsonplaceholder.typicode.com/users");
      return response;
    } catch (e) {
      return const Response(
          statusCode: 1, statusText: 'Connect to api server faild');
    }
  }
}
