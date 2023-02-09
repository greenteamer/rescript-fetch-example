Dotenv.config()

let nodeEnv = Node.Process.process["env"]

@genType
type config = {
  host: string,
  port: int,
  authDomain: string,
  champDomain: string,
  champApiLoginId: string,
  champApiPassword: string,
  mongoUri: string,
}

@genType
let envStruct = S.object(o => {
  host: o->S.field("HOST", S.string()->S.option->Codec.raiseFromOption),
  port: o->S.field("PORT", S.string()->Codec.stringToInt->S.option->Codec.raiseFromOption),
  authDomain: o->S.field("AUTH_DOMAIN", S.string()->S.option->Codec.raiseFromOption),
  champDomain: o->S.field("CHAMP_DOMAIN", S.string()->S.option->Codec.raiseFromOption),
  champApiLoginId: o->S.field("CHAMP_API_LOGIN_ID", S.string()->S.option->Codec.raiseFromOption),
  champApiPassword: o->S.field("CHAMP_API_PASSWORD", S.string()->S.option->Codec.raiseFromOption),
  mongoUri: o->S.field("MONGO_URI", S.string()->S.option->Codec.raiseFromOption),
})

@genType
let decodeEnv = env => {
  Console.log("start DecodeEnv")
  let res = env->S.parseWith(envStruct)
  Console.log2("DecodeEnv result: ", res)
  res
}

let decodedEnv = nodeEnv->S.parseWith(envStruct)
