
void sumMinToMax(int min, int max) {
  for (int i = min; i <= max; i++) {
    min += i;
  }
  print(min);
}

void main(List<String> args) {
  sumMinToMax(8, 14); // 8+9+10....+14
}
