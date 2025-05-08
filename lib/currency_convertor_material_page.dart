import 'package:flutter/material.dart';

class CurrencyConvertMaterialPage extends StatelessWidget {
  const CurrencyConvertMaterialPage({super.key});

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
      body: Center(
        child: ColoredBox(
          color: const Color.fromRGBO(66, 124, 121, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Helo world',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(92, 115, 190, 1),
                ),
              ),
              TextField(
                style: const TextStyle(
                  color: Color.fromRGBO(2, 2, 2, 1),
                ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
