import 'package:flutter/material.dart';
import 'package:pagination_example/repository/home_repository.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final myRepo = HomeRepository();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Herlian'),
      ),
      body: FutureBuilder(future: myRepo.fetchList(1), builder: (context, snapshot) {
        if (snapshot.hasData) {
          print('Masuk apk eko ${snapshot.data}');
        }

        return Text('');
      },),
    );
  }
}