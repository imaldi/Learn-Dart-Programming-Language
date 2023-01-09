import 'dart:io';

enum BahasaPemrograman { Dart, Python }

void main(List<String> args) {
  // String bahasaPemrograman = "Pyton";
  // print("Silahkan Masukkan Programming Language Favorit Anda:");
  // String? bahasaPemrograman = stdin.readLineSync();
  // BahasaPemrograman myFavoritePL = BahasaPemrograman.Dart;

  // switch (bahasaPemrograman) {
  //   case "Dart":
  //     print("Halo Dart");
  //     break;
  //   case "Python":
  //     print("Halo Python");
  //     break;
  //   default:
  //     print("Halo New Language");
  //     break;
  // }

  // switch (myFavoritePL) {
  //   case BahasaPemrograman.Dart:
  //     print("Halo Dart");
  //     break;
  //   case BahasaPemrograman.Python:
  //     print("Halo Python");
  //     break;
  //   default:
  //     print("Halo New Language");
  //     break;
  // }

  var command = 'NOW_CLOSED';
  switch (command) {
    case 'CLOSED':
      print("Status Closed");
      continue nowClosed;
    // Continues executing at the nowClosed label.

    open:
    case 'OPEN':
      print("Status Open");
      break;

    nowClosed:
    case 'NOW_CLOSED':
      // Runs for both CLOSED and NOW_CLOSED.
      print("Status Now Closed");
      continue open;
  }
}
