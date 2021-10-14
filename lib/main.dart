import 'package:flutter/material.dart';
import 'widgets/bottom_nav.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.teal[900]),
      home: const Scaffold(
          drawer: Drawer(),
          appBar: CustomAppBar(),
          body: Center(
            child: Text("center home"),
          ),
          bottomNavigationBar: BottomNavBar()),
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
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
      ),
      backgroundColor: Colors.teal[900],
      leading: IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(Icons.menu, size: 36)),
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
