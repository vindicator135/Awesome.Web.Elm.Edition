module View exposing (..)

import Html exposing (..)
import Models exposing (Model)
import Messages exposing (Msg(BlogMsg))
import Blogs.List


view : Model -> Html Msg
view model =
    div []
        [ Html.map BlogMsg <| Blogs.List.view model.blogs
        ]
