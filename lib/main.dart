import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PavlovaApp(),
  ));
}

class PavlovaApp extends StatelessWidget {
  const PavlovaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arcular.Pavlova'), 
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Main Image
            Image.asset(
              'assets/pavlova.jpg', 
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            
            // 2. Light Purple Background Section
            Container(
              color: const Color(0xFFF3E5F5), 
              padding: const EdgeInsets.all(20.0),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  const Text(
                    'Strawberry Pavlova',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 10),
                  
                  // Description Text
                  const Text(
                    'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  // Star Ratings Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: List.generate(5, (index) {
                          // 3 full stars, 2 empty stars
                          return Icon(
                            index < 3 ? Icons.star : Icons.star_border,
                            color: Colors.yellow[700],
                            size: 20,
                          );
                        }),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        '90 Reviews',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildInfoColumn(Icons.timer_outlined, 'PREP', '25 min'),
                      _buildInfoColumn(Icons.restaurant_menu, 'COOK', '1 hr'),
                      _buildInfoColumn(Icons.people_outline, 'FEEDS', '4-6 hrs'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper widget to create the Prep, Cook, and Feeds columns
  Widget _buildInfoColumn(IconData icon, String label, String value) {
    return Column(
      children: [
        Icon(icon, color: Colors.yellow[700], size: 28),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}