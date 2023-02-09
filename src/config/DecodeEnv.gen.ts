/* TypeScript file generated from DecodeEnv.res by genType. */
/* eslint-disable import/first */


// @ts-ignore: Implicit any on import
const DecodeEnvBS = require('./DecodeEnv.bs');

import type {S_Error_t as ReScriptStruct_S_Error_t} from 'rescript-struct/ReScriptStruct.gen';

import type {S_t as ReScriptStruct_S_t} from 'rescript-struct/ReScriptStruct.gen';

// tslint:disable-next-line:interface-over-type-literal
export type config = {
  readonly host: string; 
  readonly port: number; 
  readonly authDomain: string; 
  readonly champDomain: string; 
  readonly champApiLoginId: string; 
  readonly champApiPassword: string; 
  readonly mongoUri: string
};

export const envStruct: ReScriptStruct_S_t<config> = DecodeEnvBS.envStruct;

export const decodeEnv: <T1>(env:T1) => 
    { tag: "Ok"; value: config }
  | { tag: "Error"; value: ReScriptStruct_S_Error_t } = function <T1>(Arg1: any) {
  const result = DecodeEnvBS.decodeEnv(Arg1);
  return result.TAG===0
    ? {tag:"Ok", value:result._0}
    : {tag:"Error", value:result._0}
};
