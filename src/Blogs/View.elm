module Blogs.View exposing (view)

import Html exposing (Html, div, section, h1, text, span, ul, li, a, text, img, i, p)
import Html.Attributes exposing (attribute, property, class, style, href, alt, src)
import Json.Encode exposing (string)
import Blogs.Message exposing (Msg(..))
import Blogs.Model exposing (Model, ViewState(..))
import Blogs.Blog.View.Blog1 as Blog1
import Blogs.Blog.View.Blog2 as Blog2
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
                        [ text "My thoughts on life, family and everything in between..." ]
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
        _ -> Blog1.view


listBlogs : Html Msg
listBlogs =
    section [ class "blog-full-width-section wow" ]
        [ div [ class "container" ]
            [ div [ class "row blog-masonry blog-masonry-2col no-transition" ]
                [ div [ class "col-md-6 col-sm-6 col-xs-6 blog-listing" ]
                    [ div [ class "blog-image" ]
                        [ a [ href "#/blogs/1" ]
                            [ img [ alt "", src "http://placehold.it/600x900" ]
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
                            [ img [ alt "", src "http://placehold.it/599x449" ]
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
                            [ p [] [ text "[ This is my second speech in Toastmasters. I did this as part of the Presentation Mastery learning pathway where a Toastmaster have to give a speech twice then do an evaluation at the end for someone else's speech. This won me the Best Speaker award the second time, yey! :)" ]
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
                , text "                    "
                , div [ class "col-md-6 col-sm-6 col-xs-6 blog-listing" ]
                    [ div [ class "blog-image" ]
                        [ a [ href "blog-single-right-sidebar.html" ]
                            [ img [ alt "", src "http://placehold.it/600x900" ]
                                []
                            ]
                        ]
                    , div [ class "blog-details" ]
                        [ div [ class "blog-date" ]
                            [ text "Posted by "
                            , a [ href "blog-masonry-2columns.html" ]
                                [ text "Nathan Ford" ]
                            , text "| 02 January 2015"
                            ]
                        , div [ class "blog-title" ]
                            [ a [ href "blog-single-right-sidebar.html" ]
                                [ text "For A More Readable Web Page" ]
                            ]
                        , div [ class "blog-short-description" ]
                            [ text "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s." ]
                        , div [ class "separator-line bg-black no-margin-lr" ]
                            []
                        , div []
                            [ a [ class "blog-like", href "#" ]
                                [ i [ class "fa fa-heart-o" ]
                                    []
                                , text "Likes"
                                ]
                            , a [ class "blog-share", href "#" ]
                                [ i [ class "fa fa-share-alt" ]
                                    []
                                , text "Share"
                                ]
                            , a [ class "comment", href "#" ]
                                [ i [ class "fa fa-comment-o" ]
                                    []
                                , text "3 comment(s)"
                                ]
                            ]
                        ]
                    ]
                , text "                    "
                , div [ class "col-md-6 col-sm-6 col-xs-6 blog-listing" ]
                    [ div [ class "blog-image" ]
                        [ a [ href "blog-single-right-sidebar.html" ]
                            [ img [ alt "", src "http://placehold.it/599x449" ]
                                []
                            ]
                        ]
                    , div [ class "blog-details" ]
                        [ div [ class "blog-date" ]
                            [ text "Posted by "
                            , a [ href "blog-masonry-2columns.html" ]
                                [ text "Aarron Walter" ]
                            , text "| 02 January 2015"
                            ]
                        , div [ class "blog-title" ]
                            [ a [ href "blog-single-right-sidebar.html" ]
                                [ text "Redesigning With Personality" ]
                            ]
                        , div [ class "blog-short-description" ]
                            [ text "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s." ]
                        , div [ class "separator-line bg-black no-margin-lr" ]
                            []
                        , div []
                            [ a [ class "blog-like", href "#" ]
                                [ i [ class "fa fa-heart-o" ]
                                    []
                                , text "Likes"
                                ]
                            , a [ class "blog-share", href "#" ]
                                [ i [ class "fa fa-share-alt" ]
                                    []
                                , text "Share"
                                ]
                            , a [ class "comment", href "#" ]
                                [ i [ class "fa fa-comment-o" ]
                                    []
                                , text "3 comment(s)"
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        ]




-- singleView : Blog -> Html Msg
-- singleView blog =
--     div [ class "container" ]
--         [ div [ class "row" ]
--             [ pretitle blog.pretitle
--             ]
--         , div [ class "row" ]
--             [ header "" blog.title blog.published
--             ]
--         , div [ class "row" ]
--             [ getBlogHtml blog.blogId
--             ]
--         ]


-- listView : Int -> List Blog -> Html Msg
-- listView blogId blogs =
--     let
--         firstEntry =
--             Maybe.withDefault emptyBlog <| List.head <| List.filter (\b -> b.blogId == blogId) blogs
--     in
--         singleView firstEntry


-- getBlogHtml : Int -> Html Msg
-- getBlogHtml blogId =
--     case blogId when
--         1 -> Blog1.view NoOp
--         2 -> Blog2.view NoOp
--         3 -> Blog3.view NoOp
--         _ -> div [] []


-- pretitle : String -> Html Msg
-- pretitle title =
--     h3 [ class "pb-3 mb-4 font-italic border-bottom" ] [ text title ]


-- header : String -> String -> String -> Html Msg
-- header _ title published =
--     div [ class "blog-post" ]
--         [ h1 [] [ text title ]
--         , p [ style "color" "#999" ] [ text published ]
--         ]


-- prelude : String -> Html Msg
-- prelude pretext =
--     div []
--         [ p [] [ text pretext ] ]


-- htmlPrelude : String -> Html Msg
-- htmlPrelude preludeText =
--     div [ property "innerHTML" <| Json.Encode.string preludeText ] []


-- htmlBody : String -> Html Msg
-- htmlBody content =
--     div [ property "innerHTML" <| Json.Encode.string content ] []


-- getListViewImage : Int -> String
-- getListViewImage blogId =
--     if blogId == 1 then
--         "/images/posts/180x250_flags.png"
--     else if blogId == 2 then
--         "/images/posts/180x250_pig.png"
--     else
--         ""