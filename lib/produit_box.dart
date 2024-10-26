import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ProduitBox extends StatelessWidget {
  final String nomProduit;
  final bool selProduit;
  final Function(bool?)? onChanged;
  final void Function(BuildContext context)? delproduit; 

  const ProduitBox({
    super.key,
    required this.nomProduit,
    this.selProduit = false,
    this.onChanged,
    this.delproduit,
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: Key(nomProduit),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: delproduit,
            icon: Icons.delete,
            backgroundColor: Colors.red,
            borderRadius: BorderRadius.circular(45),
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(45),
        ),
        height: 120,
        child: Row(
          children: [
            Checkbox(value: selProduit, onChanged: onChanged),
            Text(nomProduit),
          ],
        ),
      ),
    );
  }
}
