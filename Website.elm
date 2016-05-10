module Website exposing (init, model, update, Msg, view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import String

-- MODEL

type alias Model = {name: String, age: Int}
type alias DesignModel = {brandFont: String, accentFont: String,
  primaryColor: String, accentColor: String, backgroundColor: String}
type alias SocialModel = {twitter: String, github: String}

model : Model
model = {name = "MARCUS NORDBERG", age = 23}

designModel : DesignModel
designModel = {brandFont = "Roboto", accentFont = "Liberation",
  primaryColor = "#4CAF50", accentColor = "#2E7D32", backgroundColor = "#E8F5E9"}

socialModel : SocialModel
socialModel = {twitter = "@marcusnordberg", github = "nordberg"}

-- UPDATE

init = model

type Msg = NewName

update : Msg -> Model -> Model
update message model =
  case message of
    NewName -> model

-- VIEW

view : Model -> Html Msg
view model =
  div []
    [ div [ header ]
      [ text (model.name) ]
    , div [ ]
      [ div [ bodyContent ] [ text "Welcome to my website! As you might notice, I am still settling in." ]
      , div [ footer ] [ text "Created with Elm. I think." ]
      ]
  ]

body =
  style
    [ ("display", "block")
    , ("height", "100%")
    , ("min-height", "100%")
    ]

header =
  style
    [ ("font-size", "4em")
    , ("font-family", designModel.brandFont)
    , ("color", designModel.primaryColor)
    , ("display", "block")
    , ("height", "30%")
    , ("text-align", "center")
    , ("background-color", designModel.backgroundColor)
    ]

bodyContent =
  style
    [ ("font-size", "2em")
    , ("font-family", designModel.accentFont)
    , ("display", "block")
    , ("text-align", "center")
    ]

socialContent =
  style
    [ ("font-size", "1em")
    , ("font-family", designModel.accentFont)
    , ("display", "inline-block")
    , ("text-align", "center")
    ]

footer =
  style
    [ ("font-size", ".8em")
    , ("position", "fixed")
    , ("bottom", "0")
    , ("right", "0")
    , ("left", "0")
    , ("height", "3em")
    , ("background-color", designModel.backgroundColor)
    , ("font-family", designModel.accentFont)
    , ("text-align", "center")
    , ("vertical-align", "middle")
    ]
