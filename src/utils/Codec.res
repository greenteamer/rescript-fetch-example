let intToString = struct =>
  struct->S.transform(
    ~parser=int => int->Js.Int.toString,
    ~serializer=string =>
      switch string->Belt.Int.fromString {
      | Some(int) => int
      | None => S.Error.raise("Can't convert string to int")
      },
    (),
  )

let stringToInt = i =>
  i->S.transform(
    ~parser=str =>
      switch str->Int.fromString {
      | Some(int) => int
      | None => S.Error.raise("Can't convert string to int")
      },
    ~serializer=int => int->Int.toString,
    (),
  )

let raiseFromOption = struct =>
  struct->S.transform(
    ~parser=i =>
      switch i {
      | Some(i) => i
      | None => S.Error.raise("None is not accepted")
      },
    ~serializer=i => Some(i),
    (),
  )
