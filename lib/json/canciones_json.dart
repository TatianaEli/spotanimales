import 'package:flutter/material.dart';

const List grupos_rock = [
  "Musica Español",
  "Clasico",
  "Heavy Metal",
  "Trash Metal",
  "GrindCore Metal",
  "Gothic Metal"
];
const List grupos_rock1 = [
  "Radio",
  "Podcast",
  "Listas",
  "Conciertos",
  "Bandas",
  "Nuevos"
];

const List canciones_rock = [
  {
    "img": "assets/images/img_3.jpg",
    "titulo": "hola 1",
    "descripcion": "La chanchona de arcadio",
    "numerocanciones": "100 canciones",
    "song_url": "assets/song/1.mp3",
  }
];

const List canciones_reggae = [];
const List canciones_salsa = [];
const List canciones_pop = [];
const List canciones_rancheras = [];

const List song_type_1 = [
  "Mamiferos",
  "Felinos",
  "Acuaticos",
];
const List song_type_2 = [
  "Podcasts",
  "Made For You",
  "Charts",
  "New Releases",
  "Discover",
  "Concerts",
];

const List songs = [
  {
    "img": "assets/images/elefante.jpg",
    "title": "Elefante",
    "description": "Mamifero",
    // "song_count": "100 songs",
    // "date": "about 19 hr",
    "color": Color(0xFFf69129),
    "song_url": "songs/elefante.mp3",
    "songs": [
      {"title": "Sonido de elefante", "duration": "1:21"},

    ]
  },
  {
    "img": "assets/images/caballo.jpg",
    "title": "Caballo",
    "description": "Mamifero",
    // "song_count": "324 songs",
    // "date": "about 14 hr",
    "color": Color(0xFF64849c),
    "song_url": "songs/caballo.mp3",
    "songs": [
      {"title": "Sonido de caballo", "duration": "2:01"},
      // {"title": "Larks", "duration": "2:54"},
      // {"title": "Homeland", "duration": "2:22"},
      // {"title": "Une Danse", "duration": "3:03"},
      // {"title": "Almonte", "duration": "2:31"},
      // {"title": "Days Like These", "duration": "4:09"},
      // {"title": "In questo momento", "duration": "2:40"},
    ]
  },
  {
    "img": "assets/images/mono.jpg",
    "title": "Mono",
    "description": "Mamifero",
    // "song_count": "195 songs",
    // "date": "about 10 hr",
    "color": Color(0xFF58546c),
    "song_url": "songs/gorilla.mp3",
    "songs": [
      {"title": "Sonido de mono", "duration": "3:20"},
      // {"title": "Just Look at You", "duration": "3:07"},
      // {"title": "Flowing", "duration": "2:11"},
      // {"title": "With Resolve", "duration": "2:09"},
      // {"title": "Infinite Sustain", "duration": "2:29"},
      // {"title": "Ingénue", "duration": "2:38"},
      // {"title": "Hidden Chambers", "duration": "2:49"},
    ]
  },
];




const List songs1 = [
  {
    "img": "assets/images/leon.jpg",
    "title": "Leon",
    "description": "Felino",
    // "song_count": "100 songs",
    // "date": "about 19 hr",
    "color": Color(0xFFf69129),
    "song_url": "songs/leon.mp3",
    "songs": [
      {"title": "Sonido de leon", "duration": "1:21"},
      // {"title": "Home_", "duration": "2:17"},
      // {"title": "Do I Wanna Know?", "duration": "1:31"},
      // {"title": "Whiskey Sour", "duration": "1:42"},
      // {"title": "Decisions", "duration": "1:29"},
      // {"title": "Trees", "duration": "1:51"},
      // {"title": "Earth", "duration": "1:39"},
    ]
  },
  {
    "img": "assets/images/gato.jpg",
    "title": "Gato",
    "description": "Felino",
    // "song_count": "324 songs",
    // "date": "about 14 hr",
    "color": Color(0xFF64849c),
    "song_url": "songs/gato.mp3",
    "songs": [
      {"title": "Sonido de gato", "duration": "2:01"},
      // {"title": "Larks", "duration": "2:54"},
      // {"title": "Homeland", "duration": "2:22"},
      // {"title": "Une Danse", "duration": "3:03"},
      // {"title": "Almonte", "duration": "2:31"},
      // {"title": "Days Like These", "duration": "4:09"},
      // {"title": "In questo momento", "duration": "2:40"},
    ]
  },
  {
    "img": "assets/images/leopardo.jpg",
    "title": "Leopardo",
    "description": "Felino",
    // "song_count": "195 songs",
    // "date": "about 10 hr",
    "color": Color(0xFF58546c),
    "song_url": "songs/jaguar.mp3",
    "songs": [
      {"title": "Sonido de leopardo", "duration": "3:20"},
      // {"title": "Just Look at You", "duration": "3:07"},
      // {"title": "Flowing", "duration": "2:11"},
      // {"title": "With Resolve", "duration": "2:09"},
      // {"title": "Infinite Sustain", "duration": "2:29"},
      // {"title": "Ingénue", "duration": "2:38"},
      // {"title": "Hidden Chambers", "duration": "2:49"},
    ]
  },
];




const List songs2 = [
  {
    "img": "assets/images/delfin.jpg",
    "title": "Delfin",
    "description": "Acuatico",
    // "song_count": "100 songs",
    // "date": "about 19 hr",
    "color": Color(0xFFf69129),
    "song_url": "songs/delfin.mp3",
    "songs": [
      {"title": "Sonido de delfin", "duration": "1:21"},
      // {"title": "Home_", "duration": "2:17"},
      // {"title": "Do I Wanna Know?", "duration": "1:31"},
      // {"title": "Whiskey Sour", "duration": "1:42"},
      // {"title": "Decisions", "duration": "1:29"},
      // {"title": "Trees", "duration": "1:51"},
      // {"title": "Earth", "duration": "1:39"},
    ]
  },
  {
    "img": "assets/images/ballena.jpg",
    "title": "Ballena",
    "description": "Acuatico",
    // "song_count": "324 songs",
    // "date": "about 14 hr",
    "color": Color(0xFF64849c),
    "song_url": "songs/ballena.mp3",
    "songs": [
      {"title": "Sonido de ballena", "duration": "2:01"},
      // {"title": "Larks", "duration": "2:54"},
      // {"title": "Homeland", "duration": "2:22"},
      // {"title": "Une Danse", "duration": "3:03"},
      // {"title": "Almonte", "duration": "2:31"},
      // {"title": "Days Like These", "duration": "4:09"},
      // {"title": "In questo momento", "duration": "2:40"},
    ]
  },
  {
    "img": "assets/images/leonmarino.jpg",
    "title": "Leon marino",
    "description": "Acuatico",
    // "song_count": "195 songs",
    // "date": "about 10 hr",
    "color": Color(0xFF58546c),
    "song_url": "songs/leonm.mp3",
    "songs": [
      {"title": "Sonido de Leon marino", "duration": "3:20"},
      // {"title": "Just Look at You", "duration": "3:07"},
      // {"title": "Flowing", "duration": "2:11"},
      // {"title": "With Resolve", "duration": "2:09"},
      // {"title": "Infinite Sustain", "duration": "2:29"},
      // {"title": "Ingénue", "duration": "2:38"},
      // {"title": "Hidden Chambers", "duration": "2:49"},
    ]
  },
];