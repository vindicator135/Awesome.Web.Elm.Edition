module Blogs.Blog.View.Blog2 exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)


view : Html msg
view =
    div [ class "blog-details-text" ]
        [ blockquote []
            [ text "Twenty years from now you will be more disappointed by the things you didn’t do than by the ones you did. So throw off the bowlines, sail away from the safe harbor, catch the trade winds in your sails. Explore. Dream. Discover."
            ]
        , footer [] [ text "Mark Twain" ]
        , hr [] []
        , body
        ]


body : Html msg
body =
    div [ class "blog-details-text" ]
        [ p []
            [ span [ class "first-letter first-letter-light" ]
                [ text "M" ]
            , text "igrating abroad maybe one of the most life-changing decisions to anyone making that leap. You literally have to carry your whole life on a couple of luggage bags wishing you could just take more with you, and for good cause - there is no turning back from this one, well at least not in the immediate and foreseeable future."
            ]
        , p []
            [ text "Many of us leave never ever feeling that we are going to be ready for the long haul hiatus. Despite the preparation, anticipation, despidida's, and visits to Antipolo Church, we can only bring as much stuff that we hold dear. When you look at the things you pack, there's always that dilemma of leaving that d-day shirt/sando/short/brief that we've worn since childhood, those deeply sentimental artifacts that symbolizes bits and pieces of the life we're leaving behind."
            ]
        , p []
            [ text "This is the reality though and we all made our choice. There's been way too much emotions and money spent (or owed) that we simply must do what we ought to do. So, we pack our bags and go."
            ]
        , div [ class "blog-image margin-eight" ]
            [ img [ src "/images/posts/passport-1920x1200.png" ] []
            ]
        , p []
            [ text "In the dark and unknown universe waiting for you on the other side, wherever country you set out for, it's always good to get some insights from people who have been on a somewhat similar spot. Yup, you have not been alone in that feeling, my friend. Please know that I don't claim to be a pro giving rock solid advice that I'd go on a blood pact and bet on with my job. But its always good to put out some thought out there with the best intent, and I wish you the very best. So, here it is -"
            ]
        , h2 [ class "text-transform-none" ]
            [ text "1. Create your own story, the one you'd like for yourself that you'd be happy to share to people."
            ]
        , br [] []
        , p []
            [ text "When I came to Australia, I had been forewarned that I needed to leave not just my family, and not just my friends. I was told over and over that I also needed to leave my pride. As they said - 'Bawal ang ma-pride sa abroad. - A lot of anonymous people'"
            ]
        , p []
            [ text "I was just shocked by the strong dogma against having that pride when you arrive as a migrant. While I barely knew anyone in this new country, the Kabayan's I've come to meet by chance have all been tamed to this defensive mentality - that notion that their isn't much out here and life's tough. Most are seeing the scarcity more than the opportunities available. For a fact, I must have heard so many stories of hard times, experienced by apparently everyone when they're starting out, that for the first few nights abroad, my best sleep was 2 hours."
            ]
        , div [ class "blog-image margin-eight" ]
            [ img [ src "/images/posts/footprint-1920x1200.png" ] []
            ]
        , p []
            [ text "I had those tales creeping in my mind and I started to worry more. The truth is, we are strongly moved by stories, specially those that we can see ourselves fit into. We identify ourselves closely to stories of people who we see ourselves being in the same position with. In my case, I was concerned to hear about how terribly difficult it was for new comers to find a job and get settled. Or, how some starters have been bouncing between any available odd jobs just to get by. I was beginning to see myself in that same situation, dreading the already monumental, if not impossible task ahead."
            ]
        , p []
            [ text "On my 2nd day in Australia, I chanced to meet a fellow Filipino on a bus stop waiting for his line. He carried a plastic bag with some leafy vegetables amongst other ingredients to what I suspect is Sinigang. I greeted the man, he was in his late 40s I think. And I said to him, 'Kamusta po? Mukhang sinigang sir ah...' The man looked at me and smiled faintly. We talked for a bit while waiting for our buses.  I learned that he came here some years ago, he couldn't recall the exact number, and he was a successful engineer back home. He was really excited telling me about his past career, position and memories from before here, while asking me about what the familiar places he used to go in the Philippines. He sounded excited about the Philippines and knowing I just recently arrived. Then, I asked him how he is now and where he works. His face changed and from him I saw someone who has never looked so defeated in life. He said he's doing odd jobs whenever he finds one. At the moment, he really wants to get employed as a construction worker, which even that, he said is very difficult with all the competition and all his disadvantage against younger people and other nationalities. He's on his way home to cook lunch for the kids because his wife is at work and he didn't find a gig for that day."
            ]
        , p []
            [ text "That encounter made a strong impact on me. It validated all the stories I have heard. It's all true. Life here is indeed tough and could even be punishing. But then, that moment made me realize that, really, you attract what you think. I have been thinking about the negativity for sometime and low and behold, a testament to that showed up to me. It made me wonder, what if, I started thinking the contrary? What if I thought differently and go the more positive route to be optimistic and hopeful instead? Will that attract me a different story for my own?"
            ]
        , p []
            [ text "It didn't took me a long time to find out the answer for myself. When I started to think more positively about things and changing how I perceived my circumstance, I switched on to a nothing-to-lose mentality. I kept a guard at the thoughts entering my mind. It's like my brain always hosted a party and on that party with all my thoughts socializing together, there's just one rule: No Negatives allowed. I became more determined that I will have a better experience to tell for new starters. And I imagined being able to do what I am doing now, sharing you the kind of story I want. "
            ]
        , p []
            [ text "I wasn't able to sleep well that very night. Because I was in a job-application frenzy. I didn't stop formatting my CV to the best my English could provide. Then, 3 days later, I got a job offer from a multi-national company, with a full-time permanent role, with above average pay for the same work I have been doing for years in the Philippines. I couldn't forget how I had my fist up in the air, clapping, a tear swelling up in my eye, in awe and amazement of His grace, just right after leaving the building of my new company."
            ]
        , p []
            [ text "I believed then, that you really need to see it clearly in your mind. Paint your own story before it actually happens and simply trust that it will."
            ]
        , h2 [ class "text-transform-none" ]
            [ text "2. Don't go on Cruise Control." ]
        , p []
            [ text "If you share the life-abroad dream like me, then you would have been in leaps of joy in every step of that long journey. From the baby steps like finding out what requirements you need, gathering those requisites through requests countless submissions here and there, we all felt excited that bit by bit we are building the dream."
            ]
        , p []
            [ text "I mean, who could forget the drama, and sometimes trauma of those silly English-Proficiency exams? (Yes, IELTS, I'm staring at you with angry eyes, and eye bags all over). Who was not logging in to the Migration website every day, if not by the hour, to check for the slightest changes in their application status? Who didn't lose focus at work while waiting and waiting and praying for a positive assessment on their skills or on their sponsorship? Who didn't go an a cleanse diet to not get deferred from the Health checks? In many ways, we've gone through different flavors of these things before we got to where we are. It wasn't something that we just said we want as a lot of other people do. It's something that we said we wanted and will do everything we can no matter what. And that, I think is what fundamentally makes us not just dreamers. We are dream-chasers!"
            ]
        , div [ class "blog-image margin-eight" ]
            [ img [ src "/images/posts/cruisecontrol-1920x1200.png" ] []
            ]
        , p []
            [ text "What I did notice though, is that after being able to settle in and be in our new country, all of a sudden we get comfortable. Now, that is not a bad thing at all, since after all that's the point in seeking a better life abroad - to be comfortable. We want a comfortable life for ourselves and our families. We've gone through a lot, paid the price for being where we are and we deserve that much."
            ]
        , p []
            [ text "A thing that really bothers me though is that it seems this kind of comfort drives us into an ironic state where we easily become even more uncomfortable to a lot of things easily. When we become comfortable to how things are, we tend to want them that way and every other detail that delineates from what we're used to becomes bothersome. For instance, I see this ever so often on my train ride to and from work. People have been used to the 98.5% Train-Schedule guarantee that on that rare occasion we get that 1.5% of service interruption, you'll start hearing people cursing the train management, how it sucks and how unreliable it is. Now I don't know if they've just had to have a taste of our own MRT to be more appreciative. "
            ]
        , p []
            [ text "I noticed too that a lot of people are just way too attached to their jobs even if they're not happy with it, or it's not their real line of work, just to get by, make it through, and be able to pay the bills. While it's good that people are willing to do just any kind of job out there, I think it sucks out the dreamer-chasers in us when we continue on like that. Its simply leaving below our potential while we wait for something different to just happen. And then the tendency is to forget the magic of having gone through the monumental effort and hurdles just to arrive to where we are. "
            ]
        , p []
            [ text "To me, all of us have already arrived the moment we touched down. But it doesn't mean we should stop moving forward and pursuing the bigger dreams. And while they say, good things happen to those who wait. We have to realize that those good things are usually the one's left behind by those who hustle. "
            ]
        , p []
            [ text "So my friend, start strong and keep your that steady pace. Pray harder than you think and don't shrink your dream to fit your life. Instead, keep on growing to fit your life into  your dreams. I wish you all the best!"
            ]
        , blockquote []
            [ p []
                [ text "For God has not given us a spirit of fear, but of power and of love and of a sound mind."
                ]
            , footer [] [ text "2 Timothy 1:7" ]
            ]
        ]



