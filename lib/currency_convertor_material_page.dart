import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConvertorMaterialPage extends StatefulWidget {
  const CurrencyConvertorMaterialPage({super.key});

  @override
  State<CurrencyConvertorMaterialPage> createState() =>
      _CurrencyConvertorMaterialPageState();
}

class _CurrencyConvertorMaterialPageState
    extends State<CurrencyConvertorMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromARGB(255, 0, 0, 0),
        width: 2.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
      borderRadius: const BorderRadius.all(Radius.circular(40)),
    );

    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 147, 244, 239),
        elevation: 0,
        title: const Text('Currency Convertor'),
        centerTitle: true,
      ),
      body: Center(
        child: ColoredBox(
          color: const Color.fromARGB(255, 147, 244, 239),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                result.toString(),
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(92, 115, 190, 1),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: textEditingController,
                  style: const TextStyle(color: Color.fromRGBO(2, 2, 2, 1)),
                  decoration: InputDecoration(
                    hintText: 'Please enter the amount in USD',
                    hintStyle: const TextStyle(
                      color: Color.fromRGBO(2, 2, 2, 1),
                    ),
                    prefixIcon: const Icon(Icons.monetization_on),
                    prefixIconColor: const Color.fromRGBO(0, 0, 0, 1),
                    filled: true,
                    fillColor: const Color.fromRGBO(255, 255, 255, 1),
                    enabledBorder: border,
                    focusedBorder: border,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = double.parse(textEditingController.text) * 81;
                    });
                    if (kDebugMode) {
                      print(textEditingController.text);
                      print(double.parse(textEditingController.text) * 81);
                      print('Button clicked');
                    }
                  },
                  style: const ButtonStyle(
                    elevation: WidgetStatePropertyAll(15),
                    backgroundColor: WidgetStatePropertyAll(Colors.black),
                    foregroundColor: WidgetStatePropertyAll(Colors.white),
                    minimumSize: WidgetStatePropertyAll(
                      Size(double.infinity, 50),
                    ),
                  ),
                  child: const Text('Convert'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

