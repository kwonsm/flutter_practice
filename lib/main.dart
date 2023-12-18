import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // 메인페이지를 시작해주세요
}


class MyApp extends StatelessWidget{ //메인 페이지
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){

    return MaterialApp( // 위젯
      home: Scaffold(
        appBar: AppBar(
          actions: const [
            Icon(Icons.search,size: 30),
            Icon(Icons.notifications_none,size: 30),
            Icon(Icons.density_medium_rounded,size: 30)
          ],
          title: Row(children: const [Text("금호동3가"),Icon(Icons.expand_more),]),
        ),
        body: ShopItem()
      )
    );
  }
}

class ShopItem extends StatelessWidget {
  const ShopItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Image.asset('camera.png',width: 150,),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('카메라 팝니다'),
                Text('금호동 3가'),
                Text('7,000원'),
                Flexible(
                    flex: 9,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Icon(Icons.favorite_border),Text('4')],
                      ),
                    )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
