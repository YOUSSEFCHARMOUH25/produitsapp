import 'package:flutter/material.dart';
import 'package:produitsapp/produit_box.dart';

class ProduitsList extends StatelessWidget {
   ProduitsList({super.key});

  final List<Map<String, dynamic>> liste = [
    {"nomProduit": "1 Produit", "estDisponible": false},
    {"nomProduit": "2 Produit", "estDisponible": true},
    {"nomProduit": "3 Produit", "estDisponible": false},
    {"nomProduit": "4 Produit", "estDisponible": false},
    {"nomProduit": "5 Produit", "estDisponible": false},
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
          return ProduitBox(
            nomProduit: liste[index]["nomProduit"], 
          );
        },
      ),
    );
  }
}