-- {
--     "PostId":1002,
--     "TitleText": "A Couple of Tips When Migrating Abroad",
-- 	"Title": "<h2 class='blog-details-headline text-black'>A Couple of Tips When Migrating Abroad</h2>",
-- 	"SubTitle": "<div class='blog-date no-padding-top'>Posted by <a href='blog-masonry-3columns.html'>Stephen Cate</a> | 15 August 2015 | <a href='blog-masonry-3columns.html'>Motivation</a>, <a href='blog-masonry-3columns.html'>Migration</a> </div>",
--     "SubContent": "<div class='blog-details-text'><blockquote><p>Twenty years from now you will be more disappointed by the things you didn’t do than by the ones you did. So throw off the bowlines, sail away from the safe harbor, catch the trade winds in your sails. Explore. Dream. Discover.</p><footer>Mark Twain</footer></blockquote></div>",
-- 	"Content": "<div class='blog-details-text'><p><span class='first-letter first-letter-light'>M</span>igrating abroad maybe one of the most life-changing decisions to anyone making that leap. You literally have to carry your whole life on a couple of luggage bags wishing you could just take more with you, and for good cause - there is no turning back from this one, well at least not in the immediate and foreseeable future.</p><p>Many of us leave never ever feeling that we are going to be ready for the long haul hiatus. Despite the preparation, anticipation, despidida's, and visits to Antipolo Church, we can only bring as much stuff that we hold dear. When you look at the things you pack, there's always that dilemma of leaving that d-day shirt/sando/short/brief that we've worn since childhood, those deeply sentimental artifacts that symbolizes bits and pieces of the life we're leaving behind.</p><p>This is the reality though and we all made our choice. There's been way too much emotions and money spent (or owed) that we simply must do what we ought to do. So, we pack our bags and go.</p><div class='blog-image margin-eight'><img src='/images/posts/passport-1920x1200.png' alt=''></div><p>In the dark and unknown universe waiting for you on the other side, wherever country you set out for, it's always good to get some insights from people who have been on a somewhat similar spot. Yup, you have not been alone in that feeling, my friend. Please know that I don't claim to be a pro giving rock solid advice that I'd go on a blood pact and bet on with my job. But its always good to put out some thought out there with the best intent, and I wish you the very best. So, here it is - </p><h2 class='text-transform-none'>1. Create your own story, the one you'd like for yourself that you'd be happy to share to people.</h2><br/><p>When I came to Australia, I had been forewarned that I needed to leave not just my family, and not just my friends. I was told over and over that I also needed to leave my pride. As they said - 'Bawal ang ma-pride sa abroad. - A lot of anonymous people'</p><p>I was just shocked by the strong dogma against having that pride when you arrive as a migrant. While I barely knew anyone in this new country, the Kabayan's I've come to meet by chance have all been tamed to this defensive mentality - that notion that their isn't much out here and life's tough. Most are seeing the scarcity more than the opportunities available. For a fact, I must have heard so many stories of hard times, experienced by apparently everyone when they're starting out, that for the first few nights abroad, my best sleep was 2 hours. </p><div class='blog-image margin-eight'><img src='/images/posts/footprint-1920x1200.png' alt=''></div><p>I had those tales creeping in my mind and I started to worry more. The truth is, we are strongly moved by stories, specially those that we can see ourselves fit into. We identify ourselves closely to stories of people who we see ourselves being in the same position with. In my case, I was concerned to hear about how terribly difficult it was for new comers to find a job and get settled. Or, how some starters have been bouncing between any available odd jobs just to get by. I was beginning to see myself in that same situation, dreading the already monumental, if not impossible task ahead.</p><p>On my 2nd day in Australia, I chanced to meet a fellow Filipino on a bus stop waiting for his line. He carried a plastic bag with some leafy vegetables amongst other ingredients to what I suspect is Sinigang. I greeted the man, he was in his late 40s I think. And I said to him, 'Kamusta po? Mukhang sinigang sir ah...' The man looked at me and smiled faintly. We talked for a bit while waiting for our buses.  I learned that he came here some years ago, he couldn't recall the exact number, and he was a successful engineer back home. He was really excited telling me about his past career, position and memories from before here, while asking me about what the familiar places he used to go in the Philippines. He sounded excited about the Philippines and knowing I just recently arrived. Then, I asked him how he is now and where he works. His face changed and from him I saw someone who has never looked so defeated in life. He said he's doing odd jobs whenever he finds one. At the moment, he really wants to get employed as a construction worker, which even that, he said is very difficult with all the competition and all his disadvantage against younger people and other nationalities. He's on his way home to cook lunch for the kids because his wife is at work and he didn't find a gig for that day.</p><p>That encounter made a strong impact on me. It validated all the stories I have heard. It's all true. Life here is indeed tough and could even be punishing. But then, that moment made me realize that, really, you attract what you think. I have been thinking about the negativity for sometime and low and behold, a testament to that showed up to me. It made me wonder, what if, I started thinking the contrary? What if I thought differently and go the more positive route to be optimistic and hopeful instead? Will that attract me a different story for my own?</p><p>It didn't took me a long time to find out the answer for myself. When I started to think more positively about things and changing how I perceived my circumstance, I switched on to a nothing-to-lose mentality. I kept a guard at the thoughts entering my mind. It's like my brain always hosted a party and on that party with all my thoughts socializing together, there's just one rule: No Negatives allowed. I became more determined that I will have a better experience to tell for new starters. And I imagined being able to do what I am doing now, sharing you the kind of story I want. </p><p>I wasn't able to sleep well that very night. Because I was in a job-application frenzy. I didn't stop formatting my CV to the best my English could provide. Then, 3 days later, I got a job offer from a multi-national company, with a full-time permanent role, with above average pay for the same work I have been doing for years in the Philippines. I couldn't forget how I had my fist up in the air, clapping, a tear swelling up in my eye, in awe and amazement of His grace, just right after leaving the building of my new company.</p><p>I believed then, that you really need to see it clearly in your mind. Paint your own story before it actually happens and simply trust that it will.</p><h2 class='text-transform-none'>2. Don't go on Cruise Control.</h2><p>If you share the life-abroad dream like me, then you would have been in leaps of joy in every step of that long journey. From the baby steps like finding out what requirements you need, gathering those requisites through requests countless submissions here and there, we all felt excited that bit by bit we are building the dream.</p><p>I mean, who could forget the drama, and sometimes trauma of those silly English-Proficiency exams? (Yes, IELTS, I'm staring at you with angry eyes, and eye bags all over). Who was not logging in to the Migration website every day, if not by the hour, to check for the slightest changes in their application status? Who didn't lose focus at work while waiting and waiting and praying for a positive assessment on their skills or on their sponsorship? Who didn't go an a cleanse diet to not get deferred from the Health checks? In many ways, we've gone through different flavors of these things before we got to where we are. It wasn't something that we just said we want as a lot of other people do. It's something that we said we wanted and will do everything we can no matter what. And that, I think is what fundamentally makes us not just dreamers. We are dream-chasers!</p><div class='blog-image margin-eight'><img src='/images/posts/cruisecontrol-1920x1200.png' alt=''></div><p>What I did notice though, is that after being able to settle in and be in our new country, all of a sudden we get comfortable. Now, that is not a bad thing at all, since after all that's the point in seeking a better life abroad - to be comfortable. We want a comfortable life for ourselves and our families. We've gone through a lot, paid the price for being where we are and we deserve that much. </p><p>A thing that really bothers me though is that it seems this kind of comfort drives us into an ironic state where we easily become even more uncomfortable to a lot of things easily. When we become comfortable to how things are, we tend to want them that way and every other detail that delineates from what we're used to becomes bothersome. For instance, I see this ever so often on my train ride to and from work. People have been used to the 98.5% Train-Schedule guarantee that on that rare occasion we get that 1.5% of service interruption, you'll start hearing people cursing the train management, how it sucks and how unreliable it is. Now I don't know if they've just had to have a taste of our own MRT to be more appreciative. </p><p>I noticed too that a lot of people are just way too attached to their jobs even if they're not happy with it, or it's not their real line of work, just to get by, make it through, and be able to pay the bills. While it's good that people are willing to do just any kind of job out there, I think it sucks out the dreamer-chasers in us when we continue on like that. Its simply leaving below our potential while we wait for something different to just happen. And then the tendency is to forget the magic of having gone through the monumental effort and hurdles just to arrive to where we are. </p><p>To me, all of us have already arrived the moment we touched down. But it doesn't mean we should stop moving forward and pursuing the bigger dreams. And while they say, good things happen to those who wait. We have to realize that those good things are usually the one's left behind by those who hustle. </p><p>So my friend, start strong and keep your that steady pace. Pray harder than you think and don't shrink your dream to fit your life. Instead, keep on growing to fit your life into  your dreams. I wish you all the best!</p><blockquote><p>For God has not given us a spirit of fear, but of power and of love and of a sound mind.</p><footer> 2 Timothy 1:7</footer></blockquote></div>",
-- 	"Tags": [3,4,1006,1],
-- 	"Date": "03 May 2016",
-- 	"PostAvatarUrl": "/images/posts/passport-480x358.png",
-- 	"CreatedBy" : "Stephen Cate",
-- 	"LastUpdated" : "2016-05-15"
-- }
