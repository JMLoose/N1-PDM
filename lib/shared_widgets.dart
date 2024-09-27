import 'package:flutter/material.dart';

Widget buildHourlyForecast() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: List.generate(5, (index) {
      return Column(
        children: const [
          Text('18°', style: TextStyle(color: Colors.white)),
          Icon(Icons.cloud, color: Colors.white),
          Text('21:00', style: TextStyle(color: Colors.white)),
        ],
      );
    }),
  );
}

Widget build3DayForecast() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: const [
      ForecastCard(day: 'Friday', temp: '18°', icon: Icons.cloud),
      ForecastCard(day: 'Saturday', temp: '17°', icon: Icons.thunderstorm),
      ForecastCard(day: 'Sunday', temp: '19°', icon: Icons.wb_sunny),
    ],
  );
}

Widget buildMoreInfoButton() {
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
        Text(day, style: const TextStyle(color: Colors.white)),
        Icon(icon, color: Colors.white),
        Text(temp, style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}
