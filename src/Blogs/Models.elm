module Blogs.Models exposing (..)


type alias Blog =
    { blogId : Int
    , pretitle: String
    , title : String
    , pretext : String
    , content : String
    , published : String
    }

emptyBlog : Blog
emptyBlog =
    Blog 0 "no pretitle" "no title" "no pretext" "no content" "never published"