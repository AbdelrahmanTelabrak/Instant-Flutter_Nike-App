# Icons

```
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('flutter'),),
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
          height: 600,
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Icon(Icons.account_circle, color: Colors.blue, size: 40,),
              IconButton(
                onPressed: () { 
                  print('this is icon');
                },
                // iconSize: 100, if you use IconButton, should use icon size to solve problem of not clickable icon on all area.
                icon: Icon(Icons.account_circle, color: Colors.red, size: 100,), 
              ),
            ],
          )
        ),
      ),
    );
  }
  
}
```