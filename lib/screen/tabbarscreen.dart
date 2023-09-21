import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'notification.dart';
import 'views/homepages/product.dart';
import 'views/homepages/userscreen.dart';
import 'views/login/loginscreen.dart';

class TabbarScrren extends StatelessWidget {
  const TabbarScrren({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: const customDrawer(),
        appBar: AppBar(
          actions: [
            InkWell(
                onTap: () {
                  Get.to(const NotificatonScrren());
                },
                child: const Icon(
                  Icons.notifications,
                  color: Colors.red,
                ))
          ],
          centerTitle: true,
          title: const Text("Fack API"),
          bottom: const TabBar(
            indicatorColor: Colors.amber,
            unselectedLabelColor: Colors.white,
            labelColor: Colors.red,
            // splashBorderRadius: BorderRadius.all(

            //   Radius.circular(5)),
            indicatorPadding:
                EdgeInsets.only(bottom: 5.0, left: 8.0, right: 8.0),
            //dividerColor: Colors.pink,
            labelStyle: TextStyle(
              fontSize: 18,
            ),
            indicator: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            tabs: [
              Tab(
                text: 'User',
              ),
              Tab(
                text: 'Service',
              ),
              Tab(
                text: 'Product',
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          UserScreen(),
          UserScreen(),
          const Produtscreen(),
        ]),
      ),
    );
  }
}

class customDrawer extends StatelessWidget {
  const customDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // backgroundColor:ColorScheme.light(primary: Color),
      child: ListView(
        children: [
          const Center(
            child: CircleAvatar(
              radius: 20,
            ),
          ),
          const ListTile(
            leading: Text("Name"),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 8.0),
            child: InkWell(
              onTap: () => Get.to(LoginScreen()),
              child: const ListTile(
                leading: Text("SIGN IN"),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(const LoginScreen());
            },
            child: const ListTile(
              leading: Text("SIGN OUT"),
            ),
          ),
        ],
      ),
    );
  }
}
