import 'package:sekolahdulu/views/widgets/home_navbar_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      // Ini wajib untuk setiap halaman (yang ada di folder screen)
      // Nanti di bookmark, history, explore, setting, dll juga dikasih SafeArea
      // jadi urutannya Scaffold >> SafeArea >> Baru isi screen nya
      body: SafeArea(
        child: Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.all(0),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/homepage2.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.swap_vert,
                        size: 36,
                        color: Colors.grey,
                      ),
                      Row(
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Vina',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Text(
                                '17 y.o / 12th Grade',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 8),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/profile-pict.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Knowledge\n',
                              style: TextStyle(
                                color: Color.fromRGBO(209, 195, 251, 1),
                                fontWeight: FontWeight.w800,
                                fontSize: 32,
                              ),
                            ),
                            TextSpan(
                              text: 'on the Go,\n',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontSize: 32,
                              ),
                            ),
                            TextSpan(
                              text: 'Excellence in\n',
                              style: TextStyle(
                                color: Color.fromRGBO(209, 195, 251, 1),
                                fontWeight: FontWeight.w800,
                                fontSize: 32,
                              ),
                            ),
                            TextSpan(
                              text: 'Reach.',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontSize: 32,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 48),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Reach your maximum knowledge with ',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(202, 203, 210, 1),
                          ),
                        ),
                        TextSpan(
                          text: 'Sekolahdulu',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(78, 50, 162, 1),
                          ),
                        ),
                        TextSpan(
                          text:
                              '. Unlock your true potential, acquire knowledge effortlessly, and excel academically with our cutting-edge educational app.',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(202, 203, 210, 1),
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Our course',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(209, 195, 251, 1),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeNavbarWidget(
                                  isFromHome: true,
                                ),
                              ),
                            );
                          },
                          child: Image.asset("assets/images/course1.jpg"),
                        ),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeNavbarWidget(
                                  isFromHome: true,
                                ),
                              ),
                            );
                          },
                          child: Image.asset("assets/images/course2.jpg"),
                        ),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeNavbarWidget(
                                  isFromHome: true,
                                ),
                              ),
                            );
                          },
                          child: Image.asset("assets/images/course3.jpg"),
                        ),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeNavbarWidget(
                                  isFromHome: true,
                                ),
                              ),
                            );
                          },
                          child: Image.asset("assets/images/course4.jpg"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
