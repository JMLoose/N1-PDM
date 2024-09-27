import 'package:flutter/material.dart';

class JoinvilleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF523961), // Cor de fundo semelhante à imagem
      appBar: AppBar(
        title: const Text('Joinville - SC',
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
            'lib/assets/images/snow.jpg'), // Caminho da imagem
        fit: BoxFit.cover, // Ajusta a imagem para cobrir todo o espaço
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            '-3°',
            style: TextStyle(fontSize: 48, color: Colors.white),
          ),
          Text(
            'Snow\nFeels like -7°',
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
                '-5°',
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.ac_unit,
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
                '-4°',
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.ac_unit,
                color: Colors.white,
              ),
              Text(
                '15:00',
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
                '0°',
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.cloud,
                color: Colors.white,
              ),
              Text(
                '16:00',
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
                '-2°',
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.ac_unit,
                color: Colors.white,
              ),
              Text(
                '17:00',
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
                '-4°',
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.ac_unit,
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
        ForecastCard(day: 'Saturday', temp: '17°', icon: Icons.ac_unit),
        ForecastCard(day: 'Sunday', temp: '19°', icon: Icons.ac_unit),
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