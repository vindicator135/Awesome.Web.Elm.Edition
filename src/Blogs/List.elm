module  Blogs.List exposing (..)

import Html exposing (..)
import Blogs.Messages exposing (Msg(..))
import Blogs.Models exposing (Blog)

view : List Blog -> Html Msg
view blogs =
    div []
        [ table []
            [ thead []
                [ cell th [ text "ID"]
                , cell th [ text "Title"]
                , cell th [ text "Content"]
                , cell th [ text "Published"]
                ]
            , tbody [] <| List.map blogView <| blogs
            ]
        ]

blogView : Blog -> Html Msg
blogView blog =
    tr []
        [ cell td [ text blog.blogId]
        , cell td [ text blog.title]
        , cell td [ text blog.content.]
        , cell td [ text blog.published ]
        ]