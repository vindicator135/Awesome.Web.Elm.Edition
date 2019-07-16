module Blogs.Blog.View.Blog2 exposing (view)

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
                        [ text "This is my second speech in Toastmasters. I did this as part of the Presentation Mastery learning pathway where a Toastmaster has to give a speech twice then do an evaluation at the end for someone else's speech. This won me the Best Speaker award the second time, yey! :)" ]
                    ]
                ]
            , div [ class "row" ]
                [ div [ class "center-col text-center col-md-12 col-sm-12" ]
                    [ div [ class "subheader bg-white margin-three no-margin-top" ]
                        [ i [ class "icon-gift large-icon" ] []
                        , h1 [] [ text "Knocks on the Door" ]
                        , h6 [] [ text "by Stephen Cate" ]
                        ]
                    ]
                , div [ class "col-md-12 col-sm-12" ]
                    [ pText <| "I have lost count of how many chances I blew, and how many opportunities I failed to make the most of throughout my life. But I sure do remember a few times when something unexpected stumbled upon me and I made it count."
                    , pText <| "Mr. Toastmaster, ladies and gentlemen, how many times have you heard an unexpected opportunity knock on the door that you were not ready for? How many times have you faced them? How much of them have you ignored?"
                    , pText <| "I believe that it takes courage and faith to face the unexpected. We don't always get what we want. And sadly, we don't always get what we deserve. But what is important is that from time to time, we stumble upon our reward just by pushing through."
                    , pText <| "Let me share with you - the most memorable date I ever had, when I was younger of course, happened for me unexpectedly. It was a Friday to cap what was a tough week at work. There I was having dinner with colleagues as we are whining about how terrible the week was, how horrible our bosses were, all while consoling one another for another tough week up ahead – there will be lights at the end of the tunnel, we said knowing too well Monday is not too far off. Me and my teammates were wrapping up  when I got a call from one of my best mates. He sounded nervous and anxious and needy at the same time when he asked - Hey, bro, where are you? You don’t have any plans for the night, right?! I need your help!"
                    , pText <| "I was feeling really tired and I felt like its a wrap for me. But as he explained, my buddy needed a wingman! Apparently for some reason that I will soon find out, her date did not want to go. Not without a chaperone – her Sister! My buddy needed to bring a plus one to deal with her date's plus one.  And of course, like a true friend who comes to his mates in dire need, I obliged."
                    , pText <| "You can just imagine how the unplanned date went with two un-expecting people caught up in the situation. And I have to be honest, I am not as smooth then as I am now! But our unexpected date was unexpectedly amazing and one that seemed quite promising."
                    , pText <| "Fast forward 10 years since then, I could tell you my friend and her date worked out - for a brief few months until they split. But as for the chaperone-sister and myself, well we have been together ever since. Now, we have been happily married having our two lovely daughters."
                    , pText <| "That night my friend called knocking on the door with an opportunity from nowhere, I was standing on the other side, feeling tired and wanting to call it a night. I could not have guessed the possibilities. But who knew? Opening the door at a time when I did not feel like it, turned out to be the best person that has ever happened to me."
                    , pText <| "We can rarely tell what will turn out when we entertain something or someone unexpected though. Will we open the door to find a pleasant surprise? Or will we be opening a can of worms? Do we let lose Pandora's box?"
                    , pText <| "It takes courage and faith to face the unexpected. We don't always get what we want. And sadly, we don't always get what we deserve. But what is important is that from time to time, we stumble upon our reward just by pushing through."
                    , pText <| "10 years ago, from where the chaperone-sister was standing, I was the guy who came, who saw – really liked what he saw – then started knocking with all gusto and enthusiasm! However, I must have come at the worst of times or the best of times. Only she can tell."
                    , pText <| "You see that night, I came unexpectedly, knocking at the door just a few months after someone she let in her life for many years, had left her in pain, and a broken heart."
                    , pText <| "That night, when her sister, my best mate’s date, insisted that my wife come along with her, she had all the reason to say no. She could not have guessed the possibilities. And she surely made a huge bet as she took a chance with the unexpected – me. But who knew, opening her doors for me at a time, when she did not feel like it, would lead to best person she would ever meet, ever!"
                    , pText <| "It takes courage and faith to face the unexpected. We don't always get what we want. And sadly, we don't always get what we deserve. But what is important is that from time to time, we stumble upon our reward just by pushing through."
                    , pText <| "Ladies and gentlemen – for better or for worse? Ready or not? What will you do when the time comes, and you hear those unexpected knocks on your door?"
                    , pText <| "Mr. Toastmaster..."
                    ]
                ]
            ]
        ]
    ]
