import 'package:flutter/material.dart';

class App2 extends StatelessWidget{
  const App2 ({Key? key}):super(key:key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.amber)
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You have pushed the button this many times:"),
            Text('4'),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.circle)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.circle)),
                ],
              )
            )
          ],
        ),

      ),
    );
  }
}