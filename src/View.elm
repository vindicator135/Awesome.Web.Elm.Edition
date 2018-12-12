module View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Models exposing (Model)
import Messages exposing (Msg(..))
import Blogs.List
import Blogs.View
import Blogs.Models exposing (..)
import Routing exposing (..)
import Blogs.View exposing (..)
import Browser exposing (Document)


view : Model -> Document Msg
view model =
    { title = "A Journey To Awesome"
    , body =
        [ (mainContentsView model)
        ]
    }


mainContentsView : Model -> Html Msg
mainContentsView model =
    let
        header blogs =
            [ Html.map BlogMsg <| Blogs.List.view blogs ]

        title =
            [ div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-sm-6" ]
                        [ div [ class "logo-image-300w-102h mt-3 mb-3" ]
                            []
                        ]
                    , div [ class "col-sm-6" ]
                        []
                    ]
                ]
            ]

        body : Route -> List Blog -> List (Html Msg)
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
                    [ div [ class "col-sm-8" ] [ text "Route not defined" ] ]

        footer =
            []
    in
        div []
            [ section [] <| title
            , section [] <| header model.blogs
            , section [] <| [ div [ class "col-sm-12" ] <| body model.route model.blogs ]
            , section [] <| footer
            ]
