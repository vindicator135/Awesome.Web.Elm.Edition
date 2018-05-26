module View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Models exposing (Model)
import Messages exposing (Msg(BlogMsg))
import Blogs.List

view : Model -> Html Msg
view model =
    div []
        [ Html.map BlogMsg <| Blog.List.view model.blogs
        ]