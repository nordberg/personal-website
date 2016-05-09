module Website (model, update, Action, view) where

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Signal exposing (Signal, Address)
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

type Action = NewName

update : Action -> Model -> Model
update action model =
  case action of
    NewName -> model

-- VIEW

view : Signal.Address Action -> Model -> Html
view address model =
  div []
    [ div [ header ]
      [ text (model.name) ]
    , div [ ]
      [ div [ bodyContent ] [ text "Welcome to my website! As you might notice, I am still settling in." ]
      , div [ footer ] [ text "Created with Elm. I think." ]
      ]
  ]

body : Attribute
body =
  style
    [ ("display", "block")
    , ("height", "100%")
    , ("min-height", "100%")
    ]

header : Attribute
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

bodyContent : Attribute
bodyContent =
  style
    [ ("font-size", "2em")
    , ("font-family", designModel.accentFont)
    , ("display", "block")
    , ("text-align", "center")
    ]

socialContent : Attribute
socialContent =
  style
    [ ("font-size", "1em")
    , ("font-family", designModel.accentFont)
    , ("display", "inline-block")
    , ("text-align", "center")
    ]

footer : Attribute
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
