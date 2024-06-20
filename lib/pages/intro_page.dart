import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nike_app/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Padding(
              padding: const EdgeInsets.only(
                  right: 25, left: 25, top: 70, bottom: 0),
              child: Image.asset(
                'lib/images/nike.png',
                height: 240,
              ),
            ),
            const SizedBox(
              height: 45,
            ),

            const Text(
              'Just Do It',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),

            const SizedBox(height: 24),

            const Text(
              'Custom sneekers with premium quality',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),

            const SizedBox(height: 45),

            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Homepage(),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(16)),
                padding: const EdgeInsets.all(25),
                margin: const EdgeInsets.all(24),
                child: const Center(
                    child: Text(
                  'Shop Now',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
