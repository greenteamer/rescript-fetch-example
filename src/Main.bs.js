// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Caml_option = require("rescript/lib/js/caml_option.js");

var uri = "https://api.github.com/users";

function postBanana(param) {
  return fetch(uri, {
              method: "POST",
              headers: Caml_option.some(new Headers({
                        "Content-type": "application/json"
                      }))
            });
}

console.log(postBanana(undefined));

exports.uri = uri;
exports.postBanana = postBanana;
/*  Not a pure module */
