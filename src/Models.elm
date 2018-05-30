module Models exposing (..)

import Messages exposing (Msg(BlogMsg))
import Blogs.Models exposing (Blog)
import Blogs.Commands


type alias Model =
    { blogs : List Blog
    }


emptyModel : Model
emptyModel =
    { blogs = [] }


init : ( Model, Cmd Msg )
init =
    let
        model =
            Model [ Blog 1 "3 Tips to successfully land your IELTS" "The International English Language Testing System (IELTS) is one among many great feats every aspiring migrant gets to hurdle with. It will definitely greet you on your way along your visa journey. If you're like me, you may have had that same inkling to just curse upon this irksome requirement. But curse as we might, IELTS is there to stay and we just have to do it." "03 May 2016" ]

        cmds =
            Cmd.batch
                [ Cmd.map BlogMsg Blogs.Commands.fetchAll ]
    in
        ( model, cmds )
