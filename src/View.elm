module View exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Model exposing (Model, PageState(..))
import Message exposing (Msg(..))
import Blogs.View as Blogs
import Browser exposing (Document)
import Error.View as Error


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
            div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-sm-6" ]
                        [ div [ class "logo-image-300w-102h mt-3 mb-3" ]
                            []
                        ]
                    , div [ class "col-sm-6" ]
                        []
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
        div []
            <| (header
            :: body)
