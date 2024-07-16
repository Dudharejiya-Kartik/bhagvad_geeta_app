class AllData {
  String id;
  String chapter;
  String sanskrit;
  String gujarati;
  String hindi;

  AllData({
    required this.id,
    required this.chapter,
    required this.gujarati,
    required this.hindi,
    required this.sanskrit,
  });

  factory AllData.fromjson({required Map data}) {
    return AllData(
        id: data['id'],
        chapter: data['chapter'],
        gujarati: data['gujarati'],
        hindi: data['hindi'],
        sanskrit: data['sanskrit']);
  }
}
