var StatusBar =  {}

StatusBar.checkCamera = function(success, error) {
  cordova.exec(
    success,
    error,
    "StatusBar",
    "getStatusBar",
    []
  );
}

StatusBar.setListener = function(success, error) {
  cordova.exec(
    success,
    error,
    "StatusBar",
    "setListener",
    []
  );
}

module.exports = StatusBar;
