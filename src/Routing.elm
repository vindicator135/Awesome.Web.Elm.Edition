module Routing exposing (..)

import Navigation exposing (Location)
import Models exposing (Route(..))

matchers : Parser (Route -> a) -> a
matchers =
    oneOf
        [ map BlogListRoute top
        , map BlogEntryRoute (s "blogs" </> string)
        , map BlogListRoute (s "blogs")
        ]

parseLocation : Location -> Route
parseLocation location =
    case (parseHash matchers location) of
        Just route ->
            route

        Nothing ->
            NotFoundRoute