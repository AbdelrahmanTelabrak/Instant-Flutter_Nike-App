# Card

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
          child: Card(
            //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            //elevation: 0,
            child: ListTile(
              //isThreeLine: true,
              //enabled: false,
              leading: Text('1'),
              title: Text('title'),
              subtitle: Text('description'),
              trailing: Text('extra data'),
              onTap: () {
                print('tap on card');
              },
              onLongPress: () {
                print('longTap on card');
              },
          ),
          )
        ),
      ),
    );
  }
  
}
```