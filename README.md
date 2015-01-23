# pals

Screw ceremony, make stuff local, like "using" in C#.

This is an npm package of a 14-line string. Seriously, if you require("pals"), it gives you back this string:

```javascript
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
```

This is how you use pals:

```javascript
  var pals = [require("lodash")];
  eval(require("pals"));
```

Discriminating hackers will use livescript:

```livescript
  pals = [require \lodash]
  eval require \pals
```

Now, members of objects in the "pals" array will be local.

Don't question my methods, I don't have to explain myself to you.
