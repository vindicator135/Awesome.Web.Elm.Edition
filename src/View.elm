module View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Models exposing (Model)
import Messages exposing (Msg(..))
import Blogs.List
import Blogs.View
import Blogs.Models exposing (..)
import Routing exposing (..)
import Blogs.View exposing (..)

import Browser exposing (Document)


view : Model -> Document Msg
view model =
<<<<<<< HEAD
    { title = "A Journey To Awesome"
    , body = [ (headerView model)
             , (mainContentsView model)
             , footerView
             ]
    }
        
=======
    let
        section contents =
            div [ class "container" ]
                [ div [ class "row" ]
                    contents
                ]
>>>>>>> a6ba63c99b2155744db643c2466a1b0065e526c2

        banner =
            [ div [ class "logo-image-300w-102h mt-3 mb-3" ] [] ]

        header blogs =
            [ Html.map BlogMsg <| Blogs.List.view blogs ]

        body route blogs =
            case route of
                BlogListRoute ->
                    []

                BlogEntryRoute blogId ->
                    [ List.filter (\blog -> blog.blogId == blogId) blogs
                        |> List.head
                        |> Maybe.withDefault emptyBlog
                        |> Blogs.View.readView
                        |> Html.map BlogMsg
                    ]

                NotFoundRoute ->
<<<<<<< HEAD
                    div [ class "col-sm-8" ] [ text "Route not defined" ]

        x = Debug.log "mainContentsView" model

        rightContents =
            div [ class "col-sm-4" ]
                [ text "Right content" ]
    in
        div [ class "container" ]
            [ div [ class "row" ]
                [ centerContents
                , rightContents
                ]
            ]


headerView : Model -> Html Msg
headerView model =
    let
        title =
            div [ class "container" ]
                [ div [ class "row" ]
                    [ div [ class "col-sm-6"
                          , style "background" "url(\"\\images\\custom\\main-logo-300x102.png\")"
                          , style "height" "102px" ]
                        []
                    , div [ class "col-sm-6" ]
                        []
                    ]
                ]
=======
                    [ text "Route not defined" ]
>>>>>>> a6ba63c99b2155744db643c2466a1b0065e526c2

        footer =
            []
    in
        div []
            [ section <| banner
            , section <| header model.blogs
            , section <| [ div [ class "col-sm-12" ] <| body model.route model.blogs ]
            , section <| footer
            ]
