module Models exposing (..)

import Messages exposing (Msg(BlogMsg))
import Blogs.Models exposing (Blog)
import Blogs.Commands
import Navigation exposing (Location)
import Routing exposing (..)


type alias Model =
    { blogs : List Blog
    , route : Route
    }


init : Location -> ( Model, Cmd Msg )
init location =
    let
        model =
            Model
                [ Blog 1 "3 Tips to successfully land your IELTS" "<strong>If you ever wonder..</strong>" "The International English Language Testing System (IELTS) is one among many great feats every aspiring migrant gets to hurdle with." "03 May 2016"
                , Blog 2 "Expat tips to save money" "There's not enough money at the end of the time." "ASdasd asdas dasd asd asdasd as d<h4>dasdasdsad</h4>" "04 June 2016"
                , Blog 3 "Tips to save some" "More more more" "Ewewewewe welkjkljadsa asd asdasdas dasdas d<h4>dasdasdsad</h4>" "04 June 2016"
                ]
                (parseLocation location)

        cmds =
            Cmd.batch
                [ Cmd.map BlogMsg Blogs.Commands.fetchAll ]
    in
        ( model, cmds )
