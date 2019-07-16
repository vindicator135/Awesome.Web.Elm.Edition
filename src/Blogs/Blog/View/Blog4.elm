module Blogs.Blog.View.Blog4 exposing (view)

import Html exposing (Html, blockquote, div, h1, h6, i, p, section, text)
import Html.Attributes exposing (class)


view : List (Html msg)
view =
    let
        pText s =
            p [ class "text-med" ] [ text s ]
    in
    [ section [ class "blog-full-width-section wow fadeIn" ]
        [ div [ class "container" ]
            [ div [ class "row" ]
                [ div [ class "col-md-12 col-sm-12" ]
                    [ blockquote [ class "margin-right-ten text-extra-large" ]
                        [ text "I wrote this thinking about by my wife's near-death experience. I haven't presented this yet to the club so no idea yet if the story lands. But I'm really keen if the structure of the story holds and I look forward to presenting it." ]
                    ]
                ]
            , div [ class "row" ]
                [ div [ class "center-col text-center col-md-12 col-sm-12" ]
                    [ div [ class "subheader bg-white margin-three no-margin-top" ]
                        [ i [ class "icon-caution large-icon" ] []
                        , h1 [] [ text "Assurance" ]
                        , h6 [] [ text "by Stephen Cate" ]
                        ]
                    ]
                , div [ class "col-md-12 col-sm-12" ]
                    [ pText <| "Hurling at speeds over 100 km per hour, coming towards her while travelling the wrong way on the wrong side of the freeway - death was a mere meter away as it came passing by. This happened to my wife on her way home from an otherwise ordinary day at work."
                    , pText <| "It was just two faint headlights coming from nowhere - that's all she saw in a moments time that could have spelled the difference between life or death for my wife."
                    , pText <| "Mr. Toastmaster, ladies and gentlemen, have you or a loved one ever experienced a close call? Did you feel that cold shiver running down your body? "
                    , pText <| "My wife came home trembling and quite shaken that night. It took a little while for her to catch her breath. As she told me of what happened, I felt those cold shivers all over my body. I was first furious about that reckless driver. But at the same time, I couldn't have been more grateful because right in front of me is my wife, that although shaken, is alive and well."
                    , pText <| "But even after a couple of hours of having talked through the incident, me and my wife did could not sleep. While the close call had come to pass, the thought that life could be taken in any instant, just like that, have kept me and my wife wide awake. And the one and only thought left lingering in our minds was – what would have happened to our daughters should something unexpected befall  either me or my wife?"
                    , pText <| "So the next day, we did the most logical thing to do after a near death experience – we shopped around for life insurance! We were keen of course for any buy 1 take one deals. But i was surprised not to find any. Apparently, the best deals you would get with life and accidental covers are the bonus extras – ‘sign up now and you’ll get $15000 worth of funeral services free’ Now that is what really resting in peace means."
                    , pText <| "We did learn and realise a few but vital lessons from that night. One of them is definitely the value of life insurance and how to score the best deals! But more importantly, between me and my wife, we have come to our senses on what is truly, the most important thing in our lives."
                    , pText <| "We came to realise that while we have been predominantly been spending our time and energy on making sure all our bills gets paid, and while we unconsciously devote ourselves to doing the extra miles at our jobs, and while we relentlessly strive to attain more and more for ourselves and the family – we have been too busy looking too far ahead when our most important focus, the very reason we do all the things we do, are literally less than a feet away. (Because the whole family cosleeps in a double sized bed, we sleep quite snugged and curled together)"
                    , pText <| "Ladies and gentlemen, life is fragile. None of us will ever know when our time is up or when that close call comes close enough. But we don't have to wait until then, for us to start focusing on what is the most important thing in our lives."
                    , pText <| "What's more, I came to realise, we don’t need life insurance as much as we need life assurance. "
                    , pText <| "Because while insurances work on the possibilities, the odds of something happening before it goes to work, assurances are guaranteed, they work with absolute certainty not probability."
                    , pText <| "But the big difference between life insurance and life assurance is the cost. Life insurances can be bought, and surely everyone can haggle for a sweet life plus extras deal. But life assurances are something we all need to work on every single day, deliberately and without fail."
                    , pText <| "For me and my wife, life insurance is about $50 bucks a month – and yes that had all the extras. But assuring that our daughters are taken care off long after we are gone meant we deliberately spend our time and energy everyday to mold them the best way we can so they can grow up as independent, responsible and caring adults who can look after eachother."
                    , pText <| "Ladies and gentlemen, we all have that something or someone who is the most important in our lives. Let us not wait for a close call to happen before we realise that too late. Let us make the conscious effort not just to be insured but assured that when its time to meet our maker we leave it all with our hands and our pockets empty so that they may live on towards a brighter future."
                    , pText <| "Mr. Toastmaster..."
                    ]
                ]
            ]
        ]
    ]
