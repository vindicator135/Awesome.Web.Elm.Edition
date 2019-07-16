module View exposing (view)

import Blogs.View as Blogs
import Browser exposing (Document)
import Error.View as Error
import Html exposing (..)
import Html.Attributes exposing (..)
import Message exposing (Msg(..))
import Model exposing (Model, PageState(..), DataState(..))
import Home.View as Home


view : Model -> Document Msg
view model =
    { title = "A Journey To Awesome"
    , body =
        [ contents model
        ]
    }


contents : Model -> Html Msg
contents model =
    div [] 
        <|  case model.pageState of
                Loading ->
                    [ div [] [ text "Still loading data" ] ]

                Loaded ->
                    case model.dataState of
                        BlogState blogState ->
                            Blogs.view blogState
                                |> List.map (Html.map BlogsMsg)
                        
                        MainState ->
                            [ Home.view ]

                Error message ->
                    [ Error.view message ]