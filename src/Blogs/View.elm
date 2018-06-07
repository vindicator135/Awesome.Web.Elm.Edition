module Blogs.View exposing (..)

import Html exposing (..)
import Blogs.Models exposing (Blog)
import Blogs.Messages exposing (..)

readView : Blog -> Html Msg
readView blog =
    div []
        [ header blog.title blog.published
        ]

header : String -> String -> Html Msg 
header title published =
    div []
        [ h1 [] [ text title ] 
        , h2 [] [ text published ]
        ]

emptyBlog : Blog
emptyBlog =
    Blog 0 "n/a" "n/a" "never published"
