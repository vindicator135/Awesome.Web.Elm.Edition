module Models exposing (..)

import Messages exposing (Msg(BlogMsg))
import Blogs.Models exposing (Blog)
import Blogs.Commands


type alias Model =
    { blogs : List Blog
    }

type Route =
    BlogListRoute
    | BlogEntryRoute Int
    | NoFoundRoute


emptyModel : Model
emptyModel =
    { blogs = [] }


init : ( Model, Cmd Msg )
init =
    let
        model =
            Model [ Blog 1 "3 Tips to successfully land your IELTS" "The International English Language Testing System (IELTS) is one among many great feats every aspiring migrant gets to hurdle with." "03 May 2016" 
                , Blog 2 "Expat tips to save money" "There's not enough money at the end of the time." "04 June 2016"
                ]

        cmds =
            Cmd.batch
                [ Cmd.map BlogMsg Blogs.Commands.fetchAll ]
    in
        ( model, cmds )
