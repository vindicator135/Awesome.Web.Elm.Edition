module Update exposing (update)

import Init exposing (init)
import Message exposing (Msg(..))
import Model exposing (Model, PageState(..))
import Routing exposing (..)
import Browser exposing (..)
import Browser.Navigation as Nav
import Url as Url
import Blogs.Update as Blogs


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        BlogsMsg blogsMsg ->
            let
                subModel =
                    Blogs.update blogsMsg model.blogs
                
                pageState =
                    if model.pageState == Loading then Loaded else Loading
                            
            in
            ( { model | pageState = pageState, blogs = subModel } 
            , Cmd.none
            )

        OnLocationChange url ->
            init url model.key
            
        OnUrlRequest urlRequest ->
            case urlRequest of
                Browser.Internal url ->
                    ( { model | pageState = Loading }, Nav.pushUrl model.key (Url.toString url) )
                    
                Browser.External href ->
                    ( model
                    , Nav.load href
                    )
