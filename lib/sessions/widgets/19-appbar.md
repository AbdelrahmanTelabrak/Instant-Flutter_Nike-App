```
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
          child: const Text('mohamed abouzaid', 
            style: TextStyle(
              color: Color(0xff0000ff), // Colors.colorName | Color.fromARGB()
              fontSize: 40.3,
              fontWeight: FontWeight.bold
            )
          ),
        ),
      ),
    );
  }
  
}
```