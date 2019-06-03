module Blogs.Blog.View.Blog1 exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)


view : Html msg
view =
    div []
        [ h5 []
            [ text "It's been a while since I took my IELTS exam but I do get asked about it by some friends who mean to take it for their own intents and purposes. So, I thought about sharing my tips on this regard, at least for the listening which I think in principle just goes for the reading module as well." ]
        , hr [] []
        , body
        ]


body : Html msg
body =
    div [ class "blog-details-text" ]
        [ p []
            [ span [ class "first-letter first-letter-light" ]
                [ text "T" ]
            , text "he International English Language Testing System (IELTS) is one among many great feats every aspiring migrant gets to hurdle with. It will definitely greet you on your way along your visa journey. If you're like me, you may have had that same inkling to just curse upon this irksome requirement. But curse as we might, IELTS is there to stay and we just have to do it."
            ]
        , p []
            [ text "(Be forewarned: This worked for personally. I got 9s for the Listening and Reading modules and an overall band score of 8. I'm no English-major or language professional though so just take my tips to augment your own style and regimen. )" ]
        , h2 [ class "text-transform-none" ]
            [ text "Tip #1 - Be a 3rd Wheel." ]
        , br [] []
        , p []
            [ text "When I started out practicing for the listening module, I took it objectively as if it were an academic exam. I would try to remember the conversation like memorizing text from a book. But I didn't have alot of luck on that route because my mind is like a cache. Its usually fast, but it doesn't retain stuff for too long." ]
        , p []
            [ text "I realized later that to me, it is more effective if I could somehow relate myself to being the person asking the questions, wanting the answers in the conversation. As Tony Robbins, on of my favorite success coaches would say - effective learning is taking what's new and associating it with a fragment of what you're already familiar with. So try to have a 'feel' for the conversation." ]
        , div [ class "blog-image margin-eight" ]
            [ img
                [ class "img-fluid"
                , src "/images/posts/3rd Wheel-1920x1200.png"
                ]
                []
            ]
        , p []
            [ text "Here's a scenario - A student is asking his professor about the course requirements and consultation schedules on his Foreign language class. " ]
        , p []
            [ text "What worked really well for me was imagining myself being another student standing present in that very conversation. I immerse myself to thinking that I'm also a student that needs the same information that my classmate is asking my professor. From there I relate to and identify the contextual details in the scenario that describe what is being talked about. In this case, its about getting the details of course requirements and consultation schedules, so keep that context in mind and look out for what 'I need to know'. I am in the same spot as the student asking the question. " ]
        , p []
            [ text "What could even be better is in this regard is to associate this to a time you were in a similar situation. May be during your college days, at the start of the semester when you're all enthused and excited about your classes and learning and getting those A's. You were so eager and pumped up to get started that you wanted to ask your professor for more information. (Which to me lasted until mid-semester, when I start finding myself waking up wishing it would just be a free cut... so I can play DOTA already!)" ]
        , h2 [ class "text-transform-none" ]
            [ text "Tip #2 - Less is more. More is less." ]
        , br [] []
        , p []
            [ text "The listening module is not about transcribing the conversation. It would be really awesome if you could write so fast to be able to write the discussion between the characters word for word. But in this day and age, chances are you're more used to a touch screen and typing than holding a pen. So, don't race with the conversation trying to jot it all down. The goal is to LISTEN. " ]
        , div [ class "blog-image margin-eight" ]
            [ img
                [ class "img-fluid"
                , src "/images/posts/LessIsMore-1920x1200.png"
                ]
                []
            ]
        , p []
            [ text "There is a big difference between hearing and listening so be self-conscious about it. The way I saw it, hearing is the first and basic step. If you can't hear the conversation well, then that's something you'd want to bring up to the examiner. " ]
        , p []
            [ text "When you're listening, you follow the conversation and watch out for the proper nouns, dates, numbers, adjectives. These you jot down and list down IN ORDER of when they were mentioned in the conversation. Because, note - the questions in the Listening module ask for these potential answers, chronologically, following the flow of the conversation." ]
        , h2 [ class "text-transform-none" ]
            [ text "Tip #3 - Plugin to Audio books" ]
        , p []
            [ text "Like most people, the module I really dreaded in IELTS was the writing module. I spent 80% of my preparation time there. So to tell you the truth, my practice for the speaking, listening and reading where really more into just knowing the format of the exam, and the type of questions. I did adhoc, guerrilla tactics to really 'review' for them. And for listening, the best, most effective activity I did was to listen to Game of Thrones audio books. I indulged in the audio books from 'A Storm of Swords' to 'A Dance of Dragons'" ]
        , div [ class "nlog-image margin-eight" ]
            [ img
                [ class "img-fluid"
                , src "/images/posts/GOT-1920x1080.png"
                ]
                []
            ]
        , p []
            [ text "But it wasn't always easy to just jack up those earbuds and listen through the 50-plus hours of Game of Thrones (for each book of the 3 books I've gone through). If you'd give it a try, you'll hear what I mean. It was really hard to wrap my mind around what George Martin was telling when I was starting out with his audio books. The language, vocabulary, jargons, idioms in the GOT books sounded like French fused with German to me on the onset. But after the first 10 hours of hearing this concoction of old english and modern slangs blended together, I simply got attuned. I think I became more receptive to just be ready for any word/vocabulary that might come up between the Starks, Targaryens, Lannisters, Baratheons, Greyjoys, Tullys', etc. And with my limited vocabulary, from time to time, I simply had to pause, rewind, look up some words in the dictionary." ]
        , p []
            [ text "The good thing is, it was really enjoyable to listen through a great novel. It's entertaining and I didn't event notice I was actually developing my listening skills as I went along. This was also a pain-saver from my biggest daily stress - my 3 to 4 hour commute to and from work." ]
        , p []
            [ text "So there you have it, I hope this helps you in some way and I wish you the best of luck! :)" ]
        ]

