module Blogs.List exposing (..)

import Html exposing (..)
import Html.Attributes exposing (style, href)
import Blogs.Messages exposing (Msg(..))
import Blogs.Models exposing (Blog)


cellStyle : List ( String, String )
cellStyle =
    [ ( "textAlign", "left" )
    , ( "padding", "10px" )
    ]


cell :
    (List (Attribute msg) -> a -> b)
    -> a
    -> b -- make a cell (th or td) with the pre-set style attribute
cell el children =
    el [ style cellStyle ] children


view : List Blog -> Html Msg
view blogs =
    div []
        [ linksView blogs
        ]


blogsListView : List Blog -> Html Msg
blogsListView blogs =
    table []
        [ thead []
            [ cell th [ text "ID" ]
            , cell th [ text "Title" ]
            , cell th [ text "Content" ]
            , cell th [ text "Published" ]
            ]
        , tbody [] <| List.map blogView <| blogs
        ]


blogView : Blog -> Html Msg
blogView blog =
    tr []
        [ cell td [ text <| toString blog.blogId ]
        , cell td [ text blog.title ]
        , cell td [ text blog.content ]
        , cell td [ text blog.published ]
        ]


linksView : List Blog -> Html Msg
linksView blogs =
    table []
        [ thead []
            [ cell th [ text "ID" ]
            , cell th [ text "Title" ]
            , cell th [ text "" ] ]
        , tbody [] <| List.map linkView <| blogs
        ]


linkView : Blog -> Html Msg
linkView blog =
    tr []
        [ cell td [ text <| toString blog.blogId ]
        , cell td [ text <| toString blog.title ]
        , cell td [ a [ href <| "/blogs/" ++ toString blog.blogId ] [ p [ ] [ text "View" ] ] ]
        ]