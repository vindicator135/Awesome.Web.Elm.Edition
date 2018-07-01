module Blogs.List exposing (..)

import Html exposing (..)
import Html.Attributes exposing (style, href, class)
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
    div [ class "container" ]
        [ subDisplayView blogs
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


subDisplayView : List Blog -> Html Msg
subDisplayView blogs =
    let
        latestTwoBlogs = List.take 2 blogs

        blogSubDisplay blog =
            div 
                [ class "col-sm-6" ] 
                [ div [ class "card flex-md-row mb-4 box-shadow", style [("height","250px")] ] 
                      [ div 
                        [ class "col-sm-8" ] 
                        [ strong [ class "d-inline-block mb-2 text-primary" ] [ text "World" ] 
                        , h3 [ ] [ darkLinkedText ("#/blogs/" ++ (toString blog.blogId)) blog.title ]]
                      , div [ class "col-sm-4", style [ ("background","green") ] ] [ text "Blog image" ]
                      ] 
                ]
    in
        div [ class "row" ]
            <| List.map blogSubDisplay latestTwoBlogs

linksView : List Blog -> Html Msg
linksView blogs =
    table []
        [ thead []
            [ cell th [ text "ID" ]
            , cell th [ text "Title" ]
            , cell th [ text "" ] ]
        , tbody [] <| List.map linkView <| blogs
        ]

linkedText : String -> String -> String -> Html Msg
linkedText relativePath className displayText =
    a [ href relativePath
      , class className] 
      [ p [] [ text displayText ] ]

darkLinkedText : String -> String -> Html Msg
darkLinkedText relativePath displayText =
    linkedText relativePath "text-dark" displayText

defaultLinkedText : String -> String -> Html Msg
defaultLinkedText relativePath displayText =
    linkedText relativePath "" displayText

linkView : Blog -> Html Msg
linkView blog =
    tr []
        [ cell td [ text <| toString blog.blogId ]
        , cell td [ text <| toString blog.title ]
        , cell td [ defaultLinkedText ("#/blogs/" ++ (toString blog.blogId)) "View" ]
        ]
