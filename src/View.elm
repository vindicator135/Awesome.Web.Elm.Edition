module View exposing (..)

import Html exposing (..)
import Models exposing (Model)
import Messages exposing (Msg(BlogMsg))
import Blogs.List
import Blogs.View
import Routing exposing (..)


view : Model -> Html Msg
view model =
    case model.route of
        BlogListRoute ->
            div []
                [ Html.map BlogMsg <| Blogs.List.view model.blogs
                , displayRoute <| model.route
                ]
        BlogEntryRoute blogId ->
            div []
                [ Html.map BlogMsg <| Blogs.View.readView <| List.first model.blogs
                , displayRoute <| model.route
                ]


displayRoute : Route -> Html Msg
displayRoute route =
    case route of
        BlogEntryRoute blogId ->
            text (toString blogId)

        BlogListRoute ->
            text "List Route"

        _ ->
            text "Nothing"
