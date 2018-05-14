module Main exposing (..)

import Html exposing (..)

main : Program (Maybe Model) Model Msg
main = 
    Html.programWithFlags
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none 
        }

type alias Blog =
    { blogId : Int
    , title : String
    , content : String
    , published : String
    }

type alias Model =
    { blogs : List Blog
    }

emptyModel : Model
emptyModel = { blogs = [] }

init : Maybe Model -> ( Model, Cmd Msg)
init currentModel =
    Maybe.withDefault emptyModel currentModel ! []

type Msg
    = NoOp
    | ViewBlog Int

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            model ! []
        ViewBlog blogId ->
            model ! []

view : Model -> Html Msg
view model =
    div
        []
        [ label [] [text "Yehey"]] 