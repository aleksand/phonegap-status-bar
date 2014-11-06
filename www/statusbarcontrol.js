var StatusBarControl =  {}

StatusBarControl.getStatusBarControl = function(success, error) {
  cordova.exec(
    success,
    error,
    "StatusBarControl",
    "getStatusBarControl",
    []
  );
}

StatusBarControl.setListener = function(success, error) {
  cordova.exec(
    success,
    error,
    "StatusBarControl",
    "setListener",
    []
  );
}

module.exports = StatusBarControl;
