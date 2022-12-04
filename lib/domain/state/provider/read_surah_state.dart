import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class ReadSurahState extends ChangeNotifier {
  final _player = AudioPlayer();

  int _initialReaderIndex = 0;

  int get getReaderIndex => _initialReaderIndex + 1;

  bool _trackLoopState = false;

  bool get getTrackLoopState => _trackLoopState;

  bool _playingState = false;

  bool get getPlayingState => _playingState;

  List<AudioSource> playListCollection = [];

  initPlayer() async {
    playListCollection = List<AudioSource>.generate(
      5,
      (i) {
        return AudioSource.uri(
          Uri.parse('asset:///assets/audios/audio_${i + 1}.mp3'),
        );
      },
    );

    final myPlayList = ConcatenatingAudioSource(
      children: playListCollection,
    );

    await _player.setAudioSource(myPlayList, initialIndex: 0, preload: false);

    _player.currentIndexStream.listen(
          (index) {
        index ??= 0;
        _initialReaderIndex = index;
      },
    );

    _player.playerStateStream.listen(
          (playerState) {
        _playingState = playerState.playing;
        if (playerState.processingState == ProcessingState.completed) {
          _initialReaderIndex = 0;
          _playingState = false;
          _player.seek(Duration.zero, index: 0);
          _player.stop();
        }
      },
    );
  }

  changeReaderIndex(int newIndex) {
    _initialReaderIndex = newIndex;
    notifyListeners();
  }

  playPause() {
    _playingState ? _player.pause() : _player.play();
  }

  loopState() {
    _trackLoopState = !_trackLoopState;
    _player.setLoopMode(_trackLoopState ? LoopMode.one : LoopMode.off);
    notifyListeners();
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }
}
