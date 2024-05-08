# Grid view

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
          child: GridView.builder( 
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, 
              mainAxisSpacing: 10, 
              crossAxisSpacing: 10,
              childAspectRatio: 2.5, // has not effect if mainAxisExtent exists
              mainAxisExtent: 200
            ),
            itemCount: 10,
            itemBuilder: (context, i) {
              return Container(
                color: i.isEven? Colors.red : Colors.blue,
              );
            }),
        ),
      ),
    );
  }
  
}
```

# With children && Without builder

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
          child: GridView( 
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, 
              mainAxisSpacing: 10, 
              crossAxisSpacing: 10,
              childAspectRatio: 2.5, // has not effect if mainAxisExtent exists
              mainAxisExtent: 200
            ),
            children: [
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
  
}
```