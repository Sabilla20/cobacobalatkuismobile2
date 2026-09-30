import 'package:flutter/material.dart';
import '../models/pokemon.dart';
import '../widgets/type_chips.dart';

class DetailPage extends StatelessWidget {
  final Pokemon pokemon;
  const DetailPage({super.key, required this.pokemon});

  Widget _attr(String k, String v) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2),
      child: Row(children: [
        Icon(Icons.chevron_right, size: 18),
        Text('$k: $v'),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    final p = pokemon;
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail: ${p.name}'),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.deepPurple.shade50,
                child: Image.network(
                  p.image,
                  width: 110,
                  height: 110,
                  errorBuilder: (_, _, _) => Icon(Icons.catching_pokemon),
                ),
              ),
            ),
            SizedBox(height: 8),
            Center(
              child: Text(p.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Center(child: TypeChips(types: p.types)),
            SizedBox(height: 16),
            Text('Attributes',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 4),
            _attr('ID', '${p.id}'),
            _attr('Name', p.name),
            _attr('Types', p.types.join(', ')),
            _attr('Ability', p.ability),
            _attr('Height', '${p.height}'),
            _attr('Weight', '${p.weight}'),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(12),
        child: FilledButton.tonal(
          onPressed: () => Navigator.pop(context),
          child: Text('Kembali'),
        ),
      ),
    );
  }
}
