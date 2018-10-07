module Blogs.View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (property, class, style)
import Json.Encode exposing (string)
import Blogs.Models exposing (Blog, emptyBlog)
import Blogs.Messages exposing (..)


readView : Blog -> Html Msg
readView blog =
    div []
        [ pretitle blog.pretitle
        , header "" blog.title blog.published
        , htmlPrelude blog.precontent
        , hr [] []
        , htmlBody blog.content
        ]


listReadView : Int -> List Blog -> Html Msg
listReadView blogId blogs =
    let
        firstEntry =
            Maybe.withDefault emptyBlog <| List.head <| List.filter (\b -> b.blogId == blogId) blogs
    in
        readView firstEntry



-- <h3 class="pb-3 mb-4 font-italic border-bottom">
--             From the Firehose
--           </h3>
-- <p class="blog-post-meta">January 1, 2014 by <a href="#">Mark</a></p>


pretitle : String -> Html Msg
pretitle title =
    h3 [ class "pb-3 mb-4 font-italic border-bottom" ] [ text title ]


header : String -> String -> String -> Html Msg
header _ title published =
    div [ class "blog-post" ]
        [ h1 [] [ text title ]
        , p [ style "color" "#999" ] [ text published ]
        ]


prelude : String -> Html Msg
prelude pretext =
    div []
        [ p [] [ text pretext ] ]


htmlPrelude : String -> Html Msg
htmlPrelude preludeText =
    div [ property "innerHTML" <| Json.Encode.string preludeText ] []


htmlBody : String -> Html Msg
htmlBody content =
    div [ property "innerHTML" <| Json.Encode.string content ] []
