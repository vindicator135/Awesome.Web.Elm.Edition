module Blogs.Models exposing (..)


type alias Blog =
    { blogId : Int
    , pretitle : String
    , title : String
    , pretext : String
    , published : String
    , precontent : String
    , content : String
    }


emptyBlog : Blog
emptyBlog =
    Blog 0 "no pretitle" "no title" "no pretext" "never published" "no precontent" "no content"
