import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeStateful(),
  ));

}

class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {

  var _titulo =  "Lucca D'Amico";

  @override
  Widget build(BuildContext context) {


    print("Build Chamado");
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(
       child: Column(
         children: <Widget>[
           ElevatedButton(
               onPressed: (){
                 setState(() {
                   _titulo = "Curso Flutter";
                 });
                 print("clicado");
               },
               child: Text("Clique aqui!")
           ),
           Text("Nome: $_titulo")
         ],
       ),
      ),

    );
  }
}
