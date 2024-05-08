import 'package:flutter/material.dart';
import 'package:flutter_instant/sessions/session22/drawer.dart';
import 'package:flutter_instant/widgets/texts.dart';

class POPupExample extends StatelessWidget {
  const POPupExample({super.key});

  /*
  * Popup menu button :
  * 1. onSelected()
  * 2. onCancelled()
  * 3. onOpened()
  * 4. itemBuilder: [   PopUpMenuItem(child, value),  ]
  * */

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class SearchExample extends StatefulWidget {
  const SearchExample({super.key});

  @override
  State<SearchExample> createState() => _SearchExampleState();
}

class _SearchExampleState extends State<SearchExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search delegate'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => showSearch(
              //required:
              context: context,
              delegate: UsersSearch(),
            ),
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}

class UsersSearch extends SearchDelegate {
  List<String> users = [
    'mohammed',
    'ahmed',
    'yasser',
    'abdelrahman',
    'mostafa',
    'omar',
    'yahia',
    'nada',
    'tarek',
  ];

  //build the widgets/buttons that will be on the right of the search bar
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.close),
      ),
    ];
  }

  //build the widgets/buttons that will be on the left of the search bar
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  //could be just a normal text, or it could be a whole new scaffold(Activity)
  @override
  Widget buildResults(BuildContext context) {
    // return semiBoldText('Welcome $query');
    return DrawerExample();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return query.isEmpty
        ? customSuggest(users)
        : customSuggest(
            users.where((element) => element.startsWith(query)).toList());
  }

  Widget customSuggest(List<String> items) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          query = items[index];
          showResults(context);
        },
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: semiBoldText(items[index]),
          ),
        ),
      ),
    );
  }
}
