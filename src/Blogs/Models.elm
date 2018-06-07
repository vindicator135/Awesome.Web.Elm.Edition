module Blogs.Models exposing (..)


type alias Blog =
    { blogId : Int
    , title : String
    , content : String
    , published : String
    }

emptyBlog : Blog
emptyBlog =
    Blog 0 "n/a" "n/a" "never published"