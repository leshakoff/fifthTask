import 'package:flutter/material.dart';
import 'package:flutter_application_1/generated/l10n.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).homeScreenTitle),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 6),
              child: Text(
                S.of(context).language,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black12,
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                    alignment: AlignmentDirectional.center,
                    value: Intl.getCurrentLocale(),
                    items: [
                      DropdownMenuItem(
                        alignment: AlignmentDirectional.center,
                        value: 'ru_RU',
                        child: Text(S.of(context).russian),
                      ),
                      DropdownMenuItem(
                        alignment: AlignmentDirectional.center,
                        value: 'en',
                        child: Text(S.of(context).english),
                      ),
                    ],
                    onChanged: (value) async {
                      if (value == 'ru_RU') {
                        await S.load(
                          const Locale('ru', 'RU'),
                        );
                        setState(() {});
                      } else if (value == 'en') {
                        await S.load(
                          const Locale('en'),
                        );
                        setState(() {});
                      }
                    },
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(S.of(context).counterValue),
                  Text('$_counter',
                      style: Theme.of(context).textTheme.headline4),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: _incrementCounter,
                      child: const Icon(Icons.add)),
                  ElevatedButton(
                      onPressed: _decrementCounter,
                      child: const Icon(Icons.remove)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
