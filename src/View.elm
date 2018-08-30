module View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Models exposing (Model)
import Messages exposing (Msg(BlogMsg))
import Blogs.List
import Blogs.View
import Blogs.Models exposing (..)
import Routing exposing (..)
import Blogs.View exposing (..)


view : Model -> Html Msg
view model =
    let
        section contents =
            div [ class "container" ]
                [ div [ class "row" ]
                    contents
                ]

        banner =
            [ div [ class "logo-image-300w-102h mt-3 mb-3" ] [] ]

        header blogs =
            [ Html.map BlogMsg <| Blogs.List.view blogs ]

        body route blogs =
            case route of
                BlogListRoute ->
                    []

                BlogEntryRoute blogId ->
                    [ List.filter (\blog -> blog.blogId == blogId) blogs
                        |> List.head
                        |> Maybe.withDefault emptyBlog
                        |> Blogs.View.readView
                        |> Html.map BlogMsg
                    ]

                NotFoundRoute ->
                    [ text "Route not defined" ]

        footer =
            []
    in
        div []
            [ section <| banner
            , section <| header model.blogs
            , section <| [ div [ class "col-sm-12" ] <| body model.route model.blogs ]
            , section <| footer
            ]
