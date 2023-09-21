import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Produtscreen extends StatefulWidget {
  const Produtscreen({super.key});

  @override
  State<Produtscreen> createState() => _ProdutscreenState();
}

class _ProdutscreenState extends State<Produtscreen> {
  Future Getproduct() async {
    final userUrl = Uri.parse("https://fakestoreapi.com/products");
    final response = await http.get(userUrl);
    print(response.body);
    print(response.statusCode);
    return jsonDecode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: Getproduct(),
          builder: (context, snapshot) {
            return GridView.builder(
                itemCount: snapshot.data.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                ),
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(
                              snapshot.data[index]["image"],
                              // fit: BoxFit.none,
                              height: 150,
                              //height: double.infinity,
                              //width: 120,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(snapshot.data[index]["title"]),
                        // SizedBox(
                        //   height: 8,
                        // ),
                        // Text(snapshot.data[index]["price"]),
                        // Text("Discription")
                      ],
                    ),
                  );
                });
          }),
    );
  }
}
