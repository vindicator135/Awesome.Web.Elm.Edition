module View exposing (view)

import Blogs.View as Blogs
import Browser exposing (Document)
import Error.View as Error
import Html exposing (..)
import Html.Attributes exposing (..)
import Message exposing (Msg(..))
import Model exposing (Model, PageState(..))


view : Model -> Document Msg
view model =
    { title = "A Journey To Awesome"
    , body =
        [ contents model
        ]
    }


contents : Model -> Html Msg
contents model =
    let
        header =
            nav [ class "navbar navbar-default navbar-fixed-top nav-transparent overlay-nav sticky-nav nav-border-bottom no-transition", attribute "role" "navigation" ]
                [ div [ class "container" ]
                    [ div [ class "row" ]
                        [ div [ class "col-md-3 col-sm-3 col-xs-6" ]
                            []
                        , text "                    "
                        , div [ class "navbar-header" ]
                            [ button [ class "navbar-toggle", attribute "data-target" ".navbar-collapse", attribute "data-toggle" "collapse", type_ "button" ]
                                [ span [ class "sr-only" ]
                                    [ text "Toggle navigation" ]
                                , span [ class "icon-bar" ]
                                    []
                                , span [ class "icon-bar" ]
                                    []
                                , span [ class "icon-bar" ]
                                    []
                                ]
                            ]
                        , div [ class "col-md-9 text-right" ]
                            [ div [ class "navbar-collapse collapse" ]
                                [ ul [ class "nav navbar-nav navbar-right" ]
                                    [ li []
                                        [ a [ class "inner-link", href "#/blogs" ]
                                            [ text "Blogs" ]
                                        ]
                                    ]
                                , text "                        "
                                ]
                            ]
                        ]
                    ]
                ]

        body =
            case model.pageState of
                Loading ->
                    [ div [] [ text "Still loading data" ] ]

                Loaded ->
                    Blogs.view model.blogs
                        |> List.map (Html.map BlogsMsg)

                Error message ->
                    [ Error.view message ]
    in
    div [] <|
        (header
            :: body
        )
