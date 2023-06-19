import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../routes/routes.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(
          color: Colors.red,
          title: 'Stop',
          child: IconButton(
            onPressed: () => {
              GoRouter.of(context).go(Routes.Start),
            },
            icon: const Icon(Icons.cancel_outlined),
            iconSize: 35,
            color: Colors.red,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jucător 1',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        Text('David'),
                        Text('Scor:'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jucător 2',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        Text('Petric'),
                        Text('Scor:'),
                      ],
                    ),
                  ],
                ),
                Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        onPressed: () => {},
                        icon: Image.asset(
                          'assets/images/piatra.png',
                          width: 100,
                        ),
                        style: ElevatedButton.styleFrom(
                          shadowColor: Colors.blue[400],
                          elevation: 20,
                        ),
                      ),
                      IconButton(
                        onPressed: () => {},
                        icon: Image.asset(
                          'assets/images/hartie.png',
                          width: 100,
                        ),
                        style: ElevatedButton.styleFrom(
                          shadowColor: Colors.yellow[400],
                          elevation: 20,
                        ),
                      ),
                      IconButton(
                        onPressed: () => {},
                        icon: Image.asset(
                          'assets/images/foarfeca.png',
                          width: 100,
                        ),
                        style: ElevatedButton.styleFrom(
                          shadowColor: Colors.red[400],
                          elevation: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
