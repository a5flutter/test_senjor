import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/bloc/short_link_bloc.dart';
import 'package:test_app/http/http_errors.dart';

import '../bottom_widget/bottom_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ShortLinkBloc>(context)
        .add(GetShortLink('example.org/very/long/link.html'));
    return Scaffold(
        body: StreamBuilder<String>(
            stream: errorStreamController.stream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text(snapshot.data)));
                });
              }
              return BottomWidget();
            }));
    //});
  }
}
