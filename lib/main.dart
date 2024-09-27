import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'blumenau.dart';
import 'guaramirim.dart';
import 'joinville.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherScreen(),
      routes: {
        'GuaramirimScreen': (context) => GuaramirimScreen(),
        'BlumenauScreen': (context) => BlumenauScreen(),
        'JoinvilleScreen': (context) => JoinvilleScreen(),
      },
    );
  }
}

class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF523961), // Cor de fundo semelhante à imagem
      appBar: AppBar(
        title: const Text('Jaraguá do Sul - SC',
            style: TextStyle(
              color: Colors.black,
            )),
        centerTitle: true, // Centraliza o título horizontalmente
        backgroundColor: Color(0xFFC3BBC9), // Cor de fundo do AppBar
      ),
      body: SingleChildScrollView(
        // Envolva o corpo com SingleChildScrollView
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildCurrentWeather(),
            const SizedBox(height: 16),
            _buildHourlyForecast(),
            const SizedBox(height: 16),
            _build3DayForecast(),
            const SizedBox(height: 16),
            _buildMoreInfoButton(),
            const SizedBox(height: 16),
            _buildOtherCities(context), // Passando o context para navegação
          ],
        ),
      ),
    );
  }
}

Widget _buildCurrentWeather() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      image: DecorationImage(
        image: AssetImage(
            'lib/assets/images/thunderstorm.jpg'), // Caminho da imagem
        fit: BoxFit.cover, // Ajusta a imagem para cobrir todo o espaço
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            '18°',
            style: TextStyle(fontSize: 48, color: Colors.white),
          ),
          Text(
            'Thunderstorm\nFeels like 18°',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    ),
  );
}

Widget _buildHourlyForecast() {
  return Container(
    decoration: BoxDecoration(
      color: Color(0xff3B234A),
      borderRadius: BorderRadius.circular(10),
    ),
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[



        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '18°',
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.cloud,
                color: Colors.white,
              ),
              Text(
                'Now',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          padding: EdgeInsets.all(8.0),
        ),



        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '18°',
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.cloud,
                color: Colors.white,
              ),
              Text(
                '21:00',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          padding: EdgeInsets.all(8.0),
        ),


Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '19°',
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.cloud,
                color: Colors.white,
              ),
              Text(
                '22:00',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          padding: EdgeInsets.all(8.0),
        ),


        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '19°',
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.cloud,
                color: Colors.white,
              ),
              Text(
                '23:00',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          padding: EdgeInsets.all(8.0),
        ),


Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '20°',
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.cloud,
                color: Colors.white,
              ),
              Text(
                '00:00',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          padding: EdgeInsets.all(8.0),
        ),


      ],
    ),
  );
}

Widget _build3DayForecast() {
  return Container(
    decoration: BoxDecoration(
      color: Color(0xff3B234A), // Cor de fundo
      borderRadius: BorderRadius.circular(10), // Bordas arredondadas
    ),
    padding: EdgeInsets.all(10), // Padding opcional
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        ForecastCard(day: 'Friday', temp: '18°', icon: Icons.cloud),
        ForecastCard(day: 'Saturday', temp: '17°', icon: Icons.thunderstorm),
        ForecastCard(day: 'Sunday', temp: '19°', icon: Icons.wb_sunny),
      ],
    ),
  );
}

Widget _buildMoreInfoButton() {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xFF3B234A),
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
    ),
    onPressed: () {},
    child: const Text('More info', style: TextStyle(color: Colors.white)),
  );
}

Widget _buildOtherCities(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      _buildCityWeatherButton(context, 'Guaramirim - SC', '30°/28°',
          Icons.wb_sunny, 'GuaramirimScreen'),
      SizedBox(height: 10), // Adiciona um espaço de 10 pixels

      _buildCityWeatherButton(
          context, 'Blumenau - SC', '23°/19°', Icons.cloud, 'BlumenauScreen'),
      SizedBox(height: 10), // Adiciona um espaço de 10 pixels

      _buildCityWeatherButton(context, 'Joinville - SC', '-5°/0°',
          Icons.wb_sunny, 'JoinvilleScreen'),
    ],
  );
}

Widget _buildCityWeatherButton(BuildContext context, String city, String temp,
    IconData icon, String routeName) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(16.0),
      backgroundColor: Color(0xFFC3BBC9), // Cor de fundo do botão
    ),
    onPressed: () {
      Navigator.pushNamed(context, routeName);
    },
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(city, style: const TextStyle(color: Color(0xFF3B234A))),
        Row(
          children: [
            Text(temp, style: const TextStyle(color: Color(0xFF3B234A))),
            const SizedBox(width: 8),
            Icon(icon, color: const Color(0xFF3B234A)),
          ],
        ),
      ],
    ),
  );
}

class ForecastCard extends StatelessWidget {
  final String day;
  final String temp;
  final IconData icon;

  const ForecastCard({
    Key? key,
    required this.day,
    required this.temp,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(day, style: const TextStyle(color: Color(0xFFFFFFFF))),
        Icon(icon, color: Color(0xFFFFFFFF)),
        Text(temp, style: const TextStyle(color: Color(0xFFFFFFFF))),
      ],
    );
  }
}
