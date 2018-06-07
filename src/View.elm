module View exposing (..)

import Html exposing (..)
import Models exposing (Model)
import Messages exposing (Msg(BlogMsg))
import Blogs.List
import Routing exposing (..)


view : Model -> Html Msg
view model =
    div []
        [ Html.map BlogMsg <| Blogs.List.view model.blogs
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
