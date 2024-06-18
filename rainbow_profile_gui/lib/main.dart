import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // also uses the brightness from the environment.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
            .copyWith(brightness: mediaQuery.platformBrightness),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Welcome to Rainbow Linux!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Welcome to Rainbow Linux!",
                  style: Theme.of(context).textTheme.headlineMedium),
            ),
            Column(
              // left menu bar
              // contains steps to configure the system
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // step 1 is a greeting card
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("Step 1: Welcome to Rainbow Linux!",
                            style: Theme.of(context).textTheme.headlineMedium),
                        Text(
                            "Rainbow Linux is a new operating system that is designed to be easy to use and beautiful to look at. It is based on the Linux kernel and uses the Flutter framework for its user interface. In this guide, we will walk you through the steps to configure your system and get started using Rainbow Linux.",
                            style: Theme.of(context).textTheme.bodyMedium),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
