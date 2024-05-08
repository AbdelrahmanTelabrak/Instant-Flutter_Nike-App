```
class MyApp extends StatelessWidget {
  MyApp({super.key});

  int indx = 0;
  List<Widget> listWidgits = [
    Text('page home'),
    Text('page setting'),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        initialIndex: 1,
        length: 2,
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: indx,
            onTap: (val) {
              // use setState
            },
            backgroundColor: Colors.blue,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'setting'),
            ],
          ),
          appBar: AppBar(title: Text('flutter'), bottom: TabBar(
            indicatorColor: Colors.blue,
            indicatorWeight: 10,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.red,
            tabs: [
            Tab(child: Text('laptop'),),
            Tab(child: Text('pc'),),
          ]),
          ),
          body: Container(
            child: listWidgits.elementAt(indx), // need statefull
          ),
        ),
      ) 
    );
  }
  
}
```