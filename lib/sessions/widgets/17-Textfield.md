```
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextFieldExample(),
    );
  }
}

class TextFieldExample extends StatefulWidget {
  @override
  _TextFieldExampleState createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {
  String? txt;
  String? txt2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('stateful widget')),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.number,
                maxLength: 11,
                decoration: const InputDecoration(
                  labelText: 'username label',
                  hintText: 'username',
                  hintStyle: TextStyle(
                    color: Colors.redAccent
                  ),
                  prefixIcon: Icon(Icons.person),
                  suffixIcon: Icon(Icons.person)
                ),
                onChanged: (value) => setState(() {
                  txt = 'changed value: $value';
                }),
                onSubmitted: (value) => setState(() {
                  txt2 = 'submitted value: $value';
                }),
              ),
              Text(txt != null?txt!: 'no text', style: const TextStyle(fontSize: 20),),
              Text(txt2 != null?txt2!: 'no text', style: const TextStyle(fontSize: 20),),
            ],
          ),
        ),
      ),
    );
  }
}
```

## TextFormField

```
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: UserListScreen(),
    );
  }
}

class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  List<String> users = [];
  GlobalKey<FormState> formstate = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
      ),
      body: Form(
        key: formstate,
        child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              //readOnly: true,
              //obscureText: true,
              autovalidateMode: AutovalidateMode.always,
              validator: (value) {
                if(value!.isEmpty) {
                  return 'this field is required';
                } else if (value!.length <= 5) {
                  return 'require up to 5 character';
                }
              },
              onSaved: (newValue) {
                setState(() {
                  users.add(newValue!);
                });
              },
              decoration: InputDecoration(
                labelText: 'Enter Username',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    if(formstate.currentState!.validate()) {
                      print( 'your data is valid');
                      formstate.currentState!.save();
                    } else {
                      print('not valid');
                    }
                  },
                ),
              ),
              controller: _controller,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.symmetric(vertical: 4.0),
                  color: Colors.blue[100],
                  child: Text(users[index]),
                );
              },
            ),
          ),
        ],
      ),
      ));
  }

  final TextEditingController _controller = TextEditingController();
}
```