let uri = "https://api.github.com/users"

let postBanana = () => {
  // open Fetch

  let res = Fetch.fetch(
    uri,
    {
      method: #POST,
      // body: data->Js.Json.stringifyAny->Belt.Option.getExn->Body.string,
      headers: Fetch.Headers.fromObject({
        "Content-type": "application/json",
      }),
    },
  )

  res->Promise.then(Fetch.Response.json)
}
