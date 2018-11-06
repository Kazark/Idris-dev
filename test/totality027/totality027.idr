%default total

data TAction
  = Transmogrify
  | Teleport
  | Timetravel

Eq TAction where
  Transmogrify == Transmogrify = True
  Teleport == Teleport = True
  Timetravel == Timetravel = True
  _ == _ = False

StrMap : List (TAction, String)
StrMap =
  [ (Transmogrify, "transmogrify")
  , (Timetravel, "timetravel")
  ]

Str_map_exhaustive : (a : TAction) -> Not (List.lookup a StrMap = Nothing)
Str_map_exhaustive _ Refl impossible
