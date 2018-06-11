module View exposing (..)

import Html exposing (..)
import Models exposing (Model)
import Messages exposing (Msg(BlogMsg))
import Blogs.List
import Blogs.View
import Routing exposing (..)
import Blogs.View exposing (..)


view : Model -> Html Msg
view model =
    case model.route of
        BlogListRoute ->
            div []
                [ Html.map BlogMsg <| Blogs.List.view model.blogs
                ]
        
        BlogEntryRoute blogId ->
            div []
                [ Html.map BlogMsg <| Blogs.List.view model.blogs
                , Html.map BlogMsg <| Blogs.View.readView (Maybe.withDefault emptyBlog <| List.head <| List.filter (\blog -> blog.blogId == blogId) model.blogs)
                ]

        NotFoundRoute ->
            div []
                [ text "Route not defined"]