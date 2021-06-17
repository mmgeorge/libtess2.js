(function (factory) {
  if (typeof module === "object" && typeof module.exports === "object") {
    var v = factory();
    if (v !== undefined) module.exports = v;
  }
  else if (typeof define === "function" && define.amd) {
    define([], factory);
  }
})(function () {
