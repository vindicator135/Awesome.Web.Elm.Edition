module Blogs.View exposing (..)

import Html exposing (..)
import Blogs.Models exposing (Blog)

readView : Blog -> Html Msg
readView blog =
    div []
        [ header blog.title blog.published
        , body blog.content
        ]

header : String -> String -> Html Msg 
header title publised =
    div []
        [ h1 [] [ text title ] 
        , h2 [] [ text published ]
        ]