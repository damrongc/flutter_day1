import 'package:flutter/material.dart';

class TabDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tab bar demo"),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.ac_unit),
                ),
                Tab(
                  icon: Icon(Icons.add),
                ),
                Tab(
                  icon: Icon(Icons.battery_alert),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Icon(Icons.ac_unit),
              Icon(Icons.add),
              Icon(Icons.battery_alert),
            ],
          ),
        ),
      ),
    );
  }
}
