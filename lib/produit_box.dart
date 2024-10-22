import 'package:flutter/material.dart';

class ProduitBox extends StatelessWidget {
  final String nomProduit;

  const ProduitBox({super.key, required this.nomProduit});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Text(nomProduit),
    );
  }
}

