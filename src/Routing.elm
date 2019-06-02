module Routing exposing (Route(..), matchers, fromFragment, parseUrl)

import Url.Parser as Parser exposing (map, (</>), Parser, oneOf, s, string, int, top)
import Url exposing (Url)


type Route
    = BlogList
    | BlogEntry Int
    | NotFound


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map BlogEntry (s "blogs" </> int)
        , map BlogList (s "blogs")
        ]


parseUrl : Url -> Route
parseUrl url =
    case (Parser.parse matchers url) of
        Just route ->
            route

        Nothing ->
            NotFound


fromFragment : Url -> Url
fromFragment url =
    { url
        | path = (Maybe.withDefault "" url.fragment)
        , fragment = Nothing
    }
