```
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // ************* Floating Button
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          // ignore: avoid_print
          onPressed: () => print('floating button'),
          child: const Icon(Icons.person),
        ),
        appBar: AppBar(title: const Text('flutter'),),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xffE6F0FA),
                  border: Border.all(color: Colors.black38, width: 2)
                ),
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                child: Text(
                  'title of card', 
                  textAlign: TextAlign.center, 
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                    fontSize: 20
                  )
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xffE6F0FA),
                  border: Border.all(color: Colors.black38, width: 2)
                ),
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                child: Text(
                  'To create a row or column in Flutter, you add a list of children widgets to a Row or Column widget. In turn, each child can itself be a row or column, and so on. The following example shows how it is possible to nest rows or columns inside of rows or columns.', 
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 16,
                  )
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xffE6F0FA),
                  border: Border.all(color: Colors.black38, width: 2)
                ),
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.star, size: 20,),
                        Icon(Icons.star, size: 20,),
                        Icon(Icons.star, size: 20,),
                        Icon(Icons.star, size: 20,),
                        Icon(Icons.star, size: 20,),
                      ],
                    ),
                    Text('170 reviews', style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 16,
                  ))
                  ],
                )
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xffE6F0FA),
                  border: Border.all(color: Colors.black38, width: 2)
                ),
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.propane_tank_rounded, size: 20, color: Colors.green,),
                        Text('prep:', 
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          )
                        ),
                        Container(height: 8,),
                        Text('25 min', 
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 16,
                          )
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.timer, size: 20, color: Colors.green,),
                        Text('cook:', 
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          )
                        ),
                        Container(height: 8,),
                        Text('1 hr', 
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 16,
                          )
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.dining, size: 20, color: Colors.green,),
                        Text('feeds:', 
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          )
                        ),
                        Container(height: 8,),
                        Text('4 - 6', 
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 16,
                          )
                        ),
                      ],
                    ),
                    
                  ],
                )
              ),
            // ****************** Material button
            MaterialButton(
              color: Colors.red[400],
              textColor: Colors.white,
              // ignore: avoid_print
              onPressed: () => print('material button'),
              child: const Text('material button'),
            ),
            
            // ***************** Icon Button
            IconButton(
              // ignore: avoid_print
              onPressed: () => print('Icon Button'), 
              icon: const Icon(Icons.person),
              color: Colors.blue[400],
              iconSize: 40,
            )
            ],
          ),
        ),
      ),
    );
  }
  
}
```