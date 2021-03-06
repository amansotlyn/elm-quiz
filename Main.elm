module Main exposing (main)

import Quiz exposing (update, view, Model)
import QuizTypes exposing (Msg)
import Array exposing (fromList, empty)
import Html exposing (beginnerProgram)
import Markdown


model : Quiz.Model
model =
    { questionId =
        -1
        -- Show Instructions
    , questions =
        Array.fromList
        [ ( True, "Gersh loves it when we chant his name." )
        , ( True, "Jared's secret identity is Tarf." )
        , ( False, "Jason never interupts people when they are talking." )
        , ( False, "Kaitlyn computer can use AirPlay." )
        , ( True, "Amanda loves craft beers." )
        , ( True, "Tims has a squirrel.")
        , ( True, "Brett never closes his eyes while typing.")
        , ( False, "Taka hates Kung Fury.")
        , ( False, "Trevor's nickname is T-Poverty.")
        , ( True, "Deise is attacked everytime she uses slack.")
        ]
    , correctAnswers = Array.empty
    , wrongAnswers = Array.empty
    , buttonTrue = ( "True", "navy" )
    , buttonFalse = ( "False", "orange" )
    , instructionsComponent =
        Markdown.toHtml [] """
# True or False
## How to Play
  - A question will appear.
  - Click *True* if you think the answer is true.
  - Click *False* if you think the answer is false.
"""
    }


main : Program Never Model QuizTypes.Msg
main =
    Html.beginnerProgram { model = model, view = view, update = update }
