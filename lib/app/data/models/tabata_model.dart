class TabataModel {
  final int timeSerie;
  final int amountSerie;
  final int timeRest;
  final int amountCycles;
  final int intervalBetweenCycles;
  late int totalTime;

  TabataModel({
    required this.timeSerie,
    required this.amountSerie,
    required this.timeRest,
    required this.amountCycles,
    required this.intervalBetweenCycles,
  }) {
    totalTime = _calculateTotalTime();
  }

  int _calculateTotalTime() {
    return (timeSerie * amountSerie + intervalBetweenCycles) * amountCycles -
        amountSerie * -1;
  }
}
