import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/bloc/short_link_bloc.dart';
import 'package:test_app/http/http_errors.dart';
import 'package:test_app/theme/text_style.dart';
import 'package:test_app/ui/header_wiget/header_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ShortLinkBloc>(context)
        .add(GetShortLink('example.org/very/long/link.html'));
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Where in the world?', style: black16Nunito_Sans600,),
        actions : [
          Icon(Icons.wb_sunny, color: Colors.black, size: 20,),
          SizedBox(width: 5),
          Center(child: Text('Dark Mode', style: black14Nunito_Sans300,)),
          SizedBox(width: 15)
        ]
      ),

        body: StreamBuilder<String>(
            stream: errorStreamController.stream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text(snapshot.data)));
                });
              }
              return HeaderWidget();
            }));
    //});
  }
}
