module Blogs.Resources exposing (..)

getListViewImage: Int -> String
getListViewImage blogId =
    if blogId == 1 then "/images/posts/180x250_flags.png"
    else if blogId == 2 then "/images/posts/180x250_pig.png"
    else ""