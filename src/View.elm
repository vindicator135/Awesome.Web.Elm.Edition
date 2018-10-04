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
    , body = [ (headerView model)
             , (mainContentsView model)
             , footerView
             ]
    }
        


mainContentsView : Model -> Html Msg
mainContentsView model =
    let
        centerContents =
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

        x = Debug.log "mainContentsView" model

        rightContents =
            div [ class "col-sm-4" ]
                [ text "Right content" ]
    in
        div [ class "container" ]
            [ div [ class "row" ]
                [ centerContents
                , rightContents
                ]
            ]


headerView : Model -> Html Msg
headerView model =
    let
        title =
            div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-sm-6"
                          , style "background" "url(\"\\images\\custom\\main-logo-300x102.png\")"
                          , style "height" "102px" ]
                        []
                    , div [ class "col-sm-6" ]
                        []
                    ]
                ]

        subHeader blogs =
            Html.map BlogMsg <| Blogs.List.view blogs
    in
        div []
            [ title
            , subHeader model.blogs
            ]


footerView : Html Msg
footerView =
    div []
        []
