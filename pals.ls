module.exports = """
  if (pals !== null && pals !== undefined && pals.length) {
    var _pals_block = "";
    for (var _pals_lib = 0; _pals_lib < pals.length; _pals_lib++) {
      for (var _pals_word in pals[_pals_lib]) {
        if (pals[_pals_lib].hasOwnProperty(_pals_word)) {
          _pals_block = _pals_block
            + "var " + _pals_word
            + " = pals[" + _pals_lib
            + "]['" + _pals_word + "'];\\n";
        }
      }
    }
    eval(_pals_block);
  }
"""