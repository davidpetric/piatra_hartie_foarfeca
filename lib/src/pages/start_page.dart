import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../routes/routes.dart';

class StartPage extends StatefulWidget {
  const StartPage({
    super.key,
  });

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: 'Piatră // Hârtie // Foarfecă',
          ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 100,
            ),
            const Text(
              'Ce vrei să faci?',
              style: TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 160,
                ),
                ElevatedButton(
                  onPressed: () => {
                    GoRouter.of(context).go(Routes.Host),
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size.fromHeight(50.0),
                    backgroundColor: const Color(0xFF269BDE),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  child: const Text('Vreau să țin un joc'),
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () => {
                    GoRouter.of(context).go(Routes.Play),
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size.fromHeight(50.0),
                    backgroundColor: const Color(0xFF7D26C2),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  child: const Text('Vreau să joc'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
