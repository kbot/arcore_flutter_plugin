enum ArCoreTrackingState {
  tracking,
  paused,
  stopped,
}

extension ArCoreTrackingStateParsible on ArCoreTrackingState {
  static ArCoreTrackingState parse(String val) {
    switch (val.toLowerCase()) {
      case "stopped":
        return ArCoreTrackingState.stopped;
      case "paused":
        return ArCoreTrackingState.paused;
      case "tracking":
      return ArCoreTrackingState.tracking;
      default:
        throw FormatException("Unknown string value for ArCoreTrackingState");
    }
  }
}
