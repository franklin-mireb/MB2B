import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mireb Commercial'),
        centerTitle: false,
        elevation: 0,
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(icon: const Icon(Icons.filter_list), onPressed: () {}),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          CategoryChip('Electronique'),
          CategoryChip('Mode & Beauté'),
          CategoryChip('Maison & Électroménager'),
          CategoryChip('Véhicules'),
          CategoryChip('Immobilier'),
          SizedBox(height: 20),
          Text('Que vendez-vous ?',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 12),
          ProductCard('Pc Samsung core i5 6th gen 512Gb', '300 USD',
              'Kinshasa, RDC'),
          ProductCard('Toyota Rav4 2021', '1 900 000 USD', 'Kinshasa, RDC'),
          ProductCard('Toyota Prado TX-L 2023', '750 USD', 'Kinshasa, RDC'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/ads'),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favoris'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

class CategoryChip extends StatelessWidget {
  final String label;
  const CategoryChip(this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Chip(label: Text(label)),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String title, price, location;
  const ProductCard(this.title, this.price, this.location, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('$location • Il y a 2 heures'),
        trailing: Text(price,
            style: const TextStyle(
                color: Colors.teal, fontWeight: FontWeight.bold)),
        onTap: () => Navigator.pushNamed(context, '/product'),
      ),
    );
  }
}
