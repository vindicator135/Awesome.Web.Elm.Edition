module Blogs.Blog.View.Blog1 exposing (view)

import Html exposing (Html, section, div, text, p, i, h1, h6, blockquote)
import Html.Attributes exposing (class)

view : Html msg
view =
    let
        pText s =
            p [ class "text-med" ] [ text s ]
    in
    section [ class "blog-full-width-section wow fadeIn"] 
        [ div [ class "container"] 
            [ div [ class "row" ] 
                [ div [ class "col-md-12 col-sm-12"]
                    [ blockquote [ class "margin-right-ten text-extra-large"] 
                        [ text "This is my Ice Breaker speech in Toastmasters. An Ice Breaker speech is the first speech you would give to your club as a new member to let everyone know more about you. First time lucky - I won my first Best Speaker award with this speech. Time to read : 6 minutes." ]
                    ]
                ] 
            , div [ class "row" ] 
                [ div [ class "center-col text-center col-md-12 col-sm-12"] 
                    [ div [ class "subheader bg-white margin-three no-margin-top"]
                        [ i [ class "icon-hotairballoon large-icon"] []
                        , h1 [] [ text "Game of Life" ]
                        , h6 [] [ text "by Stephen Cate" ]
                        ]
                    ]
                , div [ class "col-md-12 col-sm-12"] 
                    [ pText <| "I was born and raised in Manila, Philippines. And back home, basketball was the national sport. It is part of the Filipino culture, so much so that tradition has it to pass the love of the game from one generation to the next. So my father did to us, what his father did – shared his love of the game with me and my brother!"
                    , pText <| "Mr. Toastmaster, fellow toastmasters, have you ever been talked into playing or following an official family sport when you were young? Did you have much choice?" 
                    , pText <| "For me and my older brother - the default and only choice was basketball! "
                    , pText <| "From an early age, my father wanted to polish his future basketball talents – me and my bro. So when I was young, even if we didn’t have much money to go around, he made it a point that me and my brother have a home court advantage. With scraps of plywood and a dusty old ring, he built us a makeshift basketball court in our very own backyard. "
                    , pText <| "Our home court was hung on a tree, a fairly tall one I should say. Because for some reason, I rarely ever made a shot in that court! Although it’s safe to say - I’m not really a natural for the sport. As a kid, I was skinny, I was short, and with all my strength, I can manage to jump a leaping 6-inches off the ground! Proud to say that at least that a little higher than a soda can!"
                    , pText <| "But my dad, was a determined man. He was very patient as well. I remember the countless times he would try to teach me the basics. Like how to hold and dribble the ball, and of course, the only way to win in the game – making shots. He showed me how it begins with holding the ball with both hands, doing a semi-squat to prepare for a short jump, then with arms elevating the ball at shoulder level, ring insight – release!"
                    , pText <| "I realised early on how hard the sport I have been committed to is. The skinny, and short kid that I was, having the strength of a baby, launching the ball for a shot would more often than not end up short. It was frustrating! But my dad would not let a slight physical limitation hinder me from my progress, he really sees the diamond in the rubble. So countless time, he would hold me in my hips, raise me closer to the ring, so finally I can take a closer shot... then, swoosh… still, my shots would not even reach the net!"
                    , pText <| "I took a lot of those assisted shots with my dad, more times hitting air than getting buckets. But it was really fun and I have truly developed a love for the game to keep playing and learning as I grew up."
                    , pText <| "There is only one thing I don’t like about basketball. That is, when the ball hits you in the face! A basketball is hard, you will definitely feel it when it lands. Or not - when at times it hits you so hard, you’d feel numb first then swollen after, until the pain slowly but surely dawns on you scorched face!"
                    , pText <| "But as you may know, pain is part of the game. I have learned this truth in basketball just as it applies in the great game of life. "
                    , pText <| "In November 12, 1993, in the middle of his basketball game – my father collapsed. He fell to the ground for no expected reason. He was later rushed to the hospital and I remembered this day so clearly. It was a Friday, 8am and I was in the middle of my class in second grade when my Aunt knocked on our classroom door. My teacher came to see her and after a brief exchange of words, my teacher came towards me, without saying words, tears swelling up her eye, she helped me pack all my things and sent me off with my aunt. We came to the hospital straight from school. But at that point, the game has already taken my father’s life. The doctors said severe fatigue caused a fatal aneurysm."
                    , pText <| "My life and my family’s life have never been the same. From then, we have been in the game playing one man short. We have lost our Most Valuable Player, our MVP - my dad. Life has been very difficult without our main man to say the least. We found ourselves playing a rather long game and everyone in the team had to step up, my mother most specially. "
                    , pText <| "My mom kept the family through a small business of making and selling bedsheets and linen. At 8, I learned how to make money by selling what we made in our stall on a nearby wet market. So did my big brother and sister. This job filled out nearly all school holidays and breaks for me and my siblings growing up. But more so, from then on, I rarely saw my mother have any rest or break, let alone sleep before I do or wake any later than anyone else in the house."
                    , pText <| "Like a playing coach, my mom set our plays so me and my siblings could take our positions on the court. Every score we made to move forward were hard fought. The defence, our challenges, obstacles were far too many, and they were standing 10 feet tall!"
                    , pText <| "But looking back now, decades past since that faithful day of November, I could say, our family have been playing ahead. Slowly but surely, we caught up the scoreboards. My siblings and I are all professionals now in our respective fields. And with the grace of the almighty, I having been here in Australia for the last 4 years as a migrant, with my two daughters, my lovely wife in a place to call our home."
                    , pText <| "Basketball is a team sport. Over the years, playing the game, I realised that the beauty of it, is not just in seeing one player scoring a basket, or making a high-flying slam dunk. It is not in celebrating the triumph of one individual player, or being weighed down by the loss of another. The real beauty of the game is in seeing each teammate contributing towards the same goal - to finish the game and try to win, no matter what, until ultimately, the time is up."
                    , pText <| "Mr. Toastmaster..."
                    ]
                ]
            ]
        ]