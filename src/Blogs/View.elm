module Blogs.View exposing (view)

import Blogs.Blog.View.Blog1 as Blog1
import Blogs.Blog.View.Blog2 as Blog2
import Blogs.Blog.View.Blog3 as Blog3
import Blogs.Blog.View.Blog4 as Blog4
import Blogs.Message exposing (Msg(..))
import Blogs.Model exposing (Model, ViewState(..))
import Error.View as Error
import Html exposing (Html, a, div, h1, i, img, li, p, section, span, text, ul, nav, button)
import Html.Attributes exposing (alt, attribute, class, href, property, src, style, type_)
import Json.Encode exposing (string)
import Types.Alias exposing (BlogId)
import Header.View as Header


view : Model -> List (Html Msg)
view model =
    case model of
        ListView ->
            [ Header.lightView, listBlogs ]

        BlogEntryView blogId ->
            Header.darkView :: readBlog blogId

        NotFound ->
            [ Header.lightView, Error.view "Not found" ]

readBlog : BlogId -> List (Html Msg)
readBlog blogId =
    case blogId of
        1 ->
            Blog1.view

        2 ->
            Blog2.view

        3 ->
            Blog3.view

        4 ->
            Blog4.view

        _ ->
            Blog1.view


listBlogs : Html Msg
listBlogs =
    section [ class "blog-full-width-section wow" ]
        [ div [ class "container" ]
            [ div [ class "row blog-masonry blog-masonry-2col no-transition" ]
                [ div [ class "col-md-6 col-sm-6 col-xs-6 blog-listing" ]
                    [ div [ class "blog-image" ]
                        [ a [ href "#/blogs/1" ]
                            [ img [ alt "", src "images/street-basketball.jpg" ]
                                []
                            ]
                        ]
                    , div [ class "blog-details" ]
                        [ div [ class "blog-date" ]
                            [ text "Written by Stephen Cate"
                            , text "| 17 April 2019"
                            ]
                        , div [ class "blog-title" ]
                            [ a [ href "#/blogs/1" ]
                                [ text "Game of Life" ]
                            ]
                        , div [ class "blog-short-description" ]
                            [ p [] [ text "This is my Ice Breaker speech in Toastmasters. An Ice Breaker speech is the first speech you would give to your club as a new member to let everyone know more about you. First time lucky - I won my first Best Speaker award with this speech. " ]
                            , p [] [ text "Time to read : ~8 minutes" ]
                            ]
                        , div [ class "separator-line bg-black no-margin-lr" ]
                            []
                        , div []
                            [ a [ class "blog-like", href "#/blogs/1" ]
                                [ i [ class "fa fa-heart-o" ]
                                    []
                                , text "Likes"
                                ]
                            , a [ class "blog-share", href "#/blogs/1" ]
                                [ i [ class "fa fa-share-alt" ]
                                    []
                                , text "Share"
                                ]
                            ]
                        ]
                    ]
                , text "                    "
                , div [ class "col-md-6 col-sm-6 col-xs-6 blog-listing" ]
                    [ div [ class "blog-image" ]
                        [ a [ href "#/blogs/2" ]
                            [ img [ alt "", src "images/blue-door.jpg" ]
                                []
                            ]
                        ]
                    , div [ class "blog-details" ]
                        [ div [ class "blog-date" ]
                            [ text "Written by Stephen Cate"
                            , text "| 01 May 2019"
                            ]
                        , div [ class "blog-title" ]
                            [ a [ href "#/blogs/2" ]
                                [ text "Knocks on the door" ]
                            ]
                        , div [ class "blog-short-description" ]
                            [ p [] [ text "This is my second speech in TM. I did this as part of the Presentation Mastery learning pathway where a Toastmaster has to give a speech twice then do an evaluation at the end for someone else's speech. This won me the Best Speaker award the second time - so happy! yey! :)" ]
                            , p [] [ text "Time to read : ~7 minutes" ]
                            ]
                        , div [ class "separator-line bg-black no-margin-lr" ]
                            []
                        , div []
                            [ a [ class "blog-like", href "#/blogs/2" ]
                                [ i [ class "fa fa-heart-o" ]
                                    []
                                , text "Likes"
                                ]
                            , a [ class "blog-share", href "#/blogs/2" ]
                                [ i [ class "fa fa-share-alt" ]
                                    []
                                , text "Share"
                                ]
                            ]
                        ]
                    ]
                , text "                    "
                , div [ class "col-md-6 col-sm-6 col-xs-6 blog-listing" ]
                    [ div [ class "blog-image" ]
                        [ a [ href "#/blogs/3" ]
                            [ img [ alt "", src "images/winner.jpg" ]
                                []
                            ]
                        ]
                    , div [ class "blog-details" ]
                        [ div [ class "blog-date" ]
                            [ text "Written by Stephen Cate "
                            , text "| 15 May 2019"
                            ]
                        , div [ class "blog-title" ]
                            [ a [ href "#/blogs/3" ]
                                [ text "Legacy" ]
                            ]
                        , div [ class "blog-short-description" ]
                            [ p [] [ text "My 3rd speech in Toastmasters. The goal for this is to incorporate the feedback from the previous speech. The last feedback I got was to draw the audience in my story through eye contact. Seemed like the story and the goal have hit the mark - Best Speech for the night, horaay! :) " ]
                            , p [] [ text "Time to read: ~7 minutes" ]
                            ]
                        , div [ class "separator-line bg-black no-margin-lr" ]
                            []
                        , div []
                            [ a [ class "blog-like", href "#/blogs/3" ]
                                [ i [ class "fa fa-heart-o" ]
                                    []
                                , text "Likes"
                                ]
                            , a [ class "blog-share", href "#/blogs/1" ]
                                [ i [ class "fa fa-share-alt" ]
                                    []
                                , text "Share"
                                ]
                            ]
                        ]
                    ]
                , text "                    "
                , div [ class "col-md-6 col-sm-6 col-xs-6 blog-listing" ]
                    [ div [ class "blog-image" ]
                        [ a [ href "#/blogs/4" ]
                            [ img [ alt "", src "images/glass.jpg" ]
                                []
                            ]
                        ]
                    , div [ class "blog-details" ]
                        [ div [ class "blog-date" ]
                            [ text "Written by Stephen Cate "
                            , text "| 29 May 2019"
                            ]
                        , div [ class "blog-title" ]
                            [ a [ href "#/blogs/4" ]
                                [ text "Assurance" ]
                            ]
                        , div [ class "blog-short-description" ]
                            [ p [] [ text "I wrote this thinking about by my wife's near-death experience. I haven't presented this yet to the club so no idea yet if the story lands. But I'm really keen if the structure of the story holds and I look forward to presenting it." ]
                            , p [] [ text "Time to read: ~7 minutes" ]
                            ]
                        , div [ class "separator-line bg-black no-margin-lr" ]
                            []
                        , div []
                            [ a [ class "blog-like", href "#/blogs/4" ]
                                [ i [ class "fa fa-heart-o" ]
                                    []
                                , text "Likes"
                                ]
                            , a [ class "blog-share", href "#/blogs/4" ]
                                [ i [ class "fa fa-share-alt" ]
                                    []
                                , text "Share"
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        ]
