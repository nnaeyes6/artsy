import 'package:flutter/material.dart';


class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Text('Splash screen', style: Theme.of(context).textTheme.headline4,),
      ),
    );
  }
}
