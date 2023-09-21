import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../widgets/stylescreen.dart';

class UserScreen extends StatelessWidget {
  UserScreen({super.key});

  Future getuser() async {
    final userUrl = Uri.parse("https://jsonplaceholder.typicode.com/users");
    final response = await http.get(userUrl);
    print(response.body);
    print(response.statusCode);
    return jsonDecode(response.body);
  }

  var sizebox = const SizedBox(
    height: 8,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: getuser(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          //  height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(width: 1, color: Colors.teal)),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                    child: Text(
                                        snapshot.data[index]["id"].toString())),
                                Text(
                                  "Name : ${snapshot.data[index]['name']}",
                                  style: bodytextstyle,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Email : ${snapshot.data[index]['email']}",
                                  style: bodytextstyle,
                                ),
                                sizebox,
                                Text(
                                  "Phone : ${snapshot.data[index]['phone']}",
                                  style: bodytextstyle,
                                ),
                                sizebox,
                                Text(
                                  "Website : ${snapshot.data[index]['website']}",
                                  style: bodytextstyle,
                                ),
                                sizebox,
                                Text(
                                  "Company : ${snapshot.data[index]['company']["name"]}",
                                  style: bodytextstyle,
                                ),
                                sizebox,
                                // Text(
                                //       "Address : ${}",
                                //       style: bodytextstyle,
                                //     ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Address :",
                                      style: TextStyle(
                                          color: Colors.teal,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    // TextButton(
                                    //     onPressed: () {
                                    //       Get.defaultDialog(
                                    //           title: "Address",
                                    //           middleText: "hdd");
                                    //     },
                                    //     child: Text(
                                    //       "View",
                                    //       style:
                                    //           TextStyle(color: Colors.purple),
                                    //     )),
                                  ],
                                ),
                                Text(
                                  "City : ${snapshot.data[index]['address']["city"]}",
                                  style: bodytextstyle,
                                ),
                                Text(
                                  "Street : ${snapshot.data[index]['address']["street"]}",
                                  style: bodytextstyle,
                                ),

                                Text(
                                  "Zipcode : ${snapshot.data[index]['address']["zipcode"]}",
                                  style: bodytextstyle,
                                ),
                                const Text(
                                  "Geo : ",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "lat : ${snapshot.data[index]['address']["geo"]["lat"]}",
                                      style: bodytextstyle,
                                    ),
                                    Text(
                                      "lan : ${snapshot.data[index]['address']["geo"]["lng"]}",
                                      style: bodytextstyle,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              );
            }
            return const Center(child: CircularProgressIndicator());
          }),
    );
  }
}
