import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Профиль'),
      ),
      body: ListView(
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 25),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/1.jpg'),
                radius: 90,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black12,
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 20,
                ),
                child: Text(
                  'Мои заказы',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black12,
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 20,
                ),
                child: Text(
                  'Доставка',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black12,
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 20,
                ),
                child: Text(
                  'Промокоды',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black12,
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 20,
                ),
                child: Text(
                  'Избранные',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black12,
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 20,
                ),
                child: Text(
                  'Финансы',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black12,
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 20,
                ),
                child: Text(
                  'Выйти с аккаунта',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
