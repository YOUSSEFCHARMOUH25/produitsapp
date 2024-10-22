import 'package:flutter/material.dart';
import 'package:produitsapp/produit_box.dart';

class ProduitsList extends StatefulWidget  {
  ProduitsList({super.key});
  @override
  _ProduitsListState createState() => _ProduitsListState();
}
class _ProduitsListState extends State<ProduitsList> {
  final List<Map<String, dynamic>> liste = [
    {"nomProduit": "1 Produit", "estDisponible": false},
    {"nomProduit": "2 Produit", "estDisponible": true},
    {"nomProduit": "3 Produit", "estDisponible": false},
    {"nomProduit": "4 Produit", "estDisponible": false},
    {"nomProduit": "5 Produit", "estDisponible": false},
  ];
 void onChanged(bool? value, int index) {
    setState(() {
      liste[index]["estDisponible"] = value;
    });
  }

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
              selProduit: liste[index]["estDisponible"],
              onChanged: (value) => onChanged(value, index),
              );
        },
      ),
    );
  }
}
