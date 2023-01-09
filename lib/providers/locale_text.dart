import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LocaleText with ChangeNotifier {
  LocaleText({required this.language});

  void setLanguage(language) {
    this.language = language;
    notifyListeners();
  }

  String language;

  static LocaleText of(BuildContext context, {bool listen = true}) {
    return Provider.of<LocaleText>(context, listen: listen);
  }

  String get template => {'en': 'Template', 'fr': 'Canevas'}[language]!;

  String get pushoffPhase =>
      {'en': 'Pushoff phase', 'fr': 'Phase de propulsion'}[language]!;
  String get aerialPhase =>
      {'en': 'Aerial phase', 'fr': 'Phase aérienne'}[language]!;
  String get landing => {'en': 'Landing', 'fr': 'Atterrissage'}[language]!;
  String get flight => {'en': 'Flight', 'fr': 'Vol'}[language]!;
  String get rotation => {'en': 'Rotation', 'fr': 'Rotation'}[language]!;

  String get aerialPhaseTooltip => {
        'en': 'Duration of the aerial phase',
        'fr': 'Durée de la phase aérienne',
      }[language]!;
  String get computedAerialPhaseTooltip => {
        'en': 'Computed duration of the aerial phase',
        'fr': 'Durée calculée de la phase aérienne',
      }[language]!;
  String get computedFinalRotation => {
        'en': 'Computed rotation at landing in degrees',
        'fr': 'Rotation calculée à l\'atterissage',
      }[language]!;
  String get computedMaximalHeight => {
        'en': 'Computed maximal height (apex) of the jump',
        'fr': 'Hauteur maximale (apex) calculée du saut',
      }[language]!;
  String get fmaxTooltip => {
        'en': 'Maximal force exerted during the pushoff phase',
        'fr': 'Force maximale exercée lors de la phase de propulsion',
      }[language]!;
  String get h0Tooltip => {
        'en': 'Height of the center of mass when flight phase starts',
        'fr': 'Hauteur du centre de masse au début de la phase aérienne',
      }[language]!;
  String get hfTooltip => {
        'en': 'Height of the center of mass at landing',
        'fr': 'Hauteur du centre de masse à l\'atterissage',
      }[language]!;
  String get landingPhaseTooltip => {
        'en': 'Duration of the landing phase',
        'fr': 'Durée de la phase d\'atterissage',
      }[language]!;
  String get pushoffPhaseTooltip => {
        'en': 'Duration of the pushoff phase',
        'fr': 'Durée de la phase de propulsion',
      }[language]!;

  String get easy => {
        'en': 'Easy',
        'fr': 'Facile',
      }[language]!;
  String get medium => {
        'en': 'Medium',
        'fr': 'Moyen',
      }[language]!;
  String get hard => {
        'en': 'Hard',
        'fr': 'Difficile',
      }[language]!;
}
