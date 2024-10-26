import 'package:flutter/material.dart';
import 'package:produitsapp/add_produit.dart';
import 'package:produitsapp/produit_box.dart';

class ProduitsList extends StatefulWidget {
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
  final nomController = TextEditingController();

  void onChanged(bool? value, int index) {
    setState(() {
      liste[index]["estDisponible"] = value;
    });
  }

  void saveProduit() {
    setState(() {
      liste.add({
        "nomProduit": nomController.text,
        "estDisponible": false,
      });
      nomController.clear();
      Navigator.of(context).pop();
    });
  }

  void delProduit(int index) {
    setState(() {
      liste.removeAt(index);
    });
  }

  void showAddProduitDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AddProduit(
          nomController: nomController,
          onAdd: saveProduit,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Produits"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: showAddProduitDialog,
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: liste.length,
        itemBuilder: (context, index) {
          return ProduitBox(
            nomProduit: liste[index]["nomProduit"],
            selProduit: liste[index]["estDisponible"],
            onChanged: (value) => onChanged(value, index),
            delproduit: (context) => delProduit(index),
          );
        },
      ),
    );
  }
}
