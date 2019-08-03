class AppDataMi2 {
  static List<String> module1Mi2 = [
    'Architecture',
    'Algo \net SD',
    'Logique \nmath',
    'POO',
    'Syst d\'info',
    'Théorie \ndes Lang',
    'Anglais'
  ];
  static List<String> module2Mi2 = [
    'Base \nde données',
    'Syst \nd\'exploitation',
    'Génie \nlogiciel',
    'Théorie \ndes graphes',
    'Réseaux',
    'dev,\nweb',
    'Anglais',
    'Aspects\n juridiques'
  ];
  
  static List<int> listOfCoefS1 = [4, 3, 3, 4, 3, 3, 1];
  static List<int> listOfCoefS2 = [4, 3, 3, 4, 3, 3, 1, 1];

  static List<int> listOfCredS1 = [6, 5, 5, 6, 5, 5, 2];
  static List<int> listOfCredS2 = [6, 5, 5, 6, 5, 5, 2, 2];

  static List<double> listGenerated(int i) => List.generate(i, (i) => -1);

  static Map<String, List<double>> moduleNote1 = {
    module1Mi2[0]: listGenerated(2),
    module1Mi2[1]: listGenerated(3),
    module1Mi2[2]: listGenerated(2),
    module1Mi2[3]: listGenerated(3),
    module1Mi2[4]: listGenerated(2),
    module1Mi2[5]: listGenerated(2),
    module1Mi2[6]: listGenerated(1),
  };

  static Map<String, List<double>> moduleNote2 = {
    module2Mi2[0]: listGenerated(3),
    module2Mi2[1]: listGenerated(3),
    module2Mi2[2]: listGenerated(2),
    module2Mi2[3]: listGenerated(2),
    module2Mi2[4]: listGenerated(3),
    module2Mi2[5]: listGenerated(2),
    module2Mi2[6]: listGenerated(1),
    module2Mi2[7]: listGenerated(1),
  };
}
