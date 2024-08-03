import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';

class KamariatiRatingBarIndicator extends StatelessWidget {
  const KamariatiRatingBarIndicator({
    super.key, 
    required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemSize: 20,
      unratedColor: KamariatiColors.grey,
      itemBuilder: (_, __) => const Icon(FluentIcons.star_24_filled, color: KamariatiColors.primary,)
    );
  }
}