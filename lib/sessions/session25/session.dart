void main() async {
  String data = await getAsyncData();
  print('Sync Data inside main');
}

Future<String> getAsyncData() async {
  String data = await Future.delayed(Duration(seconds: 3), () {
    print('Async data outside main');
    return 'Async data outside main';
  },);
  return data;
}