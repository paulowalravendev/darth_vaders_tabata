import 'package:darth_vaders_tabata/app/data/models/tabata_model.dart';
import 'package:darth_vaders_tabata/app/data/models/training_model.dart';

abstract class TrainingService {
  TrainingModel createTraining(TabataModel tabata);
}

class TrainingServiceImpl implements TrainingService {
  @override
  TrainingModel createTraining(TabataModel tabata) =>
      TrainingModel(tabata: tabata, startedAt: DateTime.now());
}
