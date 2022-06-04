import 'package:darth_vaders_tabata/app/data/enums/training_status.dart';
import 'package:darth_vaders_tabata/app/data/models/tabata_model.dart';
import 'package:darth_vaders_tabata/app/data/models/training_feedback_model.dart';

class TrainingModel {
  final TabataModel tabata;
  final TrainingFeedbackModel? feedback;
  final TrainingStatus status;
  late DateTime createdAt;
  final DateTime? startedAt;
  final DateTime? finishedAt;

  TrainingModel({
    required this.tabata,
    this.status = TrainingStatus.notStarted,
    this.feedback,
    this.startedAt,
    this.finishedAt,
  }) {
    createdAt = DateTime.now();
  }
}
