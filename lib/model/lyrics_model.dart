class LyricsModel {
  final String word;
  final DateTime timestamp;
  LyricsModel({required this.word, required this.timestamp});

  @override
  String toString() {
    return 'LyricsModel{word: $word, timestamp: $timestamp}';
  }
}