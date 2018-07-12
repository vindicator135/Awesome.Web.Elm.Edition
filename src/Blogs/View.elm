module Blogs.View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (property, class)
import Json.Encode exposing (string)
import Blogs.Models exposing (Blog)
import Blogs.Messages exposing (..)


readView : Blog -> Html Msg
readView blog =
    div []
        [ pretitle blog.pretitle
        , header blog.pretitle blog.title blog.published
        , htmlPrelude blog.pretext
        , htmlBody blog.content
        ]
        



-- <h3 class="pb-3 mb-4 font-italic border-bottom">
--             From the Firehose
--           </h3>
-- <p class="blog-post-meta">January 1, 2014 by <a href="#">Mark</a></p>


pretitle : String -> Html Msg
pretitle pretitle =
    h3 [ class "pb-3 mb-4 font-italic border-bottom" ] [ text pretitle ]


header : String -> String -> String -> Html Msg
header pretitle title published =
    div [ class "blog-post" ]
        [ h1 [] [ text title ]
        , p [ class "blog-post-meta" ] [ text published ]
        ]


prelude : String -> Html Msg
prelude pretext =
    div []
        [ p [] [ text pretext ] ]


htmlPrelude : String -> Html Msg
htmlPrelude prelude =
    div [ property "innerHTML" <| Json.Encode.string prelude ] []


htmlBody : String -> Html Msg
htmlBody content =
    div [ property "innerHTML" <| Json.Encode.string content ] []
