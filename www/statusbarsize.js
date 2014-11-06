var StatusBarSize =  {}

StatusBarSize.getStatusBarSize = function(success, error) {
  cordova.exec(
    success,
    error,
    "StatusBarSize",
    "getCurrentSize",
    []
  );
}

StatusBarSize.setListener = function(success, error) {
  cordova.exec(
    success,
    error,
    "StatusBarSize",
    "setListener",
    []
  );
}

module.exports = StatusBarSize;
