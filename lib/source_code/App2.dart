import 'package:flutter/material.dart';

class App2 extends StatelessWidget{
  const App2 ({Key? key}):super(key:key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'counter',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        appBarTheme: AppBarTheme(backgroundColor: Colors.purpleAccent),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("app bar"),
          elevation: 0.9,

          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none)),

          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(backgroundImage: AssetImage('assets/profile.png'),),
                  accountName: Text('kwon seokmo'),
                  accountEmail: Text('tjrah4321@gmail.com'),
                  onDetailsPressed: (){print('click my avartar');},
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    )
                  ),
              )

            ],
          ),
        ),
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
