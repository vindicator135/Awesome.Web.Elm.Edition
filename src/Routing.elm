module Routing exposing (Route(..), fromFragment, matchers, parseUrl)

import Url exposing (Url)
import Url.Parser as Parser exposing ((</>), Parser, int, map, oneOf, s, string, top)


type Route
    = BlogList
    | BlogEntry Int
    | Main


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map BlogEntry (s "blogs" </> int)
        , map BlogList (s "blogs")
        ]


parseUrl : Url -> Route
parseUrl url =
    case url |> (fromFragment >> Parser.parse matchers) of
        Just route ->
            route

        Nothing ->
            Main


fromFragment : Url -> Url
fromFragment url =
    { url
        | path = Maybe.withDefault "" url.fragment
        , fragment = Nothing
    }
