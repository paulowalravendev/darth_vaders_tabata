import 'package:darth_vaders_tabata/app/data/models/tabata_model.dart';
import 'package:darth_vaders_tabata/app/data/models/training_model.dart';

abstract class TrainingService {
  void createTraining(TabataModel tabata);
  TrainingModel? getCurrentTraining();
}

class TrainingServiceImpl implements TrainingService {
  TrainingModel? _training;

  @override
  void createTraining(TabataModel tabata) =>
      _training = TrainingModel(tabata: tabata);

  @override
  TrainingModel? getCurrentTraining() => _training;
}
