import 'package:flutter/material.dart';

class GuaramirimScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF523961),
      appBar: AppBar(
        title: const Text('Guaramirim - SC',
            style: TextStyle(
              color: Colors.black,
            )),
        centerTitle: true,
        backgroundColor: Color(0xFFC3BBC9),
      ),
      body: SingleChildScrollView(
        
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
            'lib/assets/images/sun.jpg'), // Caminho da imagem
        fit: BoxFit.cover, // Ajusta a imagem para cobrir todo o espaço
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            '30°',
            style: TextStyle(fontSize: 48, color: Colors.white),
          ),
          Text(
            'Sunny\nFeels like 30°',
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
                '30°',
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.wb_sunny,
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
                '31°',
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.cloud,
                color: Colors.white,
              ),
              Text(
                '18:00',
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
                '32°',
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.cloud,
                color: Colors.white,
              ),
              Text(
                '19:00',
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
                '29°',
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.wb_sunny,
                color: Colors.white,
              ),
              Text(
                '20:00',
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
                '29°',
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.wb_sunny,
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
        ForecastCard(day: 'Friday', temp: '28°', icon: Icons.wb_sunny),
        ForecastCard(day: 'Saturday', temp: '27°', icon: Icons.thunderstorm),
        ForecastCard(day: 'Sunday', temp: '24°', icon: Icons.cloud),
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
