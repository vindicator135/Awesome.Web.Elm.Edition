module Models exposing (..)

import Messages exposing (Msg(BlogMsg))
import Blogs.Models exposing (Blog)
import Blogs.Commands

type alias Model =
    { blogs : List Blog
    }

emptyModel : Model
emptyModel = { blogs = [] }

init : ( Model, Cmd Msg)
init =
    let
        model = 
            Model []
        cmds =
            Cmd.batch
                [ Cmd.map BlogMsg Blogs.Commands.fetchAll ]
    in
        ( model, cmds)        
    

type Msg
    = NoOp
    | ViewBlog Int