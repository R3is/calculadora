import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora IMC',
      theme: ThemeData(

        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'Calculadora IMC- Camila'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends   State<MyHomePage>{


TextEditingController peso = TextEditingController();
String CalculoFinal = '';
TextEditingController altura = TextEditingController();

}
  void _incrementCounter() => setState(() {
    CalculoFinal= '';
    });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            TextFormField(
              controller: peso,
              decoration: InputDecoration(
                    hintText: 'Qual o seu peso ?',
                  border:OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16.0))
                  ))



    ),

          TextFormField(
            controller: altura,
              decoration: InputDecoration(
                  hintText: 'Qual a sua altura ?',
                  border:OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16.0))
                  ))
          ),
            Text(CalculoFinal, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    num aux = (num.parse(peso) / num.parse(altura))*num.parse(altura);

                    CalculoFinal= aux.toStringAsFixed(2);
                  });
                },

                child: const Text('Calcular IMC', style: const TextStyle(fontSize: 18),)

            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:
        tooltip: CalculoFinal "",
        child: const Icon(Icons.mail),
      ), // This trailing comma ma
      // kes auto-formatting nicer for build methods.
    );
  }
}
