import 'package:flutter/material.dart';

class ProduitBox extends StatelessWidget {
  final String nomProduit;
  final bool selProduit;
  final Function(bool?)? onChanged;
  const ProduitBox({super.key, required this.nomProduit,
  this.selProduit = false,
  this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Row(children: [
        Checkbox(value: selProduit, onChanged: onChanged),
        Text(nomProduit),
      ],),
    );
  }
}
