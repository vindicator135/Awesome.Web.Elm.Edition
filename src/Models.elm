module Models exposing (..)

import Messages exposing (Msg(..))
import Blogs.Models exposing (Blog)
import Blogs.Commands
import Routing exposing (..)

import Url exposing (Url)
import Browser.Navigation exposing (Key)

type alias Model =
    { blogs : List Blog
    , route : Route
    , key : Key
    }


init: Url -> Key -> ( Model, Cmd Msg )
init url key =
    let
        model =
            Model
                [ Blog 1 "Language Tests" "3 Tips to successfully land your IELTS" "<strong>If you ever wonder..</strong>" "The International English Language Testing System (IELTS) is one among many great feats every aspiring migrant gets to hurdle with." "03 May 2016"
                , Blog 2 "From Down Under" "Expat tips to save money" "There's not enough money at the end of the time." "ASdasd asdas dasd asd asdasd as d<h4>dasdasdsad</h4>" "04 June 2016"
                , Blog 3 "From Down Under" "Tips to save some" "More more more" "Ewewewewe welkjkljadsa asd asdasdas dasdas d<h4>dasdasdsad</h4>" "04 June 2016"
                ]
                (parseUrl url)
                key

        cmds =
            Cmd.batch
                [ Cmd.map BlogMsg Blogs.Commands.fetchAll ]
    in
        ( model, cmds )
