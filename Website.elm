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
    [ div [ ] [ div [ headerContent ] [ text (toString model) ]]
    , div [ ] [ div [ bodyContent ] [ text (toString model) ]]
    ]

headerContent : Attribute
headerContent =
  style
    [ ("font-size", "35px")
    , ("font-family", "Roboto")
    , ("display", "inline-block")
    , ("text-align", "center")
    ]

bodyContent : Attribute
bodyContent =
  style
    [ ("font-size", "24px")
    , ("font-family", "Liberation")
    , ("display", "inline-block")
    , ("text-align", "center")
    ]
