import 'package:daryo/drawer/drawer.dart';
import 'package:daryo/screens/latest_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Daryo"),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
            Tab(child: Text("SO'NGI YANGILIKLAR")),
            Tab(child: Text("ASOSIY YANGILIKLAR")),
            Tab(child: Text("ENG KO'P")),
          ]),
        ),
        body: TabBarView(children: [
          const LatestPage(),
          Container(color: Colors.yellow,),
          Container(color: Colors.grey,),
        ]),
        drawer: const MyDrawer(),
      ),
    );
  }
}