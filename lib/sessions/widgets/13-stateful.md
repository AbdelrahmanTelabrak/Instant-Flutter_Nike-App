```
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('stateful widget')),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              IconButton(onPressed:() => setState(() {
                  i++;
                }), icon: const Icon(Icons.add)
              ),
              Text('Counter $i'),
              IconButton(onPressed:() => setState(() {
                  i--;
                }), icon: const Icon(Icons.remove)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```