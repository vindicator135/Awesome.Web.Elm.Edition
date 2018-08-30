module Models exposing (..)

import Messages exposing (Msg(BlogMsg))
import Blogs.Models exposing (Blog)
import Blogs.Commands
import Navigation exposing (Location)
import Routing exposing (..)


type alias Model =
    { blogs : List Blog
    , route : Route
    }


init : Location -> ( Model, Cmd Msg )
init location =
    let
        model =
            Model
                [ Blog
                    1
                    "Language Tests"
                    "3 Tips to successfully land your IELTS"
                    "<strong>If you ever wonder..</strong>"
                    "03 May 2016"
                    "<h5>It's been a while since I took my IELTS exam but I do get asked about it by some friends who mean to take it for their own intents and purposes. So, I thought about sharing my tips on this regard, at least for the listening which I think in principle just goes for the reading module as well.</h5>"
                    "<div class='blog-details-text'><p><span class='first-letter first-letter-light'>T</span>he International English Language Testing System (IELTS) is one among many great feats every aspiring migrant gets to hurdle with. It will definitely greet you on your way along your visa journey. If you're like me, you may have had that same inkling to just curse upon this irksome requirement. But curse as we might, IELTS is there to stay and we just have to do it.</p><p>(Be forewarned: This worked for personally. I got 9s for the Listening and Reading modules and an overall band score of 8. I'm no English-major or language professional though so just take my tips to augment your own style and regimen. )</p><h2 class='text-transform-none'>Tip #1 - Be a 3rd Wheel.</h2><br/><p>When I started out practicing for the listening module, I took it objectively as if it were an academic exam. I would try to remember the conversation like memorizing text from a book. But I didn't have alot of luck on that route because my mind is like a cache. Its usually fast, but it doesn't retain stuff for too long. </p><p>I realized later that to me, it is more effective if I could somehow relate myself to being the person asking the questions, wanting the answers in the conversation. As Tony Robbins, on of my favorite success coaches would say - effective learning is taking what's new and associating it with a fragment of what you're already familiar with. So try to have a 'feel' for the conversation.</p><div class='blog-image margin-eight'><img class='img-fluid' src='/images/posts/3rd Wheel-1920x1200.png' alt=''></div><p>Here's a scenario - A student is asking his professor about the course requirements and consultation schedules on his Foreign language class. </p><p>What worked really well for me was imagining myself being another student standing present in that very conversation. I immerse myself to thinking that I'm also a student that needs the same information that my classmate is asking my professor. From there I relate to and identify the contextual details in the scenario that describe what is being talked about. In this case, its about getting the details of course requirements and consultation schedules, so keep that context in mind and look out for what 'I need to know'. I am in the same spot as the student asking the question. </p><p>What could even be better is in this regard is to associate this to a time you were in a similar situation. May be during your college days, at the start of the semester when you're all enthused and excited about your classes and learning and getting those A's. You were so eager and pumped up to get started that you wanted to ask your professor for more information. (Which to me lasted until mid-semester, when I start finding myself waking up wishing it would just be a free cut... so I can play DOTA already!)</p><h2 class='text-transform-none'>Tip #2 - Less is more. More is less.</h2><br/><p>The listening module is not about transcribing the conversation. It would be really awesome if you could write so fast to be able to write the discussion between the characters word for word. But in this day and age, chances are you're more used to a touch screen and typing than holding a pen. So, don't race with the conversation trying to jot it all down. The goal is to LISTEN. </p><div class='blog-image margin-eight'><img class='img-fluid' src='/images/posts/LessIsMore-1920x1200.png' alt=''></div><p>There is a big difference between hearing and listening so be self-conscious about it. The way I saw it, hearing is the first and basic step. If you can't hear the conversation well, then that's something you'd want to bring up to the examiner. </p><p>When you're listening, you follow the conversation and watch out for the proper nouns, dates, numbers, adjectives. These you jot down and list down IN ORDER of when they were mentioned in the conversation. Because, note - the questions in the Listening module ask for these potential answers, chronologically, following the flow of the conversation.</p><h2 class='text-transform-none'>Tip #3 - Plugin to Audio books</h2><p>Like most people, the module I really dreaded in IELTS was the writing module. I spent 80% of my preparation time there. So to tell you the truth, my practice for the speaking, listening and reading where really more into just knowing the format of the exam, and the type of questions. I did adhoc, guerrilla tactics to really 'review' for them. And for listening, the best, most effective activity I did was to listen to Game of Thrones audio books. I indulged in the audio books from 'A Storm of Swords' to 'A Dance of Dragons'</p><div class='blog-image margin-eight'><img class='img-fluid' src='/images/posts/GOT-1920x1080.png' alt=''></div><p>But it wasn't always easy to just jack up those earbuds and listen through the 50-plus hours of Game of Thrones (for each book of the 3 books I've gone through). If you'd give it a try, you'll hear what I mean.  It was really hard to wrap my mind around what George Martin was telling when I was starting out with his audio books. The language, vocabulary, jargons, idioms in the GOT books sounded like French fused with German to me on the onset. But after the first 10 hours of hearing this concoction of  old english and modern slangs blended together, I simply got attuned. I think I became more receptive to just be ready for any word/vocabulary that might come up between the Starks, Targaryens, Lannisters, Baratheons,  Greyjoys, Tullys', etc. And with my limited vocabulary, from time to time, I simply had to pause, rewind, look up some words in the dictionary.</p><p>The good thing is, it was really enjoyable to listen through a great novel. It's entertaining and I didn't event notice I was actually developing my listening skills as I went along. This was also a pain-saver from my biggest daily stress - my 3 to 4 hour commute to and from work.</p><p>So there you have it, I hope this helps you in some way and I wish you the best of luck! :)</p></div>"
                , Blog 2 
                    "From Down Under"
                     "Expat tips to save money"
                      "There's not enough money at the end of the time."
                       "04 June 2016"
                       ""
                       "ASdasd asdas dasd asd asdasd as d<h4>dasdasdsad asdasdasdasdasdasdasdasdadda asd asd asd asd asld jalsdkj aksldj alskjd laskjdlaskjldkjl</h4>" 
                , Blog 3 
                    "From Down Under"
                     "Tips to save some"
                      "More more more"
                        "04 June 2016"
                        ""
                       "Ewewewewe welkjkljadsa asd asdasdas dasdas d<h4>dasdasdsad</h4>"
                ]
                (parseLocation location)

        cmds =
            Cmd.batch
                [ Cmd.map BlogMsg Blogs.Commands.fetchAll ]
    in
        ( model, cmds )
