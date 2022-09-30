import "dart:io";

void main() {
  print("Perulangan For");
  for (int i = 1; i <= 10; i++) {
    //if (i % 3 == 0) continue;
    stdout.write("$i, ");
  }

  var i = 10;
  print("Perulangan While");
  while (i <= 5) {
    stdout.write("$i, ");
    i++;
  }

  print("Perulangan Do While");
  do {
    stdout.write("$i, ");
    i++;
  } while (i <= 5);
}
