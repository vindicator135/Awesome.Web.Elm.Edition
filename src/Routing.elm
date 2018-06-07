module Routing exposing (..)

import Navigation exposing (Location)
import UrlParser exposing (..)


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


parseLocation : Location -> Route
parseLocation location =
    case (parseHash matchers location) of
        Just route ->
            route

        Nothing ->
            NotFoundRoute
