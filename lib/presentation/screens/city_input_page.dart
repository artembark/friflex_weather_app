import 'package:flutter/material.dart';

class CityInputPage extends StatefulWidget {
  const CityInputPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CityInputPage> createState() => _CityInputPageState();
}

class _CityInputPageState extends State<CityInputPage> {
  final cityNameController = TextEditingController();

  @override
  void dispose() {
    cityNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Friflex Weather App'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Хочу узнать погоду в городе:',
              style: TextStyle(fontSize: 24.0),
            ),
            TextField(
              controller: cityNameController,
              keyboardType: TextInputType.text,
              textCapitalization: TextCapitalization.words,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),
            ),
            OutlinedButton(
                onPressed: () {
                  if (cityNameController.text != '') {
                    Navigator.pushNamed(context, '/current',
                        arguments: cityNameController.text);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Необходимо ввести название города')));
                  }
                },
                child: const Text('Покажи'))
          ],
        ),
      )),
    );
  }
}
