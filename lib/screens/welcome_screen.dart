import 'package:education_app_ui/Screens/enter_account_screen.dart';
// import 'package:education_app_ui/Screens/home_screen.dart';
import 'package:education_app_ui/utilis/colors.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: screenWidth,
            height: screenHeight,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bgwelcome.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Container(
                width: screenWidth,
                height: screenHeight,
                child: Stack(
                  children: [
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'images/Logo_sman_1_mande.jpg',
                          fit: BoxFit.contain,
                          width: screenWidth * 0.8,
                          height: screenHeight * 10,
                        ),
                      ),
                    ),
                    Positioned(
                      top: screenHeight * 0.55,
                      left: 0,
                      child: Container(
                        width: screenWidth,
                        height: screenHeight * 0.45,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 4, 98, 175)
                              .withOpacity(0.8),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 10), // Jarak atas untuk teks pertama
                              child: Text(
                                'Teknologi Informasi Informatika',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                            SizedBox(
                                height:
                                    5), // Jarak antara teks pertama dan kedua
                            Padding(
                              padding: EdgeInsets.only(
                                  bottom: 10), // Jarak bawah untuk teks kedua
                              child: Text(
                                'Selamat Datang Pembelajaran Teknologi Informasi dan Informatika',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                                height:
                                    10), // Jarak antara teks kedua dan tombol
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AccountScreen()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor:
                                    Color.fromARGB(255, 32, 5, 185),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 100, vertical: 15),
                              ),
                              child: Text('Berikutnya'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
