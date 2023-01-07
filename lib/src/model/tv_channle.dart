/// List of all channels
class TvChannel {
  final String channelName;
  final List<ShowItem> showItems;

  TvChannel({required this.channelName, required this.showItems});
}

/// List of show for a channel
class ShowItem {
  /// String that shows Show Name
  final String showName;

  /// DateTime that will identify as the start time of the show
  final DateTime showStartTime;

  /// DateTime that will identify as the end time of the show
  final DateTime showEndTime;

  ShowItem({
    required this.showName,
    required this.showStartTime,
    required this.showEndTime,
  });
}
