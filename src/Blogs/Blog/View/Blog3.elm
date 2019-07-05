module Blogs.Blog.View.Blog3 exposing (view)

import Html exposing (Html, blockquote, div, h1, h6, i, p, section, text)
import Html.Attributes exposing (class)


view : Html msg
view =
    let
        pText s =
            p [ class "text-med" ] [ text s ]
    in
    section [ class "blog-full-width-section wow fadeIn" ]
        [ div [ class "container" ]
            [ div [ class "row" ]
                [ div [ class "col-md-12 col-sm-12" ]
                    [ blockquote [ class "margin-right-ten text-extra-large" ]
                        [ text "My 3rd speech in Toastmasters. The goal for this is to incorporate the feedback from the previous speech. The last feedback I got was to draw the audience in my story through eye contact. Seemed like the story and the goal have hit the mark - Best Speech for the night, horaay! :) Time to read: ~7 minutes" ]
                    ]
                ]
            , div [ class "row" ]
                [ div [ class "center-col text-center col-md-12 col-sm-12" ]
                    [ div [ class "subheader bg-white margin-three no-margin-top" ]
                        [ i [ class "icon-bike large-icon" ] []
                        , h1 [] [ text "Legacy" ]
                        , h6 [] [ text "by Stephen Cate" ]
                        ]
                    ]
                , div [ class "col-md-12 col-sm-12" ]
                    [ pText <| "Let me start with an apology - I am sorry because I had to tell you about the fact that when I was in high school, I graduated distinguished with academic honours. Upon finishing my senior year, I have passed admission exams in all the top four universities in the Philippines. On my rookie year of work, I had already been promoted to handle a team of more experienced professionals than myself. And to secure my skilled migrant visa to Australia, I have perfected my International English proficiency exam in 2 categories - listening and reading – on my first and only attempt. The list goes on, but before someone kicks me off the stage, let me just stop myself right there."
                    , pText <| "Mr. Toastmaster, ladies and gentlemen, hearing someone talk about their accomplishments could be rather annoying, isn't it?! Specially if you did not ask, and because quite frankly, because you could not care any less."
                    , pText <| "I have come to realise this, the only person who cares the most about what I have accomplished is myself. "
                    , pText <| "Because at some point in my life, I have established an important and significant goal. I have endeavoured to pursue that goal, setting my aim, I have paid my dues, done my work and persevered until I finally had that which I longed for. I have achieved the prize!"
                    , pText <| "And yet, no one cares as much to hear what I have achieved."
                    , pText <| "Because in reality, what I have accomplished, the medals and badges that I have put on myself, having all these accolades, does not benefit anyone. Hearing about what they are serves little to no purpose to another soul."
                    , pText <| "And so, I came to believe that what we have accomplished is not at all that important. What is truly important is firstly - why we did what we did; and second, what we have become out of our pursuits."
                    , pText <| "The fact that I have been an academic achiever at high school, being recognised by my teachers means nothing since the day I finished school and have inevitably faced the dreaded boss. But let me tell you why I did it. It is because my family didn't have much growing up, I was told from a young age that doing well in school is my only ticket to a better life. And because I was not inherently smart, I had to really compensate with my hustle. From then on, I have learned the value of solid hard work."
                    , pText <| "The fact that I have passed admission tests in the top four universities in the Philippines does not matter when I could only study at one. But I can tell you that because no one in my whole family has ever been admitted to these top schools, I was scared. I thought I would not measure up, that I did not have it in me, that I was a long shot from the most crucial step towards the dream life and all my hard work would have been in vein. Because of that, I have learned not to just wait for an opportunity but to pursue them and make the most of each and everyone like my life depended on it. Because it did."
                    , pText <| "If we can all but tell someone our reasons why we did what we did instead of what we did, then they would have walked through the journey with us. They would see the beauty in the rubble, as they dust off the dirt and uncover our effort’s true value."
                    , pText <| "The fact that I have been promoted to handle a team of more experienced professionals at my first year of work, you could imagine how a terrible newbie boss I have been. But I can tell you that after finishing my studies, I could only think of wanting to succeed so I can give back to my mother for putting me to school despite her odds as a single parent of three. And because of that, I had a taste of what was possible for me in the real world through sheer will and determination."
                    , pText <| "Lastly, the fact that I have perfected my International English proficiency exam in two out of the four modules on my first sitting, does not hold any weight now that I am in a country where English is the first language. But I can tell you how the journey to secure a piece of paper, a visa, that ticket to be here has been fraught with far too many obstacles, years of tirelessly waiting and countless sacrifices financially and emotionally.  I could not have afforded a retake. Because of the experience, I came here hungry – hungry to make the most of life for me and my young family."
                    , pText <| "Ladies and gentlemen, how about you? Why did you reach for those shining moments in your life? How did it shape you and mold you to become the very best version of who you are, now?"
                    , pText <| "Mr. Toastmaster..."
                    ]
                ]
            ]
        ]
