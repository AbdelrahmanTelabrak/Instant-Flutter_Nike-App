```
class MyApp extends StatelessWidget {
  MyApp({super.key});

  GlobalKey<ScaffoldState> ScaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              Text('title'),
              ListTile(
                title: Text('home'),
                leading: Icon(Icons.home),
                onTap: (){},
              ),
            ],
          ),
        ),
        key: ScaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          titleTextStyle: TextStyle(
            fontSize: 25,
            color: Colors.blueAccent
          ),
          title: const Text('flutter'),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.list, color: Colors.blue,))
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blue[400]!,
              width: 2
            ),
            color: Colors.blueGrey[100]
          ),
          alignment: Alignment.center,
          width: 400,
          height: 400,
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.all(10),
          child: MaterialButton(onPressed: () {
            ScaffoldKey.currentState!.openDrawer();
          }, child: Text('open menu'),),
        ),
      ),
    );
  }
  
}
```