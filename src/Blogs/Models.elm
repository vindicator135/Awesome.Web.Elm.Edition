module Blogs.Models exposing (..)


type alias Blog =
    { blogId : Int
    , title : String
    , pretext : String
    , content : String
    , published : String
    }

emptyBlog : Blog
emptyBlog =
    Blog 0 "no title" "no pretext" "no content" "never published"