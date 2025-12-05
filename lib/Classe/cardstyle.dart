import 'package:disney_bruno/Classe/personagem.dart';
import 'package:flutter/material.dart';

class CardStyle extends StatelessWidget {
  final Personagem personagem;

  const CardStyle({super.key, required this.personagem});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromRGBO(103, 212, 241, 1),
    
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.network(
              "${personagem.imageUrl}",
              height: 270,
              width: 200,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 270,
                  width: 200,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.image_not_supported_outlined,
                    size: 60,
                    color: Colors.grey.shade700,
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            Text("${personagem.name}", style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
