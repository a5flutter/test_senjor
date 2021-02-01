import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/bloc/short_link_bloc.dart';
import 'package:test_app/screens/bottom_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers:
    [
      BlocProvider(create: (context) => ShortLinkBloc()),
    ],
        child: MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MyHomePage(),
        )
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 @override
  void initState() {
    BlocProvider.of<ShortLinkBloc>(context).add(GetShortLink('example.org/very/long/link.html'));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomWidget()
    );
  }
}
