// GENERATED CODE BY BUCKLESCRIPT VERSION 0.6.2 , PLEASE EDIT WITH CARE
'use strict';

var Mt    = require("./mt");
var Block = require("../block");

console.log(JSON.stringify(/* :: */[
          1,
          /* :: */[
            2,
            /* :: */[
              3,
              /* [] */0
            ]
          ]
        ]));

console.log("hey");

var suites_000 = /* tuple */[
  "anything_to_string",
  function () {
    return /* Eq */Block.__(0, [
              "3",
              "" + 3
            ]);
  }
];

var suites = /* :: */[
  suites_000,
  /* [] */0
];

Mt.from_pair_suites("lib_js_test.ml", suites);

exports.suites = suites;
/*  Not a pure module */
