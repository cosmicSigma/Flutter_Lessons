import 'dart:io';

final IOService io = IOService();

class IOService {
  String get text {
    String word = stdin.readLineSync() ?? '';
    return word.trimRight();
  }

  int get number {
    String word = stdin.readLineSync() ?? '';
    return int.tryParse(word.trim()) ?? 0;
  }

  double get numberDouble {
    String word = stdin.readLineSync() ?? '';
    return double.tryParse(word.trim()) ?? 0.0;
  }

  void console(Object? object) {
    stdout.write(object);
  }
}


class EngDictionary {
  String eng;
  List<String> uz = [];
  String description;
  bool isLike;
  String grammar;

  EngDictionary(
      {required this.eng,
      required this.uz,
      required this.grammar,
      this.description = '',
      this.isLike = false});
}

class UzDictionary {
  String uz;
  List<String> eng = [];
  String description;
  String grammar;
  bool isLike;

  UzDictionary(
      {required this.uz,
      required this.eng,
      required this.grammar,
      this.description = '',
      this.isLike = false});
}

final engDictionary1 = EngDictionary(
    eng: 'make', uz: ['qilmoq', 'yasamoq'], grammar: 'verb', isLike: true);
final engDictionary2 =
    EngDictionary(eng: 'do', uz: ['qilmoq', 'bajarmoq'], grammar: 'verb');
final engDictionary3 = EngDictionary(
    eng: 'accept',
    uz: ['qabul qilmoq', 'rozilik bermoq', 'tan olmoq', 'ishonmoq'],
    grammar: 'verb');
final engDictionary4 = EngDictionary(
    eng: 'adobe',
    uz: ["xom g'isht", "xom g'ishtdan qurilgan uy"],
    grammar: 'noun');
final engDictionary5 = EngDictionary(
    eng: 'belt',
    uz: [
      "belbog',tasma",
      "zona",
      "doira",
    ],
    grammar: 'verb');
final uzDictionary1 = UzDictionary(
    uz: 'qidirmoq', eng: ['search'], grammar: 'verb', isLike: true);
final uzDictionary2 =
    UzDictionary(uz: 'test', eng: ['test'], grammar: 'noun', isLike: false);
final uzDictionary3 = UzDictionary(
    uz: 'adovat', eng: ['enmity', 'hostility'], grammar: 'noun', isLike: false);
final uzDictionary4 = UzDictionary(
    uz: 'afsona',
    eng: ['legend' 'fable', 'tale'],
    grammar: 'noun',
    isLike: false);
final uzDictionary5 = UzDictionary(
    uz: 'ahamiyat',
    eng: ['significance', 'importance'],
    grammar: 'noun',
    isLike: true);
final uzDictionary6 = UzDictionary(
    uz: 'barqaror',
    eng: ['steady', 'firm', 'stable'],
    grammar: 'adjective',
    isLike: false);
final uzDictionary7 = UzDictionary(
    uz: 'sarguzasht', eng: ['adventure'], grammar: 'noun', isLike: false);
final uzDictionary8 = UzDictionary(
    uz: 'dehqon',
    eng: ['farmer', 'agriculturalist'],
    grammar: 'noun',
    isLike: false);
final uzDictionary9 = UzDictionary(
    uz: "e'lon", eng: ['advertisement'], grammar: 'noun', isLike: false);
final uzDictionary10 = UzDictionary(
    uz: 'rad etmoq', eng: ['reject'], grammar: 'verb', isLike: true);

final engDictionaries = [
  engDictionary1,
  engDictionary2,
  engDictionary3,
  engDictionary4,
  engDictionary5
];
final uzDictionaries = [
  uzDictionary1,
  uzDictionary2,
  uzDictionary3,
  uzDictionary4,
  uzDictionary5,
  uzDictionary6,
  uzDictionary7,
  uzDictionary8,
  uzDictionary9,
  uzDictionary10
];
final engFavourites = [
  for (int i = 0; i < engDictionaries.length; i++)
    if (engDictionaries[i].isLike == true) engDictionaries[i]
];
final uzFavourites = [
  for (int i = 0; i < uzDictionaries.length; i++)
    if (uzDictionaries[i].isLike == true) uzDictionaries[i]
];

void main() {
  // int language = 1;
  // List langList = [];
  //
  // if (language==1) langList=engDictionaries;
  // else langList=uzDictionaries;
  //
  // print("Testni  qayerdan boshlab topshirishni hohlaysiz");
  // print("1.boshidan n ta so'zni");
  // print("2.oxiridan n ta so'zni");
  // print("3.n ta random so'zni");
  //
  // stdout.write("komandani kiriting: ");
  // int command = int.tryParse(stdin.readLineSync()!) ?? 0;
  //
  // EngDictionary engDictionary = EngDictionary(eng: 'eng', grammar: 'grammar', uz: []);
  //
  // List list = [];
  // switch(command) {
  //   case 1: {
  //     for (int i = langList.length-1; i >0 ; i--) {
  //       print(langList[i]);
  //     }
  //   }break;
  //   case 2: {
  //     print("2");
  //   }break;
  //   case 3: {
  //     print("3");
  //   }break;
  //   default: {
  //     print("noto'g'ri kommanda tanlandi");
  //   }
  // }

  // for (int i=0; i<engDictionaries.length;i++) {
  //   viewEngDictionary(engDictionaries[i].eng as EngDictionary);
  // }
}

