import 'dart:async';

const JudulVideoYangMauDiUpload = [
  "Video Prank 1",
  "Video Mukbang",
  "Video Apalah lagi"
];
void main(List<String> args) async {
  // Stream => aliran => aliran event
  // => seperti notif dari suatu channel youtube, kita bisa memutuskan untuk subscribe/unsubscibe
  streamBroadcaster(Stream.periodic(
      Duration(seconds: 1),
      (x) => x <= (JudulVideoYangMauDiUpload.length - 1)
          ? JudulVideoYangMauDiUpload[x]
          : "Hari $x ini belum ada video baru"));
  // disini Stream.periodic nerima durasi dan apa yang dilakukan dengan nilai yang dihasilkan stream
}

void streamBroadcaster(Stream<String> channelYoutubeNotification) {
  // subscribe ke channel
  var subscription = channelYoutubeNotification.listen((notifikasinya) {
    print("ada update baru nih");
    print("Ada judul video baru $notifikasinya");
    print("Buka link video terbarunya");
  });
  // tombolUnsubs(subscription);
  Future.delayed(Duration(seconds: 10), (() => subscription.cancel()));
}

void tombolUnsubs(StreamSubscription<String> subscription) {
  subscription.cancel();
}
