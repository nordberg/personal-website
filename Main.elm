import Website exposing (update, model, view)
import StartApp.Simple exposing (start)


main =
  start { model = model, update = update, view = view }
