import 'package:darth_vaders_tabata/app/data/models/tabata_model.dart';

abstract class TabataService {
  TabataModel getTabata();
}

class TabataServiceImpl implements TabataService {
  @override
  TabataModel getTabata() => Mocks.tabata;
}

abstract class Mocks {
  static final tabata = TabataModel(
    timeSerie: 20,
    amountSerie: 8,
    timeRest: 10,
    amountCycles: 2,
    intervalBetweenCycles: 10,
  );
}
