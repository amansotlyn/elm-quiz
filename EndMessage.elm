module EndMessage exposing (view)

import Html exposing (Html, h1, text)
import QuizTypes


endMessage : Int -> String
endMessage percentage =
    if percentage == 100 then
        "You're a Turtle Expert!"
    else if percentage > 90 then
        "A Wise Turtle You Are."
    else if percentage > 80 then
        "You should pay more attention to your turtles!"
    else if percentage > 70 then
        "Are you sure you're a turtle?"
    else if percentage > 60 then
        "Do you even like turtles?"
    else if percentage > 50 then
        "You must be a Shoebill!"
    else
        "Honestly....just try again..."


view : Int -> Html QuizTypes.Msg
view percentage =
    h1 [] [ text ((endMessage percentage) ++ " You got:") ]
