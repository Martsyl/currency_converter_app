import 'package:flutter/cupertino.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.activeBlue,
      navigationBar: CupertinoNavigationBar(
        middle: const Text(
          'Currency Converter',
          style: TextStyle(color: CupertinoColors.white),
        ),
        backgroundColor: CupertinoColors.activeBlue,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '# ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}',
              style: const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 91, 91, 179),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: CupertinoTextField(
                controller: textEditingController,
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                style: const TextStyle(color: CupertinoColors.black),
                placeholder: 'Please enter the amount',
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: CupertinoColors.black, width: 2),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoButton.filled(
                onPressed: () {
                  setState(() {
                    result =
                        double.tryParse(textEditingController.text) ?? 0 * 1450;
                  });
                },
                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
