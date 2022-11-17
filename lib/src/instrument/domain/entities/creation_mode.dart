enum CreationMode {
  standard,
  setLocationOnRedeem;

  String get toValue {
    switch (this) {
      case CreationMode.setLocationOnRedeem:
        return 'SetLocationOnRedeem';
      default:
        return 'Standard';
    }
  }
}

CreationMode creationModeFromString(String? mode) {
  switch (mode) {
    case 'SetLocationOnRedeem':
      return CreationMode.setLocationOnRedeem;
    default:
      return CreationMode.standard;
  }
}
