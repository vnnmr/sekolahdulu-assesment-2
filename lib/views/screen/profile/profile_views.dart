import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:assesment2/views/screen/auth/login_views.dart';

class User {
  final String username;
  final String profil;

  User({required this.username, required this.profil});
}

class UserService {
  User getCurrentUser() {
    // Simulasi pengambilan data pengguna dari backend atau penyimpanan lokal
    return User(
      username: 'Vina',
      profil: 'assets/images/profile-pict.jpg', // Path ke gambar profil
    );
  }
}

class ProfileScreen extends StatelessWidget {
  final UserService userService = UserService();

  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    User currentUser = userService.getCurrentUser();
<<<<<<< HEAD
    
=======
    final user = FirebaseAuth.instance.currentUser;

>>>>>>> ee2082927a846efa458d7fb581e5f1a142e4d595
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(currentUser.profil),
            ),
            const SizedBox(height: 8),
            Text(
              currentUser.username,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            ListTile(
              leading: const Icon(Icons.logout,
                  color: Color.fromRGBO(59, 38, 122, 1)),
              title: const Text('Log out'),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Color.fromRGBO(59, 38, 122, 1),
              ),
              onTap: () async {
                if (user != null) {
                  await FirebaseAuth.instance.signOut();
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const LoginPageScreen(),
                    ),
                  );
                }
              },
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 140.0),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/profle.jpg', // Path ke logo
                    height: 300,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
