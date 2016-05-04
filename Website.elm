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
    [ div [ ] [ div [ headerContent ] [ text (model.name) ]]
    , div [ ] [ div [ bodyContent ] [ text (toString model.age) ]]
    , div [ ] [ div [ socialContent ] [ text ("Twitter: " ++ socialModel.twitter) ]]
    ]

headerContent : Attribute
headerContent =
  style
    [ ("font-size", "64px")
    , ("font-family", designModel.brandFont)
    , ("color", designModel.primaryColor)
    , ("display", "block")
    , ("height", "200px")
    , ("text-align", "center")
    , ("background-color", designModel.backgroundColor)
    ]

bodyContent : Attribute
bodyContent =
  style
    [ ("font-size", "24px")
    , ("font-family", designModel.accentFont)
    , ("display", "inline-block")
    , ("text-align", "center")
    ]

socialContent : Attribute
socialContent =
  style
    [ ("font-size", "18px")
    , ("font-family", designModel.accentFont)
    , ("display", "inline-block")
    , ("text-align", "center")
    ]
