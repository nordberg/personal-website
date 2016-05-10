import Website exposing (init, update, model, view)
import Html.App exposing (beginnerProgram)


main =
  beginnerProgram { model = model, update = update, view = view }
