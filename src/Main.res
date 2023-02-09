let uri = "https://api.github.com/users"

let postBanana = async () => {
  // open Fetch

  let res = Http.get({
    // method: #POST,
    // body: data->Js.Json.stringifyAny->Belt.Option.getExn->Body.string,
    url: uri,
    headers: [("Content-type", "application/json")],
  })

  switch await res {
  | Ok(success) => Js.log2("Success: ", success)
  | Error(err) => Js.log2("switch Error: ", err)
  }
}

let result = postBanana()

Console.log2("result: ", result)
