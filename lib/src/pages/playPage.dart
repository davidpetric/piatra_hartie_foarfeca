import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../routes/routes.dart';

class PlayPage extends StatefulWidget {
  const PlayPage({super.key});

  @override
  State<PlayPage> createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  @override
  Widget build(BuildContext context) {
    const double sizedBoxHeight = 30;

    final textFieldBoxDecoration = BoxDecoration(
      color: const Color(0xFFF5F5F5),
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.6),
          spreadRadius: 0.33,
          blurRadius: 0.1,
          offset: const Offset(0, 1),
        ),
      ],
    );

    const labelTextStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
    );

    const textFieldStyle = TextStyle(fontSize: 24, fontWeight: FontWeight.w500);

    final codAccessController = TextEditingController(text: 't-e-s-t');

    @override
    void dispose() {
      codAccessController.dispose();
      super.dispose();
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => {
            GoRouter.of(context).go(Routes.Start),
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 90),
            const Text(
              'Nume server',
              style: labelTextStyle,
            ),
            Container(
              decoration: textFieldBoxDecoration,
              child: const TextField(
                key: Key('nume_server_textField'),
                decoration: InputDecoration(border: InputBorder.none),
                textAlign: TextAlign.center,
                style: textFieldStyle,
              ),
            ),
            const SizedBox(
              height: sizedBoxHeight,
            ),
            const Text('Numele tău', style: labelTextStyle),
            Container(
              decoration: textFieldBoxDecoration,
              child: const TextField(
                decoration: InputDecoration(border: InputBorder.none),
                textAlign: TextAlign.center,
                style: textFieldStyle,
              ),
            ),
            const SizedBox(
              height: sizedBoxHeight,
            ),
            const Text('Cod de access', style: labelTextStyle),
            Container(
              decoration: textFieldBoxDecoration,
              child: const TextField(
                decoration: InputDecoration(border: InputBorder.none),
                textAlign: TextAlign.center,
                style: textFieldStyle,
              ),
            ),
            const SizedBox(height: 100),
            const Text(
              'Cod invalid sau jocul a fost anulat.',
              style: TextStyle(
                fontSize: 22,
                color: Colors.red,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 100),
            ElevatedButton(
              onPressed: () => {
                GoRouter.of(context).go(Routes.Game),
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size.fromHeight(50.0),
                backgroundColor: const Color(0xFF26DE64),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                textStyle:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              child: const Text('Bun, Dă drumu la joc'),
            ),
          ],
        ),
      ),
    );
  }
}
