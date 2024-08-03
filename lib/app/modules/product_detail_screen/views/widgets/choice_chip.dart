import 'package:flutter/material.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/circular_container.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';

class KamariatiChoiceChip extends StatelessWidget {
  const KamariatiChoiceChip({
    super.key, 
    required this.text, 
    required this.selected, 
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = KamariatiHelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text), 
        selected: selected, 
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? KamariatiColors.white : null),
        avatar: isColor 
            ? KamariatiCircularContainer(width: 50, height: 50, backgroundColor: KamariatiHelperFunctions.getColor(text)!,) 
            : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        padding: isColor ? const EdgeInsets.all(0) : null,
        shape: isColor ? const CircleBorder() : null,
        backgroundColor: KamariatiHelperFunctions.getColor(text)
      ),
    );
  }
}