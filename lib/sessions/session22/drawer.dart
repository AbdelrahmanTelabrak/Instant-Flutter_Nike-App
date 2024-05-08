import 'package:flutter/material.dart';
import 'package:flutter_instant/widgets/texts.dart';

class DrawerExample extends StatefulWidget {
  const DrawerExample({super.key});

  @override
  State<DrawerExample> createState() => _DrawerExampleState();
}

class _DrawerExampleState extends State<DrawerExample> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  int _botIndex = 0;

  List<Widget> widgetsList = [
    Center(child: boldText('Laptops')),
    Center(child: boldText('Monitors')),
  ];

  @override
  Widget build(BuildContext context) {
    // To access the drawer you need to a key of Scaffold
    return DefaultTabController(
      // initialIndex: 1,
      length: 2,
      child: Scaffold(
        key: scaffoldKey,
        drawer: Drawer(
          width: MediaQuery.of(context).size.width/1.5,
          child: ListView(
            children: [
              boldText('Drawer'),
              ListTile(
                title: mediumText('home'),
              ),
            ],
          ),
        ),
        endDrawer: Drawer(
          width: MediaQuery.of(context).size.width/1.5,
          child: ListView(
            children: [
              boldText('End Drawer'),
              ListTile(
                title: mediumText('home'),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            scaffoldKey.currentState!.openEndDrawer();
          },
        ),
        appBar: AppBar(
          title: boldText('Session 22'),
          bottom: const TabBar(
            indicatorColor: Colors.blue,
            indicatorWeight: 10,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.red,
            tabs: [
              Tab(child: Text('Laptops')),
              Tab(child: Text('Monitors')),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _botIndex,
          onTap: (value) {
            setState(() {
              _botIndex = value;
            });
          },
          backgroundColor: Colors.green,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.blue,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Laptops', activeIcon: Icon(Icons.ac_unit)),
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Monitors', activeIcon: Icon(Icons.access_alarm_sharp)),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                children: [
                  Center(child: boldText('Laptops')),
                  Center(child: boldText('Monitors')),
                ],
              ),
            ),
            Divider(),
            Expanded(
              child: widgetsList[_botIndex],
            ),
          ],
        ),
      ),
    );
  }
}
