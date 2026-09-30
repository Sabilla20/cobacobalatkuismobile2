import 'package:flutter/material.dart';
import 'package:pokemon/pages/detail.dart';
import '../data/data.dart';
import '../widgets/type_chips.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(8),
      itemCount: pokemons.length,
      itemBuilder: (context, i) {
        final p = pokemons[i];
        return Card(
          child: ListTile(
            leading: Image.network(
              p.image,
              width: 56,
              height: 56,
              errorBuilder: (_, _, _) => Icon(Icons.catching_pokemon),
            ),
            title: Text(p.name, style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: TypeChips(types: p.types),
            trailing: Icon(Icons.info),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => DetailPage(pokemon: p)),
            ),
          ),
        );
      },
    );
  }
}
