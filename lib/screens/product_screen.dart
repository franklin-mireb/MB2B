import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Détails du produit')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Placeholder(
                fallbackHeight: 220,
                color: Colors.grey), // replace with Image.network(...)
            const SizedBox(height: 12),
            const Text('Pc Samsung core i5 6th gen 512Gb',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text('300 USD',
                style: TextStyle(fontSize: 22, color: Colors.teal)),
            const SizedBox(height: 4),
            const Text('Kinshasa, RDC • Il y a 2 heures',
                style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 16),
            const Text('Produit neuf • Livraison disponible',
                style: TextStyle(fontSize: 16)),
            const SizedBox(height: 16),
            const Text('Spécifications',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text(
                '• Samsung notebook\n'
                '• Intel Core i5-6300U 6th gen\n'
                '• 512 GB SSD NVMe\n'
                '• 8 GB RAM'),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    icon: const Icon(Icons.message),
                    label: const Text('SMS'),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: OutlinedButton.icon(
                    icon: const Icon(Icons.chat),
                    label: const Text('WHATSAPP'),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.phone),
                    label: const Text('APPEL'),
                    onPressed: () {},
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
