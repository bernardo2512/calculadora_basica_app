
import 'package:flutter/material.dart';

class AulaDoisRobson extends StatefulWidget {
  const AulaDoisRobson({super.key});

  @override
  State<AulaDoisRobson> createState() => _AulaDoisRobsonState();
}

class _AulaDoisRobsonState extends State<AulaDoisRobson> {
  double resultado = 0;
  TextEditingController inputUmController = TextEditingController();
  TextEditingController inputDoisController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemplo 2 - App Inventor'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Resultado : $resultado"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: inputUmController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Valor um',
                  fillColor: Colors.white70,
                  filled: true),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: inputDoisController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Valor dois',
                  fillColor: Colors.white70,
                  filled: true),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        resultado = double.parse(inputUmController.text) +
                            double.parse(inputDoisController.text);
                      });
                    },
                    child: const Icon(Icons.add)),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        resultado = double.parse(inputUmController.text) -
                            double.parse(inputDoisController.text);
                      });
                    },
                    child: const Icon(Icons.remove)),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        resultado = double.parse(inputUmController.text) *
                            double.parse(inputDoisController.text);
                      });
                    },
                    child: const Text("*")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        resultado = double.parse(inputUmController.text) /
                            double.parse(inputDoisController.text);
                      });
                    },
                    child: const Text("/")),
              ],
            ),
          ),
          SizedBox(
            width: 300,
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    resultado = 0;
                    inputUmController.clear();
                    inputDoisController.clear();
                  });
                },
                child: const Icon(Icons.delete_forever)),
          ),
        ],
      ),
    );
  }
}
