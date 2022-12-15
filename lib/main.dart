import 'package:flutter/material.dart';
import 'package:untitled3/play.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
  var  _screenSize = MediaQuery.of(context).size;
  var _images = [
    'assets/akon.jpeg',
    'assets/altema.jpeg',
    'assets/aniki.jpeg',
    'assets/chain.jpeg',
    'assets/herbie.jpeg',
    'assets/kool.jpeg',
    'assets/psy.jpeg',
    'assets/tj.jpeg',
  ];
  var _title = [
    'Lonely',
    '戦争絶叫',
    'とんぼ',
    'CLOSER',
    'Sunlight',
    'Thug or What',
    "I'm not one of us",
    "It was you",
  ];
  var _artist = [
    "AKON",
    "アルテマドール",
    "長渕剛",
    "Chain smokers",
    "Herbie Hancock",
    "KOOL KEITH",
    "PSYCORE",
    "Taji Jackson",
  ];
  Widget GridTile(String image, String title, String artist) {
    return Stack(
        children: [
     Container(
    child: Image.asset(image, fit: BoxFit.fill,),
          ),
          Container(
            padding: EdgeInsets.only(top: _screenSize.height * 0.2),
    child: Text("$title", style: TextStyle(fontSize: 20, color: Colors.white),),
          ),
          Container(
            padding: EdgeInsets.only(top: _screenSize.height * 0.225),
            child: Text("$artist", style: TextStyle(fontSize: 20, color: Colors.white54),),
            ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => PlayPage(image: image, title: title, artist: artist)));
            }
          )
        ]
    );
  }

    return Scaffold(
      backgroundColor: Colors.black45,
      body: Column(
        children:[
          Container(
            width: _screenSize.width,
            height: _screenSize.height * 0.05,
            color: Colors.black45,
          ),
          Container(
            width: _screenSize.width,
            height: _screenSize.height * 0.06,
            color: Colors.white10,
            child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text('ホーム',
                      style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search, color: Colors.white, )
                    )
                  ),
                ]
            )
          ),
          Padding(padding: EdgeInsets.only(top: 10)),

          Container(
            width: _screenSize.width,
            height: _screenSize.height * 0.05,
            child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("あなたへのおすすめ",
                      style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon( Icons.arrow_forward_ios, color: Colors.white,)
                    ),
                  )
                ]
            ),
          ),
      Container(
            height: _screenSize.height * 0.3,
            child: GridView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisExtent: 170,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 4
                ),
                itemCount: 8,
                itemBuilder: (BuildContext context, int index)  {
                  if(index >= _images.length) {
                    _images.addAll([
                      'assets/akon.jpeg',
                      'assets/altema.jpeg',
                      'assets/aniki.jpeg',
                      'assets/chain.jpeg',
                      'assets/herbie.jpeg',
                      'assets/kool.jpeg',
                      'assets/psy.jpeg',
                      'assets/tj.jpeg',
                    ]);
                    _title.addAll([
                      'Lonely',
                      '戦争絶叫',
                      'とんぼ',
                      'CLOSER',
                      'Sunlight',
                      'Thug or What',
                      "I'm not one of us",
                      "It was you",
                    ]);
                    _artist.addAll([
                      "AKON",
                      "アルテマドール",
                      "長渕剛",
                      "Chain smokers",
                      "Herbie Hancock",
                      "KOOL KEITH",
                      "PSYCORE",
                      "Taji Jackson",
                    ]);
                  }
                  return GridTile(_images[index], _title[index], _artist[index],);
                }
            )
          ),


          Container(
            width: _screenSize.width,
            height: _screenSize.height * 0.05,
            child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("カテゴリー",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon( Icons.arrow_forward_ios,
                          color: Colors.white
                        )
                    )
                  ),
                ]
            )
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
              child: GestureDetector(
                onTap: (){},
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(5)),
                  Row(
                    children: [
                      Container(
                        height: _screenSize.height * 0.12,
                        width: _screenSize.width * 0.4,
                        decoration : BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.purple, Colors.black54],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(10)
                        ),
                        alignment: Alignment.center,

                        child: Text('クラシック', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Container(
                        height: _screenSize.height * 0.12,
                        width: _screenSize.width * 0.4,
                        decoration : BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: Text('クラシック', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Container(
                        height: _screenSize.height * 0.12,
                        width: _screenSize.width * 0.4,
                        decoration : BoxDecoration(
                          color: Color(0xff7cfc00),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: Text('クラシック', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Container(
                        height: _screenSize.height * 0.12,
                        width: _screenSize.width * 0.4,
                        decoration : BoxDecoration(
                          color: Color(0xffffd700),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: Text('クラシック', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                      ),
                    ]
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Row(
                    children: [
                      Container(
                        height: _screenSize.height * 0.12,
                        width: _screenSize.width * 0.4,
                        decoration : BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.amber, Colors.brown],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: Text('クラシック', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Container(
                        height: _screenSize.height * 0.12,
                        width: _screenSize.width * 0.4,
                        decoration : BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: Text('クラシック', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Container(
                        height: _screenSize.height * 0.12,
                        width: _screenSize.width * 0.4,
                        decoration : BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: Text('クラシック', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Container(
                        height: _screenSize.height * 0.12,
                        width: _screenSize.width * 0.4,
                        decoration : BoxDecoration(
                          color: Color(0xff6495ed),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: Text('クラシック', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                      )
                    ]
                  )
                ]
              )
              )
          ),
           Padding(padding: EdgeInsets.only(top: _screenSize.height * 0.06)
           ),
          SizedBox(
            height: _screenSize.height * 0.1,
            child: BottomNavigationBar(
              backgroundColor: Colors.black,
              unselectedItemColor: Colors.white54,
              selectedItemColor: Colors.white,
              items:const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: 'ホーム',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),label: '検索',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.playlist_play), label: 'プレイリスト',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle), label: 'アカウント',
                ),
              ],
              type: BottomNavigationBarType.fixed,
            ),
          ),
        ]
      )
    );
  }
}