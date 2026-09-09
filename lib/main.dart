import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  String soma = '+', sub = '-', multi = '*', div = '/';

  TextEditingController valor1Controller = TextEditingController();
  TextEditingController valor2Controller = TextEditingController();





  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
           actions: [IconButton(onPressed: reiniciar, icon: Icon(Icons.refresh))],
          title: const Text(
            'Calculadora 🧮',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: valor1Controller,
                  decoration: InputDecoration(
                    labelText: 'Digite o primeiro numero',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: valor2Controller,
                  decoration: InputDecoration(
                    labelText: 'Digite o segundo numero',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90),
                    ),
                  ),
                ),
              ),
              Row(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 
                  ElevatedButton(onPressed: ()=>calcular(soma), child: Text('+')),
                  ElevatedButton(onPressed: ()=>calcular(sub), child: Text('-')),
                  ElevatedButton(onPressed: ()=>calcular(multi), child: Text('*')),
                  ElevatedButton(onPressed: ()=>calcular(div), child: Text('/')),
                ],
              ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text('Resultado: $resultado', 
                          style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 0, 0, 0)),),
            ),
            ],
          ),
        ),
      ),
    );
  }
   double resultado = 0; 

  void calcular(String sinal)
  {
   double valor1 = double.parse(valor1Controller.text);
   double valor2 = double.parse(valor2Controller.text);
   
 
    if(sinal == '+')
    {
     resultado = valor1 + valor2;
    }
    else if(sinal == '-')
    {
      resultado = valor1 - valor2;
    }
    else if(sinal == '*')
    {
      resultado = valor1 * valor2;
    }
    else 
    {
      resultado = valor1 / valor2;
    }
    setState(() {
      resultado;
    });
  }

  void reiniciar() {
    
  }
}
