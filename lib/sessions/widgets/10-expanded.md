# Expanded

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
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.red,
                )
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.blue,
                )
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                )
              ),
            ],
          )
        ),
      ),
    );
  }
  
}
```

## Stacked

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
          child: Stack(
            alignment: Alignment.bottomRight,
            clipBehavior: Clip.none,
            children: [
              Positioned(
                width: 200,
                height: 200,
                child: Container(
                  color: Colors.red,
                ),
                bottom: -50,
                left: 0,
              ),
              Positioned(
                width: 150,
                height: 150,
                child: Container(
                  color: Colors.blue,
                )
              ),
              Positioned(
                width: 100,
                height: 100,
                child: Container(
                  color: Colors.green,
                )
              ),
            ],
          )
        ),
      ),
    );
  }
  
}
```