Future<void> fetchUserOrder() {
  // Imagine that this function is fetching user info from another service or database.
  return Future.delayed(
      const Duration(seconds: 2),
      () =>
          // print('Large Latte')
          throw Exception('Logout failed: user ID is invalid'));
}

void main() async {
  // 1. Future => Class Khusus yang mana menyatakan kalau value nya itu akan ada di masa yg akan datang
  // 2. Future dijalankan setelah semua function void (statement), kecuali kalau di beri keyword await, maka semua statement di bawah nya bakal nunggu dia
  print("Selamat datang di Cafe Kopi Kami");
  // 4. Future juga bisa throw error, dan karena itu, biasanya kodingan yg make Future, seringnya di taro di dalam try-catch block
  try {
    await fetchUserOrder();
  } catch (err) {
    print("Maaf Ada Suatu Error ${err.toString()}");
  }
  print('Fetching user order...');
  // 3. Future itu bisa dalam 2 state (keadaan) => Uncompleted dan Completed
  var nomorTogel = Future(() => 3);
  print(
      nomorTogel); // dia ke print Future<int> karena masih dalam keadaan uncompleted, udah kita print duluan
  print(
      await nomorTogel); // dia ke print angka nya (value nya) karena sudah kita tunggu untuk selesai
}
