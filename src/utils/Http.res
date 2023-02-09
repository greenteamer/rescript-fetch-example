type credentials = [#"include" | #omit | #"same-origin"]
type headers = array<(string, string)>
type mothod = [#GET | #POST | #PUT | #DELETE | #HEAD | #PATCH | #OPTIONS]
type mode = [#cors | #"no-cors" | #"same-origin" | #navigate]
type redirect = [#error | #follow | #manual]

type init = {
  url: string,
  method?: mothod,
  credentials?: credentials,
  headers?: headers,
  mode?: mode,
  redirect?: redirect,
}

type httpResponse = {
  ok: bool,
  status: int,
  statusText: string,
  // json: unit => promise<unknown>,
}

@module
external axios: init => promise<Belt.Result.t<httpResponse, unknown>> = "axios"

let get = config => {
  Console.log("start get function")
  Console.log2("config: ", config)
  axios(config)
}

// let httpStruct = S.object(o => {
//   ok: o->S.field("ok", S.bool()),
//   status: o->S.field("status", S.int()),
//   statusText: o->S.field("statusText", S.string()),
//   // json: o->S.field("json", S.unknown()->S.json),
// })

// let someRaw = async () => {
//   Console.log("start someRaw function")
//   let result = await fetch(
//     "https://httpbin.org/get",
//     {
//       method: #GET,
//       headers: [("Content-Type", "application/json")],
//       mode: #cors,
//       credentials: #omit,
//       redirect: #follow,
//     },
//   )
//   Console.log(result)
// }

// let res = someRaw()
