module Blogs.Models exposing (..)

import Html exposing (Html, div)


type alias Blog =
    { blogId : Int
    , pretitle : String
    , title : String
    , pretext : String
    , published : String
    }


emptyBlog : Blog
emptyBlog =
    Blog 0 "no pretitle" "no title" "no pretext" "never published"
