import 'package:artsy/utils/app-route/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      
      
            routerConfig: router,
      title: 'Artsy',
      builder: (context, child) => ResponsiveWrapper.builder(
        
        child,
        maxWidth: 1200,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          //this is the breakpoint of the responsiveness
          const ResponsiveBreakpoint.resize(480, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
        background: Container(
          color: const Color(0xFF0D0D2B),
        ),
      ),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            color: Theme.of(context).colorScheme.copyWith().onBackground,
            elevation: 0),
        scaffoldBackgroundColor:
            Theme.of(context).colorScheme.copyWith().onBackground,
        // brightness: Brightness.dark,
        visualDensity: const VisualDensity(horizontal: 2.0, vertical: 2.0),
        primaryColorLight:
            Theme.of(context).colorScheme.copyWith().onBackground,
        primaryColorDark: Colors.black,

        
      ),
      
    

    );
    
  }
  
}
