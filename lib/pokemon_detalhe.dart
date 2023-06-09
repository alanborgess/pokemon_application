import 'package:application_pokemon/pokemon.dart';
import 'package:flutter/material.dart';

class PokemonDetail extends StatelessWidget {
  final Dados pokemon;

  const PokemonDetail({Key? key, required this.pokemon}) : super(key: key);

  String traduzirTipo(String tipo) {
    switch (tipo) {
      case "Grass":
        return "Planta";
      case "Fire":
        return "Fogo";
      case "Water":
        return "Água";
      case "Electric":
        return "Elétrico";
      case "Bug":
        return "Inseto";
      case "Normal":
        return "Normal";
      case "Flying":
        return "Voador";
      case "Poison":
        return "Venenoso";
      case "Rock":
        return "Pedra";
      case "Ground":
        return "Terra";
      case "Fighting":
        return "Lutador";
      case "Psychic":
        return "Psíquico";
      case "Ghost":
        return "Fantasma";
      case "Ice":
        return "Gelo";
      case "Dragon":
        return "Dragão";
      case "Dark":
        return "Sombrio";
      case "Steel":
        return "Metálico";
      case "Fairy":
        return "Fada";
      default:
        return tipo;
    }
  }

  String traduzirPontosFracos(List<String> fraquezas) {
    List<String> traduzidas = [];
    for (String fraqueza in fraquezas) {
      switch (fraqueza) {
        case "Bug":
          traduzidas.add("Inseto");
          break;
        case "Electric":
          traduzidas.add("Elétrico");
          break;
        case "Flying":
          traduzidas.add("Voador");
          break;
        case "Fire":
          traduzidas.add("Fogo");
          break;
        case "Ice":
          traduzidas.add("Gelo");
          break;
        case "Poison":
          traduzidas.add("Venenoso");
          break;
        case "Rock":
          traduzidas.add("Pedra");
          break;
        case "Water":
          traduzidas.add("Água");
          break;
        case "Grass":
          traduzidas.add("Planta");
          break;
        case "Psychic":
          traduzidas.add("Psíquico");
          break;
        case "Ghost":
          traduzidas.add("Fantasma");
          break;
        case "Dark":
          traduzidas.add("Sombrio");
          break;
        case "Steel":
          traduzidas.add("Metálico");
          break;
        case "Fairy":
          traduzidas.add("Fada");
          break;
        case "Ground":
          traduzidas.add("Terra");
          break;
        case "Fighting":
          traduzidas.add("Lutador");
          break;
        case "Dragon":
          traduzidas.add("Dragão");
          break;
        default:
          traduzidas.add(fraqueza);
          break;
      }
    }
    return traduzidas.join(", ");
  }

  Color getColorFromType(String type) {
    switch (type) {
      case "Grass":
        return const Color.fromARGB(255, 142, 194, 144);
      case "Fire":
                return const Color.fromARGB(255, 230, 174, 89);
      case "Water":
        return const Color.fromARGB(255, 91, 163, 222);
      case "Electric":
        return const Color.fromARGB(255, 219, 231, 112);
      case "Bug":
        return const Color.fromARGB(255, 219, 231, 112);
      case "Normal":
        return const Color.fromARGB(255, 184, 129, 109);
      case "Flying":
        return const Color.fromARGB(255, 107, 177, 209);
      case "Poison":
        return  const Color.fromARGB(255, 188, 110, 202);
      case "Rock":
        return const Color.fromARGB(255, 143, 127, 127);
      case "Ground":
        return const Color.fromARGB(255, 247, 175, 81);
      case "Fighting":
        return const Color.fromARGB(255, 207, 76, 66);
      case "Psychic":
        return const Color.fromARGB(255, 207, 71, 117);
      case "Ghost":
        return const Color.fromARGB(255, 89, 102, 180);
      case "Ice":
        return const Color.fromARGB(255, 95, 188, 200);
      case "Dragon":
        return const Color.fromARGB(255, 89, 102, 180);
      case "Dark":
        return Colors.black;
      case "Steel":
        return const Color.fromARGB(255, 99, 123, 134);
      case "Fairy":
        return const Color.fromARGB(255, 197, 84, 121);
      default:
        return const Color.fromARGB(255, 138, 137, 137);
    }
  }

 @override
Widget build(BuildContext context) {
  final backgroundColor = getColorFromType(pokemon.type![0]);

  return Scaffold(
    backgroundColor: backgroundColor,
    appBar: AppBar(
      title: Text(pokemon.name!),
      backgroundColor: const Color.fromARGB(255, 6, 224, 184),
    ),
    body: Container(
      color: backgroundColor,
      padding: const EdgeInsets.all(50.0),
      child: Column(
        children: [
          const SizedBox(height: 30.0),
          Hero(
            tag: pokemon.id!,
            child: Image.network(
              pokemon.img!,
              height: 220.0,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 30.0),
          Card(
            color: Color.fromARGB(255, 255, 255, 255),
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nº: ${pokemon.id}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    "Tipo: ${traduzirTipo(pokemon.type![0])}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 8, 255, 4),
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    "Altura: ${pokemon.height}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 8, 255, 4),
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    "Peso: ${pokemon.weight}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 8, 255, 4),
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    "Pontos fracos: ${traduzirPontosFracos(pokemon.weaknesses!)}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color:Color.fromARGB(255, 248, 12, 12),
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    "Próxima evolução: ${pokemon.nextEvolution?.map((e) => e.name).join(", ") ?? "N/A"}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 4, 24, 239),
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
}