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
        mainContainer =
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ mainContents
                    , rightContents
                    ]
                ]
            ]

        mainContents =
            case model.route of
                BlogListRoute ->
                    div [ class "col-sm-8" ] []

                BlogEntryRoute blogId ->
                    div [ class "col-sm-8" ]
                        [ Html.map BlogMsg <|
                            Blogs.View.listReadView blogId <|
                                List.sortBy (\blog -> blog.blogId) model.blogs
                        ]

                NotFoundRoute ->
                    div [ class "col-sm-8" ] [ text "Route not defined" ]

        rightContents =
            div [ class "col-sm-4" ]
                [ text "Right content" ]
    in
        div []
            ((Html.map BlogMsg <| Blogs.List.view model.blogs) :: mainContainer)
