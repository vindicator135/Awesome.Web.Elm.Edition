module View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Models exposing (Model)
import Messages exposing (Msg(BlogMsg))
import Blogs.List
import Blogs.View
import Blogs.Models exposing (..)
import Routing exposing (..)
import Blogs.View exposing (..)


view : Model -> Html Msg
view model =
    let 
        mainContainer = 
            [ div [ class "container" ]
                  [ div [ class "row" ]
                        [ mainContents
                        , rightContents
                        ]
                  ]
            ]

        mainContents =
            div [ class "col-sm-8" ]
                <| case model.route of
                    BlogListRoute ->
                        []
                    
                    BlogEntryRoute blogId ->
                        [ Html.map BlogMsg <| Blogs.View.readView (Maybe.withDefault emptyBlog <| List.head <| List.filter (\blog -> blog.blogId == blogId) model.blogs)
                        ]    

                    NotFoundRoute ->
                        [ text "Route not defined"]
        
        rightContents =
            div [ class "col-sm-4" ]
                [ text "Right content" ]
    in
        div []
            ((Html.map BlogMsg <| Blogs.List.view model.blogs) :: mainContainer)
            