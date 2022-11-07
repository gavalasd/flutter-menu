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
      title: 'Menu App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
          child: Column(
            children: <Widget> [
              Image.asset('assets/images/PIZZA.jpg'),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Monday(title: 'Monday');
                  }));
                },
                child: const Text('Monday'),
              ),
              
              Image.asset('assets/images/BURRITOS.jpg'), 
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Tuesday(title: 'Tuesday');
                  }));
                },
                child: const Text('Tuesday'),
              ),
              
              Image.asset('assets/images/CHICKEN.jpg'),
              TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Wednesday(title: 'Wednesday');
                }));
              },
              child: const Text('Wednesday'),
            ),

            Image.asset('assets/images/LONG_PIG.jpg'),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Thursday(title: 'Thursday');
                }));
              },
              child: const Text('Thursday'),
            ),

            Image.asset('assets/images/BOODOG.jpg'),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Friday(title: 'Friday');
                }));
              },
              child: const Text('Friday'),
            ),
            ]
          ),
      ),
    );
  }
}

class Monday extends StatelessWidget {
  const Monday({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget> [
          Image.asset('assets/images/PIZZA.jpg'),
          const Text(
            'Pizza, served with breadsticks and milk.'
          ),
          TextButton(
            onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) {
               return const MyHomePage(title: 'MyHomePage');
             }));
            },
            child: const Text('Go Back'),
          ),
        ]
      ),
    );
  }
}

class Tuesday extends StatelessWidget {
  const Tuesday({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget> [
          Image.asset('assets/images/BURRITOS.jpg'),
          const Text(
            'Burritos, served with juice and salad.'
          ),
          TextButton(
            onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) {
               return const MyHomePage(title: 'MyHomePage');
             }));
            },
            child: const Text('Go Back'),
          ),
        ]
      ),
    );
  }
}

class Wednesday extends StatelessWidget {
  const Wednesday({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget> [
          Image.asset('assets/images/CHICKEN.jpg'),
          const Text(
            "A big bowl of chicken. Who knows what it's served with"
          ),
          TextButton(
            onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) {
               return const MyHomePage(title: 'MyHomePage');
             }));
            },
            child: const Text('Go Back'),
          ),
        ]
      ),
    );
  }
}

class Thursday extends StatelessWidget {
  const Thursday({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
      child: Column(
        children: <Widget> [
          Image.asset('assets/images/LONG_PIG.jpg'),
          const Text(
            "Long pig. The lunchladies won't tell us what it really is, but we have some suspicions."
          ),
          TextButton(
            onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) {
               return const MyHomePage(title: 'MyHomePage');
             }));
            },
            child: const Text('Go Back'),
          ),
        ]
      ),
      )
    );
  }
}

class Friday extends StatelessWidget {
  const Friday({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget> [
            Image.asset('assets/images/BOODOG.jpg'),
            const Text(
              'A delicious traditional Mongolian meal made by putting hot rocks inside the skin of either marmot or goat, your choice!'
            ),
            TextButton(
              onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const MyHomePage(title: 'MyHomePage');
              }));
              },
              child: const Text('Go Back'),
            ),
          ]
        ),
      )
    );
  }
}