import 'dart:io';

class EngDictionary {
  String eng;
  List<String> uz = [];
  String description;
  bool isLike;
  String grammar;

  EngDictionary({
    required this.eng,
    required this.uz,
    required this.grammar,
    this.description = '',
    this.isLike=false
  });
}

class UzDictionary {
  String uz;
  List<String> eng = [];
  String description;
  String grammar;
  bool isLike;

  UzDictionary({
    required this.uz,
    required this.eng,
    required this.grammar,this.description = '',this.isLike=false
  }) ;
}

final engDictionary1 =
    EngDictionary(eng: 'make', uz: ['qilmoq', 'yasamoq'], grammar: 'verb', isLike: true);
final engDictionary2 =
    EngDictionary(eng: 'do', uz: ['qilmoq', 'bajarmoq'], grammar: 'verb');
final uzDictionary1 =
    UzDictionary(uz: 'qidirmoq', eng: ['search'], grammar: 'verb');
final uzDictionary2 =
    UzDictionary(uz: 'test', eng: ['test'], grammar: 'noun', isLike: true);
final engDictionary3 =
    EngDictionary(eng: 'develop', uz: ['rivojlanmoq', 'rivojlantirmoq'], grammar: 'verb', isLike: true);
final engDictionary4 =
    EngDictionary(eng: 'be', uz: ['bo\'lmoq', 'bajarmoq'], grammar: 'verb');
final uzDictionary3 =
    UzDictionary(uz: 'eshitmoq', eng: ['listen', 'hear'], grammar: 'verb');
final uzDictionary4 =
    UzDictionary(uz: 'tekchirmoq', eng: ['check'], grammar: 'noun', isLike: true);

final engDictionaries = [engDictionary1, engDictionary2, engDictionary3,engDictionary4];
final uzDictionaries = [uzDictionary1, uzDictionary2, uzDictionary3, uzDictionary4];

void main() {
  print("Bo'sh kataklarni to'ldiring\n");
  for (var words in engDictionaries){
    var str = words.eng;
    List list = [for (int i = 0; i < str.length; i++) i];
    list.shuffle();

    List strList = str.split("");
    List mySet = [];

    for (int i = 0; i < str.length ~/ 2; i++) {
      int a = list[i];
      mySet.add(a);
      strList[a] = "_";
    }

    String temp = "";
    for (String i in strList) temp += i;
    // print(mySet);
    print("${words.uz[0]} -> ${temp} (${words.grammar})\n");

    int i=0;
    bool status = false;
    while (i<mySet.length) {
      stdout.write("${mySet[i]+1}-yetishmayotgan qismni kiriting: ");
      String element = stdin.readLineSync() ?? "";
      if (element==str[mySet[i]]) status=true;
      i++;
    }

    if (status==true) print("To\'g\'ri kiritidingiz: $str");
  }
}

