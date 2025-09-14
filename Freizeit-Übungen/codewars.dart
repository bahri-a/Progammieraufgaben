Map<String, int> count(String s) {
  String a = "A";
  Map<String, int> ergebnis = {};
  List<String> bs = [];
  
  for (int i = 0; i < s.length; i++) {
    for (int j = 65; j <= 122; j++) {
      if(s[i] == a) {
        bs.add(a);
        
      }
        a == int.tryParse(a)! + 1;
      if(j == 122) {a = "A";}
    }
  }
  return {};
}

void main(List<String> args) {
  
}