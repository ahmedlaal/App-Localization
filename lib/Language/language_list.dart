class Language {
  final int id;
  final String flag;
  final String name;
  final String languageCode;

  Language(this.id, this.flag, this.name, this.languageCode);

  static List<Language> languageList() {
    return <Language>[
      Language(1, "🇺🇸", "English", "en"),
      Language(2, "ES", "Española", "es"),
      Language(3, "FR", "Français", "fr"),
      Language(4, "UR", "اردو", "ur")
    ];
  }
}
