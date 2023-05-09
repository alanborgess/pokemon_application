import 'package:application_pokemon/pokemon.dart';
import 'package:application_pokemon/pokemon_detalhe.dart';
import 'package:flutter/material.dart';

class PokemonsList extends StatelessWidget {
  final List<Dados> pokemons;

  const PokemonsList({Key? key, required this.pokemons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
      ),
      itemCount: pokemons.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: _getColorForType(pokemons[index].type!.first),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PokemonDetail(pokemon: pokemons[index]),
                ),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Image.network(pokemons[index].img!),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    pokemons[index].name!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 37, 73, 189).withOpacity(0.8),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(4.0),
                      bottomRight: Radius.circular(4.0),
                    ),
                  ),
                  child: Text(
                    pokemons[index].type!.join(", "),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 255, 247, 247),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Color _getColorForType(String type) {
    switch (type) {
      case "Grass":
        return const Color.fromARGB(255, 142, 194, 144);
      case "Poison":
        return const Color.fromARGB(255, 188, 110, 202);
      case "Fire":
        return const Color.fromARGB(255, 230, 174, 89);
      case "Water":
        return const Color.fromARGB(255, 91, 163, 222);
      case "Bug":
        return const Color.fromARGB(255, 219, 231, 112);
      case "Normal":
        return const Color.fromARGB(255, 184, 129, 109);
      case "Flying":
        return const Color.fromARGB(255, 107, 177, 209);
      case "Electric":
        return const Color.fromARGB(255, 219, 205, 76);
      case "Ground":
        return const Color.fromARGB(255, 247, 175, 81);
      case "Fighting":
        return const Color.fromARGB(255, 207, 76, 66);
      case "Psychic":
        return const Color.fromARGB(255, 207, 71, 117);
      case "Rock":
        return const Color.fromARGB(255, 143, 127, 127);
      case "Ice":
        return const Color.fromARGB(255, 95, 188, 200);
      case "Ghost":
        return const Color.fromARGB(255, 115, 85, 165);
      case "Dragon":
        return const Color.fromARGB(255, 89, 102, 180);
      case "Steel":
        return const Color.fromARGB(255, 99, 123, 134);
      case "Dark":
        return Colors.black87;
      case "Fairy":
        return const Color.fromARGB(255, 197, 84, 121);
      default:
        return const Color.fromARGB(255, 138, 137, 137);
    }
  }
}
