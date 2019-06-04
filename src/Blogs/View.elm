module Blogs.View exposing (view)

import Html exposing (Html, div, section, h1, text, span, ul, li, a, text, img, i, p)
import Html.Attributes exposing (attribute, property, class, style, href, alt, src)
import Json.Encode exposing (string)
import Blogs.Message exposing (Msg(..))
import Blogs.Model exposing (Model, ViewState(..))
import Blogs.Blog.View.Blog1 as Blog1
import Blogs.Blog.View.Blog2 as Blog2
import Blogs.Blog.View.Blog3 as Blog3
import Blogs.Blog.View.Blog4 as Blog4
import Types.Alias exposing (BlogId)
import Error.View as Error

view : Model -> List (Html Msg)
view model =
    let
        body =
            case model of
                ListView ->
                    listBlogs
                BlogEntryView blogId ->
                    readBlog blogId
                NotFound ->
                    Error.view "Not found"
    in
        [ blogsHeader
        , body
        ]

blogsHeader : Html Msg
blogsHeader =
    section [ class "page-title bg-gray" ]
        [ div [ class "container" ]
            [ div [ class "row" ]
                [ div [ class "col-md-8 col-sm-12 wow fadeInUp", attribute "data-wow-duration" "300ms" ]
                    [ h1 [ class "black-text" ]
                        [ text "A Journey To Awesome" ]
                    , span [ class "xs-display-none" ] 
                        [ text "Toastmaster speeches: My thoughts on life, family and everything in between..." ]
                    , div [ class "separator-line margin-three bg-black no-margin-lr sm-margin-top-three sm-margin-bottom-three no-margin-bottom xs-display-none"] 
                        []
                    ]
                , div [ class "col-md-4 col-sm-12 breadcrumb text-uppercase wow fadeInUp xs-display-none", attribute "data-wow-duration" "600ms" ]
                    [ ul []
                        [ li []
                            [ a [ href "#/blogs" ]
                                [ text "Blogs" ]
                            ]
                        , li []
                            [ a [ href "#/blogs" ]
                                [ text "About me" ]
                            ]
                        ]
                    , text "                    "
                    ]
                ]
            ]
        ]

readBlog : BlogId -> Html Msg
readBlog blogId =
    case blogId of
        1 -> Blog1.view
        2 -> Blog2.view
        3 -> Blog3.view
        4 -> Blog4.view
        _ -> Blog1.view


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
                            , p [] [ text "Time to read : ~7 minutes"]
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
                ,  text "                    "
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
                            [ p [] [text "I wrote this thinking about by my wife's near-death experience. I haven't presented this yet to the club so no idea yet if the story lands. But I'm really keen if the structure of the story holds and I look forward to presenting it." ]
                            , p [] [text "Time to read: ~7 minutes"]
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