-- {
--     "PostId" : "1004",
--     "TitleText": "3 Tips to Manage the Money you send home (and keep everyone happy)",
-- 	"Title": "<h2 class='blog-details-headline text-black'>3 Tips to Manage the Money you send home (and keep everyone happy)</h2>",
-- 	"SubTitle": "<div class='blog-date no-padding-top'>Posted by <a href='blog-masonry-3columns.html'>Stephen Cate</a> | 11 July 2016 | <a href='blog-masonry-3columns.html'>Tips</a>, <a href='blog-masonry-3columns.html'>Motivation</a>, <a href='blog-masonry-3columns.html'>Money</a> </div>",
-- 	"SubContent": "<div class='blog-details-text'><blockquote><p>People suddenly know how to use money when there are none left</p><footer>Bangambiki Habyarimana</footer></blockquote></div>",
-- 	"PreContent": "",
-- 	"Content": "<div class='blog-details-text'><p><span class='first-letter first-letter-light'>I</span>t’s payday! Yahoo! After a long month’s work, we can finally rejoice seeing our salary flowing into our accounts. Light bulbs start flashing of all the things we planned to buy or put aside money for. But before everything else, an automatic alarm rings in our heads - remittance time! We have to set aside a slice from our cake for the family first.</p>	<div class='blog-image margin-eight'><img src='/images/posts/euro-coins-close-up-picjumbo-com_1920x1280.jpg' alt=''></div><p>From payday to payday, this is the usual case for many overseas workers, the first thing that we think of with money at hand are the commitments back home. It maybe the tuition fee for our kid or sibling? Perhaps it's for the monthly medication and sustenance for our parents? Maybe it's for the house amortization or utility bills? It may even be that brand new car we drove out the dealership last time we’re home? The list goes on and on…</p><p>It’s always a joy to be able to give back and provide for our loved ones, no doubt. For many of us, that is the main reason why we are abroad in the first place. We want to be able to provide. And we do that by alleviating the financial worries at home as best as we can.</p><p>But there is always a fine line between providing for the family sustainably versus giving more than what even our dollar-earnings can stretch.</p><p>At the end of the day, much like at the end of our time abroad, nobody wants to go home empty handed and not knowing what the heck just happened to the hundred of thousands, if not millions, we’ve earned!</p><p>And no - I don’t believe it’s some stroke of luck why other OFWs retire rich and some others become worse financially than before they left. I believe it’s all about making clear, deliberate and consistent actions that yield our fate, at least for our financial outcomes.</p><p>Here are some tips on how to better manage your remittances -</p><h2 class='text-transform-none'>#1 Be Realistic</h2><br/><p>Being realistic is all about keeping it real. This means we live within our means. This also means that our family lives within that same means we set. </p><p>We can begin by managing expectations. That implies being explicit on just how much we can give considering the monthly salary we get. If our family knows just how far or how much they’ll be getting, then they will fit all the household expenses into that mold as best as they can.</p><div class='blog-image margin-eight'>        <img src='/images/posts/payslip-1024x704.jpg' alt=''>        </div><p>Let’s bust that myth that money comes from trees abroad. Because it doesn’t! There is no reason not to tell the same to our loved ones so they can shun passing on that age-old tale around. Money simply comes from hard work (and perhaps from planting trees themselves as a job if you’re in the agri-industry).</p><h2 class='text-transform-none'>#2 Be Assertive</h2><p>Being realistic is a start to set the stage for better remittance management. But with any good law that passes legislation, it does not make any difference if it is not enforced. That’s why we need to be assertive as well.</p><p>Being assertive means that you take good care of the expectations you set. You push for it by acting consistently on what you said. If you say you’ll be able to send $1,000 at the end of each month, then you will do just that and send exactly $1,000. No more and no less.</p><div class='blog-image margin-eight'>        <img src='/images/posts/91H-1920x1280.jpg' alt=''>        </div><p>Sure, rules are made to be broken. There would be real needs that we can’t foresee or ever plan for that requires us to stretch our budget by a bit (or by large), say for events like health emergencies or when someone gets sick.</p><p>Avoid the frustration and try not to make your assertions a rule. Instead, make them the norm.</p>    <h2 class='text-transform-none'>#3 Be Forward-thinking</h2>    <br/><p>There is always a bigger reason why you want to limit the amount of money you send back home. It’s not simply because you want to deprive your loved ones of what you’re truly capable of giving. It’s not simply because you want to teach them how to live within those means.</p><p>Steven Covey, author of the best-selling booking 7 Habit of Highly Successful People, said this best to <strong>Begin with the end in mind</strong>.</p><p>If you have any reason to <strong>#1 Be Realistic</strong> and to <strong>#2 Be Assertive</strong>, it’s because you have a bigger goal, a plan, that spans not just for the interim or while you’re earning the big bucks abroad. </p><p>To some this goal is about ensuring your kid finishes their degree so they can pursue bountiful careers. To some it could be to muster enough capital to start a business so they wouldn’t need to leave ever again. To others it is to fully pay up the house mortgage so they will never need to pay rent forever. </p><div class='blog-image margin-eight'>        <img src='/images/posts/motivation-rocky-balboa-winner-pose-picjumbo-com-1920x1280.jpg' alt=''>        </div><p>If you have not thought about the long haul yet, just imagine you’re final home-coming, what would you want the people there, you’re loved ones and friends, to say about you? </p><p>You’re big goal is the ‘Ending’ with which you would navigate forward in your journey abroad. Be fixated on it, obsess even if that’s what it takes, and soon enough you and your family will find this a compelling reason to share the load of managing remittances sent home. </p></div>",
-- 	"Tags": [2,1006],
-- 	"Date": "10 July 2016",
-- 	"PostAvatarUrl": "/images/posts/euro-coins-close-up-picjumbo-com_480x320.jpg",
-- 	"CreatedBy" : "Stephen Cate",
-- 	"LastUpdated" : "2016-07-10"
-- }