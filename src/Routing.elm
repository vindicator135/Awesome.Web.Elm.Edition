module Routing exposing (..)

import Url.Parser as Parser exposing (map, (</>), Parser, oneOf, s, string, int, top)
import Url exposing (Url)


type Route
    = BlogListRoute
    | BlogEntryRoute Int
    | NotFoundRoute


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map BlogListRoute top
        , map BlogEntryRoute (s "blogs" </> int)
        , map BlogListRoute (s "blogs")
        ]

parseUrl : Url -> Route
parseUrl url =
    case (Parser.parse matchers url) of
        Just route ->
            route

        Nothing ->
            NotFoundRoute