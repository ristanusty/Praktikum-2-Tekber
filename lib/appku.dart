import 'package:flutter/material.dart';

class Appku extends StatefulWidget {
  const Appku({super.key});

  @override
  State<Appku> createState() => _AppkuState();
}

class _AppkuState extends State<Appku> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 212, 239),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 32),
              _buildProfileHeader(),
              const SizedBox(height: 16),
              _buildNumber(),
              const SizedBox(height: 16),
              const Center(
                child: Text(
                  'Fun Fact About Me',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              _buildFunfacts()
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildProfileHeader() {
  return const Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Material(
        shape: CircleBorder(side: BorderSide(color: Colors.white, width: 3.0)),
        elevation: 10,
        child: CircleAvatar(
          radius: 60,
          backgroundImage:
              AssetImage('images/fotoku.jpg'),
        ),
      ),
      SizedBox(height: 16),
      Text(
        'Anggra Rista Nusty Alivia',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 8),
      Text(
        '@arnapple⋆.𐙚˚',
        style: TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
      ),
    ],
  );
}

Widget _buildFunfacts() {
  return GridView.count(
    shrinkWrap: true,
    crossAxisCount: 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 45,
    padding: const EdgeInsets.all(16),
    children: [
      _buildFunfactCard(
        title: 'Love Fried Rice 🍚',
      ),
      _buildFunfactCard(title: 'Butterscotch Team ☕'),
      _buildFunfactCard(
        title: 'Bracelets Collector 📿',
      ),
      _buildFunfactCard(
        title: 'Doesnt Like Vegetables 🥬',
      ),
    ],
  );
}

Widget _buildFunfactCard({
  required String title,
}) {
  return Card(
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 12),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    ),
  );
}

Widget _buildNumber() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      _buildButton(text: 'Following', value: '100'),
      _buildDivider(),
      _buildButton(text: 'Followers', value: '2800'),
      _buildDivider(),
      _buildButton(text: 'Like', value: '503K'),
    ],
  );
}

Widget _buildDivider() {
  return Container(
    height: 24,
    child: VerticalDivider(
      color: Colors.black,
    ),
  );
}

Widget _buildButton({required String text, required String value}) {
  return MaterialButton(
      padding: EdgeInsets.symmetric(vertical: 4),
      onPressed: () {},
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            '$value',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
          SizedBox(height: 2),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          )
        ],
      ));
}
