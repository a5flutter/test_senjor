import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ui/start_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      // MultiBlocProvider(
      //   providers: [
      //     // BlocProvider(create: (context) => LoginBloc()),
      //   ],
      //   child: MaterialApp(
        MaterialApp(
            theme: ThemeData(),
            // routes: appRoutes,
            // initialRoute: Screens.launch
          home: StartScreen(),
        );
    // );
  }
}
