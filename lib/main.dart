import 'package:clash_of_clans/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clash of Clans Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        // Set the default font family to SupercellMagic
        fontFamily: 'SupercellMagic',
        colorScheme: ColorScheme.fromSeed(seedColor: baseThemeColor),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Clash of Clans'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /* int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Colors.white,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/banner.webp',
                // Set width to full width
                width: double.infinity,
                // Set height to 200
                height: 200,
                // Ensure the image covers the entire width
                fit: BoxFit.cover,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    children: [
                      CharacterCard(
                        // Add the Barbarian image URL in assets/images/barbarian.png
                        imageUrl: 'assets/images/barbarian.webp',
                        name: 'Barbarian',
                        bgColor: Colors.yellow.shade100,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const CharacterDetailsScreen(
                                name: 'Barbarian',
                                imageUrl: 'assets/images/barbarian.webp',
                              ),
                            ),
                          );
                        },
                      ),
                      CharacterCard(
                        imageUrl: 'assets/images/balloon.webp',
                        name: 'Balloon',
                        bgColor: Colors.red.shade100,
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const CharacterDetailsScreen(
                                name: 'Balloon',
                                imageUrl: 'assets/images/balloon.webp',
                              ),
                            ),
                          ),
                        },
                      ),
                      CharacterCard(
                        imageUrl:
                            'assets/images/baby-dragon.webp', // Add Baby Dragon image URL
                        name: 'Baby Dragon',
                        bgColor: Colors.green.shade100,
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const CharacterDetailsScreen(
                                name: 'Baby Dragon',
                                imageUrl: 'assets/images/baby-dragon.webp',
                              ),
                            ),
                          ),
                        },
                      ),
                      CharacterCard(
                        imageUrl:
                            'assets/images/dragon.webp', // Add Dragon image URL
                        name: 'Dragon',
                        bgColor: Colors.blue.shade100,
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const CharacterDetailsScreen(
                                name: 'Dragon',
                                imageUrl: 'assets/images/dragon.webp',
                              ),
                            ),
                          ),
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class CharacterCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final Color bgColor;
  final VoidCallback onTap; // Add a callback for navigation

  const CharacterCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.bgColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imageUrl,
            height: 80,
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class CharacterDetailsScreen extends StatelessWidget {
  final String name;
  final String imageUrl;

  const CharacterDetailsScreen({
    super.key,
    required this.name,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imageUrl,
              height: 200,
            ),
            const SizedBox(height: 16),
            Text(
              name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'This is detailed information about $name.',
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
