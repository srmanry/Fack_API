import 'package:flutter/material.dart';

class NotificatonScrren extends StatelessWidget {
  const NotificatonScrren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Notification ",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (_, index) {
            return const Card(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20,
                ),
                title: Text(
                  "Notification  ",
                  style: TextStyle(fontSize: 18, color: Colors.green),
                ),
              ),
            );
          }),
    );
  }
}
