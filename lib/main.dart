import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.green[900]),
        home: const Scaffold(
            appBar: CustomAppBar(),
            body: Center(
              child: Text("center home"),
            ),
            bottomNavigationBar: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38, spreadRadius: 0, blurRadius: 10),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                  child: BottomNavBar(),
                ))));
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
            backgroundColor: Colors.blue),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "favourite",
            backgroundColor: Colors.blue),
        BottomNavigationBarItem(icon: Icon(Icons.language), label: "Near By"),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications), label: "Notifications")
      ],
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
      backgroundColor: Colors.teal[900],
      leading: const Icon(Icons.menu, size: 36),
      title: const Center(
          child: Icon(
        Icons.room,
        size: 36,
      )),
      actions: const [
        IconButton(
            onPressed: null,
            icon: Icon(Icons.search, color: Colors.white, size: 36))
      ],
    );
  }
}
