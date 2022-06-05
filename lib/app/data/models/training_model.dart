import 'dart:async';

import 'package:darth_vaders_tabata/app/data/enums/training_status.dart';
import 'package:darth_vaders_tabata/app/data/models/tabata_model.dart';
import 'package:darth_vaders_tabata/app/data/models/training_feedback_model.dart';

class TrainingModel {
  DateTime? startedAt;
  TrainingStatus status;
  int currentCycle = 1;
  int currentSerie = 1;
  int currentSerieSecond = 1;
  bool inRestTime = false;
  int totalSeconds = 0;
  TrainingMode mode = TrainingMode(TrainingModeType.Exercice);
  int amountSerieDone = 0;

  final TabataModel tabata;
  final TrainingFeedbackModel? feedback;
  late DateTime createdAt;
  final DateTime? finishedAt;

  TrainingModel({
    required this.tabata,
    this.status = TrainingStatus.notStarted,
    this.feedback,
    this.finishedAt,
  }) {
    createdAt = DateTime.now();
  }

  void prepare() {
    status = TrainingStatus.countdown;
  }

  void start() {
    startedAt = DateTime.now();
    status = TrainingStatus.inProgess;
    var timer = Timer.periodic(Duration(milliseconds: 1000), (t) {
      if (currentCycle == tabata.amountCycles) {
        status = TrainingStatus.completed;
        t.cancel();
      }
      totalSeconds += 1;
      currentSerieSecond += 1;
      if (currentSerieSecond >= 60) {
        amountSerieDone += 1;
        currentSerieSecond = 0;
        if (amountSerieDone == tabata.amountSerie) {
          amountSerieDone = 0;
          currentSerie = 1;
          currentCycle += 1;
        }
      }
    });
  }
}

class TrainingMode {
  final TrainingModeType type;

  TrainingMode(this.type);
  String get displayMode => getDisplayModeBasedOnType();

  String getDisplayModeBasedOnType() {
    switch (type) {
      case TrainingModeType.Rest:
        return "Intervalo";
      case TrainingModeType.Preparing:
        return "Prepare-se";
      case TrainingModeType.Interval:
        return "Intervalo";
      default:
        return "Exercite";
    }
  }
}

enum TrainingModeType {
  Rest,
  Exercice,
  Preparing,
  Interval,
}
