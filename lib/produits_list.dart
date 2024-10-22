import 'package:flutter/material.dart';
import 'package:produitsapp/produit_box.dart';

class ProduitsList extends StatelessWidget {
  final List<Map<String, dynamic>> liste = [
    {"nom": "1 Produit", "selectionne": false},
    {"nom": "2 Produit", "selectionne": true},
    {"nom": "3 Produit", "selectionne": false},
    {"nom": "4 Produit", "selectionne": false},
    {"nom": "5 Produit", "selectionne": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Produits"),
      ),
      body: ListView.builder(
        itemCount: liste.length,
        itemBuilder: (context, index) {
          return ProduitBox(nomProduit: liste[index][0],
          );
        },
      ),
    );
  }
}
