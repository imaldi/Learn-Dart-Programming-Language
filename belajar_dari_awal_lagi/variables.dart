late final String contohString;
const pi = "aksjhdkjashfkjas";
void main(List<String> args) {
  contohString = "Majid";
  print(contohString);
  // late artinya, gelasnya kosong, di isinya nanti aja (hati2, kalau kepakai sebelum diisi, program jadi eror).
  // final itu artinya, gelasnya kosong, tapi setelah diisi nanti ga bisa d ganti lagi.
  // const itu artinya, gelasnya isinya tetap dan ga akan berubah, tapi harus tau nilainya saat compile time.
  contohString = "Ipul";
  print(contohString);
  print("nilai pi: $pi");
  // compile-time => sebelum kita run program,
  // compile-time error

  // run-time => ketika program di run
  // run-time error => error yang terjadi ketika program udah d jalanin (compiler nya no error)

  // nanti late ini kepakai di lifecycle aplikasi
  // initState => initialisasi variable, panggil API, panggil event, dll
  // build => tampilin widget (text,gambar,dll)
}
