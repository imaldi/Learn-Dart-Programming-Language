import '../oop/learn_inheritance.dart';
import '../oop/learn_oop_class.dart';

void main(List<String> args) {
  // List<String> nama = [];
  // generics biasanya di pakai ketika nentukan jenis element collections (List, Set, Map, etc)
  var nama = <String>[];
  // nama.add(2); // ga bisa, karena typenya bukan String sesuai yg sudah di deklarasikan
  // Map<String, Dog> nomorKTPOrang = {
  //   "17289749": Person(),
  // };
  // Type Parameter => type yang kita kasih ke suatu class generic
  var tokoEmas = Toko<Emas, JNE>("Mulia Jaya", 1000, [Emas(), Emas()], JNE());
  var tokoPakaian =
      Toko<Pakaian, JNT>("Busana Jaya", 1000, [Pakaian(), Pakaian()], JNT());

  // using generic methods
  var emasYangTerkirim = tokoEmas.packingProduct(Emas());
  tokoEmas.hariPengiriman(5);
  // print("emasYangTerkirim $emasYangTerkirim");

  // kalau di dart, generics itu sifatnya reified => ketika runtime, type nya kebaca sama dart
  if (tokoEmas.runtimeType != tokoPakaian.runtimeType) {
    print("type tokoEmas: ${tokoEmas.runtimeType}");
    print(
        "Ya benar"); // masuknya kesini kalau di dart, karena ketika run-time, type parameternya masih kebaca
  } else {
    print("Type nya sama"); // kalau di beberapa bahasa selain dart
  }
  // ga bisa karena emas bukan subclass dari Animal
  // var royalCanin = PetFood<Emas>("Royal Canin", 50000, [
  // type inference
  var royalCanin = PetFood("Royal Canin", 50000, [
    Dog(namaPanggilan: "AAA", jumlahKaki: 4, jumlahMata: 2),
    Cat(namaPanggilan: "Garfield", jumlahKaki: 4, jumlahMata: 2),
    // Emas(), // gabisa, karena bukan turunan Animal
  ]);
}

// contoh class custom yang pakai generics
// class TokoPakaian {
//   String namaToko;
//   int stok;
//   List<Pakaian> produk;
//   TokoPakaian(this.namaToko, this.stok, this.produk);
// }

// class TokoEmas {
//   String namaToko;
//   int stok;
//   List<Emas> produk;
//   TokoEmas(this.namaToko, this.stok, this.produk);
// }

// convention => Peraturan dak wajib tapi di anjurkan
class Toko<T extends Object, J extends JasaAntar> {
  String namaToko;
  int stok;
  List<T> produk;
  J jasaAntar;
  Toko(this.namaToko, this.stok, this.produk, this.jasaAntar);

  // Kita bisa pakai type parameter di return type, bisa pakai di parameter methodnya, dan
  // bisa pakai di dalam function nya
  void packingProduct(T product) {
    // kalau kita ngambil type parameter class untuk kita pakai inisialisasi di method ga akan bisa
    // J jasaAntar = JNT();
    // K number = 4;
    /// ---------------------------------------------------
    // intinya disini kita bisa pakai 2 atau lebih type parameter
    jasaAntar.antarBarangKeCustomer(product);
    // anggaplah disini kita bungkus produknya, walaupun yg d return produk itu sendiri
    // secara kodingnya, supaya simple aja
    // return product;
  }

  // ini intinya method juga bisa makai generics sendiri (terpisah dari classnya)
  void hariPengiriman<H extends int>(H jumlahHariPengiriman) {}
}

abstract class JasaAntar {
  void antarBarangKeCustomer(Object product);
}

class JNT extends JasaAntar {
  @override
  void antarBarangKeCustomer(Object product) {
    print("Barang $product udah sampai di antar kurir J&T");
  }
}

class JNE extends JasaAntar {
  @override
  void antarBarangKeCustomer(Object product) {
    print("Barang $product udah sampai di antar kurir JNE");
  }
}

class Pakaian {}

class Emas {}

class PetFood<T extends Animal> {
  String nama;
  int price;
  List<T> yangBisaMakanProdukIni;
  PetFood(this.nama, this.price, this.yangBisaMakanProdukIni);
}
