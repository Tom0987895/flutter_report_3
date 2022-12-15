import 'package:flutter/material.dart';

class PlayPage extends StatefulWidget {
  const PlayPage({Key? key, required this.image,required this.title, required this.artist }) : super(key: key);
  final String image;
  final String title;
  final String artist;

  @override
  State<PlayPage> createState() => _PlayState();
}

class _PlayState extends State<PlayPage> {
  double _number = 0.0;
  double _startValue = 0.0;
  double _endValue = 0.0;
  bool isChanged = true;


  void _changeSlider(double e) =>
      setState(() {
        _number = e;
      });

  void _startSlider(double e) =>
      setState(() {
        _startValue = e;
      });

  void _endSlider(double e) =>
      setState(() {
        _endValue = e;
      });

  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        backgroundColor: Colors.white10,
        body: Column(
          children: [
            Container(
              height: _screenSize.height * 0.07,
              color: Colors.black,
            ),
            GestureDetector(
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(
                      Icons.arrow_forward_ios, color: Colors.white,)),
              )
            ),
            Padding(padding: EdgeInsets.only(top: 20)
            ),
            Container(
              width: _screenSize.width *0.9,

              child: Column(
                  children: [
                    Image.asset(widget.image, fit: BoxFit.fill),
                    Padding(padding: EdgeInsets.only(top: 30)
                    ),
                    Text(widget.title,
                        style: const TextStyle(
                            fontSize: 30,
                            color: Colors.white)
                    ),
                    Padding(padding: EdgeInsets.only(top: 5)
                    ),
                    Text(widget.artist,
                      style: const TextStyle(
                        fontSize: 25,
                          color: Colors.white54)
                    ),
                    Padding(padding: EdgeInsets.only(top: 30)
                   ),
                    Slider(
                      value: _number,
                      min: 0,
                      max: 50,
                      activeColor: Colors.white,
                      inactiveColor: Colors.white54,
                      divisions: 50,
                      onChanged: _changeSlider,
                      onChangeStart: _startSlider,
                      onChangeEnd: _endSlider,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('0:00',style: TextStyle(fontSize: 15, color: Colors.white54)
                        ),
                        Text('5:00',style: TextStyle(fontSize: 15, color: Colors.white54)
                        ),
                      ]
                    ),

                    Container(
                      width: _screenSize.width * 0.8,
                      height: _screenSize.height * 0.15,
                      margin: EdgeInsets.only(top: 20),
                   child: Stack(
                     children:[
                       Align(
                         alignment: Alignment(-0.8,0),
                         child: Container(
                           height: _screenSize.height * 0.1,
                           child: IconButton(
                               onPressed: () {},
                               icon: Icon(Icons.skip_previous,
                                 color: Colors.white,
                                 size: 50)
                           ),
                         ),
                       ),
                       Align(
                         alignment: Alignment.center,
                         child: Container(
                           height: _screenSize.height * 0.2,
                           width: _screenSize.width * 0.3,
                           alignment: Alignment(-0.9,-0.7),
                           child: IconButton(onPressed: () {
                             setState(() {
                               isChanged = !isChanged;
                             });
                             },
                               icon: Icon(isChanged ? Icons.play_circle_filled : Icons.pause_circle,
                                 color: Colors.white,
                                 size: 100)
                           )
                         )
                       ),
                       Align(
                         alignment: Alignment(0.7,0),
                         child: Container(
                           height: _screenSize.height * 0.1,
                           child: IconButton(onPressed: () {},
                               icon: Icon(Icons.skip_next,
                                 color: Colors.white,
                                 size: 50)
                           )
                         )
                       ),
                     ]
                   )
                    )
                  ]
              )
            )
          ]
        )
    );
  }
}
