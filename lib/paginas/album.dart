import 'package:clonespotify/json/canciones_json.dart';
import 'package:clonespotify/temas/colores.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

class AlbumPage extends StatefulWidget {
  const AlbumPage({Key? key, this.canciones}) : super(key: key);
  final dynamic canciones;
  @override
  State<AlbumPage> createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
  double _currentSliderValue = 0;

  late AudioPlayer advancedPlayer;
  late AudioCache audioCache;
  bool isPlaying = true;

  @override
  void initState() {
    super.initState();
    initPlayer();
  }

  initPlayer() {
    advancedPlayer = AudioPlayer();
    audioCache = AudioCache(fixedPlayer: advancedPlayer);
    playSound(widget.canciones['song_url']);
  }

  playSound(localPath) async {
    await audioCache.play(localPath);
  }

  stopSound(localPath) async {
    Uri audioFile = await audioCache.load(localPath);
    //await advancedPlayer.setSourceUrl(audioFile.path);
    await advancedPlayer.setUrl(audioFile.path);
    advancedPlayer.stop();
  }

  seekSound() async {
    Uri audioFile = await audioCache.load(widget.canciones['song_url']);
    await advancedPlayer.setUrl(audioFile.path);
    advancedPlayer.seek(Duration(milliseconds: 2000));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    stopSound(widget.canciones['song_url']);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blanco, //color de fondo
      body: cuerpoAlbum(), //formar cuerpo
    );
  }

//widget es cuando retorna un valor
//metodo o accion no retorna valor
//cuerpo del album
  Widget cuerpoAlbum() {
    var size = MediaQuery.of(context).size;
    List songAlbums = widget.canciones['songs'];
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                width: size.width,
                height: 220,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.canciones['img']),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.canciones['title'],
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: negro)),
                    Container(
                      decoration: BoxDecoration(
                          color: negro, borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 12, right: 12, top: 8, bottom: 8),
                        child: Text(
                          "Subscribe",
                          style: TextStyle(color: blanco),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: List.generate(songs.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              /*Container(
                                width: 180,
                                height: 180,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(songs[index]['img']),
                                        fit: BoxFit.cover),
                                    color: primario,
                                    borderRadius: BorderRadius.circular(10)),
                              ),*/
                              SizedBox(
                                height: 20,
                              ),
                              /*Text(
                                songs[index]['title'],
                                style: TextStyle(
                                    fontSize: 15,
                                    color: negro,
                                    fontWeight: FontWeight.w600),
                              ),*/
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: size.width - 210,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  // children: [
                                  //   Text(
                                  //     songs[index]['song_count'],
                                  //     maxLines: 1,
                                  //     textAlign: TextAlign.center,
                                  //     style: TextStyle(
                                  //         fontSize: 12,
                                  //         color: negro,
                                  //         fontWeight: FontWeight.w600),
                                  //   ),
                                  //   Text(
                                  //     songs[index]['date'],
                                  //     maxLines: 1,
                                  //     textAlign: TextAlign.center,
                                  //     style: TextStyle(
                                  //         fontSize: 12,
                                  //         color: negro,
                                  //         fontWeight: FontWeight.w600),
                                  //   )
                                  // ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Slider(
                  activeColor: Colors.black,
                  value: _currentSliderValue,
                  min: 0,
                  max: 20,
                  onChanged: (value) {
                    setState(() {
                      _currentSliderValue = value;
                    });
                    seekSound();
                  }),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: size.width,
                    child: IconButton(
                        iconSize: 50,
                        icon: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black),
                          child: Center(
                            child: Icon(
                              isPlaying
                                  ? Entypo.controller_stop
                                  : Entypo.controller_play,
                              size: 28,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        onPressed: () {
                          if (isPlaying) {
                            stopSound(widget.canciones['song_url']);
                            setState(() {
                              isPlaying = false;
                            });
                          } else {
                            playSound(widget.canciones['song_url']);
                            setState(() {
                              isPlaying = true;
                            });
                          }
                        }),
                  ),
                ],
              ),
            ],
          ),
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: blanco,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                IconButton(
                    icon: Icon(
                      FeatherIcons.moreVertical,
                      color: blanco,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
