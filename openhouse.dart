void main() {
  var openHours = 8;
  var closedHours = 21;
  var now = 15;

  if (now > openHours && now < closedHours) {
    print("Hello, kami lagi buka");
  } else {
    print("Maaf, kami tutup");
  }
}
