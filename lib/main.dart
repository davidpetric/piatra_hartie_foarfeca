import 'package:flutter/material.dart';
import 'package:piatra_hartie_foarfeca/src/routes/routes.dart';

void main() {
  runApp(const PiatraHartieFoarfeca());
}

class PiatraHartieFoarfeca extends StatelessWidget {
  const PiatraHartieFoarfeca({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Piatra // Hartie // Foarfeca',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
    );
  }
}
