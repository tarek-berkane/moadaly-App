class AppDataMi1 {
  static List<String> module1Mi2 = [
    'Analyse 1 ',
    'Algebre 1',
    'Algorithmiques \net structure \nde données',
    'Structure \nMachine 1',
    'Terminologie \nScient',
    'Langue \nEtrangere',
    'Physique1'
  ];
  static List<String> module2Mi2 = [
    'Analyse 2',
    'Algebre 2',
    'Algorithmiques \net structure \nde données 2',
    'Structure \nMachine 2',
    'Intrduction \nProba',
    "TIC",
    "OPM",
    'Physique 2'
  ];

  static List<int> listOfCoefS1 = [4, 3, 4, 3, 1, 1, 2];
  static List<int> listOfCoefS2 = [4, 3, 4, 3, 1, 1, 1, 2];

  static List<int> listOfCredS1 = [6, 5, 6, 5, 2, 2, 4];
  static List<int> listOfCredS2 = [6, 5, 6, 5, 2, 2, 2, 4];

  static List<double> listGenerated(int i) => List.generate(i, (i) => -1);

  static Map<String, List<double>> moduleNote1 = {
    module1Mi2[0]: listGenerated(2),
    module1Mi2[1]: listGenerated(2),
    module1Mi2[2]: listGenerated(3),
    module1Mi2[3]: listGenerated(2),
    module1Mi2[4]: listGenerated(1),
    module1Mi2[5]: listGenerated(1),
    module1Mi2[6]: listGenerated(2),
  };

  static Map<String, List<double>> moduleNote2 = {
    module2Mi2[0]: listGenerated(2),
    module2Mi2[1]: listGenerated(2),
    module2Mi2[2]: listGenerated(3),
    module2Mi2[3]: listGenerated(2),
    module2Mi2[4]: listGenerated(2),
    module2Mi2[5]: listGenerated(1),
    module2Mi2[6]: listGenerated(3),
    module2Mi2[7]: listGenerated(2),
  };
}
