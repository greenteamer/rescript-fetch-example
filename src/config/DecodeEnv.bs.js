// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Codec = require("../utils/Codec.bs.js");
var Dotenv = require("../utils/Dotenv.bs.js");
var Process = require("process");
var S$ReScriptStruct = require("rescript-struct/src/S.bs.js");

Dotenv.config(undefined);

var nodeEnv = Process.env;

var envStruct = S$ReScriptStruct.object(function (o) {
      return {
              host: S$ReScriptStruct.field(o, "HOST", Codec.raiseFromOption(S$ReScriptStruct.option(S$ReScriptStruct.string(undefined)))),
              port: S$ReScriptStruct.field(o, "PORT", Codec.raiseFromOption(S$ReScriptStruct.option(Codec.stringToInt(S$ReScriptStruct.string(undefined))))),
              authDomain: S$ReScriptStruct.field(o, "AUTH_DOMAIN", Codec.raiseFromOption(S$ReScriptStruct.option(S$ReScriptStruct.string(undefined)))),
              champDomain: S$ReScriptStruct.field(o, "CHAMP_DOMAIN", Codec.raiseFromOption(S$ReScriptStruct.option(S$ReScriptStruct.string(undefined)))),
              champApiLoginId: S$ReScriptStruct.field(o, "CHAMP_API_LOGIN_ID", Codec.raiseFromOption(S$ReScriptStruct.option(S$ReScriptStruct.string(undefined)))),
              champApiPassword: S$ReScriptStruct.field(o, "CHAMP_API_PASSWORD", Codec.raiseFromOption(S$ReScriptStruct.option(S$ReScriptStruct.string(undefined)))),
              mongoUri: S$ReScriptStruct.field(o, "MONGO_URI", Codec.raiseFromOption(S$ReScriptStruct.option(S$ReScriptStruct.string(undefined))))
            };
    });

function decodeEnv(env) {
  console.log("start DecodeEnv");
  var res = S$ReScriptStruct.parseWith(env, envStruct);
  console.log("DecodeEnv result: ", res);
  return res;
}

var decodedEnv = S$ReScriptStruct.parseWith(nodeEnv, envStruct);

exports.nodeEnv = nodeEnv;
exports.envStruct = envStruct;
exports.decodeEnv = decodeEnv;
exports.decodedEnv = decodedEnv;
/*  Not a pure module */
