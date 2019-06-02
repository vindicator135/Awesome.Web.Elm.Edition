module Blogs.View exposing (view)

import Html exposing (..)
import Html.Attributes exposing (property, class, style)
import Json.Encode exposing (string)
import Blogs.Message exposing (Msg(..))
import Blogs.Model exposing (Model, ViewState(..))
import Blogs.Blog.View.Blog1 as Blog1
import Blogs.Blog.View.Blog2 as Blog2
import Types.Alias exposing (BlogId)
import Error.View as Error

view : Model -> Html Msg
view model =
    case model of
        ListView ->
            listBlogs
        BlogEntryView blogId ->
            readBlog blogId
        NotFound ->
            Error.view "Not found"


listBlogs : Html Msg
listBlogs =
    div [] []

readBlog : BlogId -> Html Msg
readBlog blogId =
    div [] []



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