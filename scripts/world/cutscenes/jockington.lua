return {
    invite = function(cutscene, event)
        cutscene:setSpeaker("jockington_lw")
        cutscene:text("* Oh, hey, there! Kris My Buddy.", "smile")
        cutscene:text("* You know, Catti, is away. Sick today.", "smile")
        cutscene:text("* There is, no. School. Today.", "smile")
        cutscene:text("* Say, I'd rather, head home. Do you, wanna join me?", "smile")
        cutscene:text("* I've got no, buddies Today. All Alone.", "smile")
        local opinion = cutscene:choicer({"Yes", "No"})
            if opinion == 1 then
                cutscene:text("* For, real? Wow. Thank You!", "smile")
                cutscene:text("* My apartment is. On left of alley. Can't Miss It.", "smile")
                cutscene:text("* Let's blow, this joint.", "smile")
                cutscene:wait(cutscene:walkTo("jockington_lw", "jockington1", 0.5))
                cutscene:wait(cutscene:walkTo("jockington_lw", "jockington2", 1.3))
                cutscene:wait(cutscene:walkTo("jockington_lw", "jockington3", 0.1))
                Game:setFlag("jockingtongone", true)
                Game:setFlag("schooltalkjock", true)
            else
                cutscene:text("* Oh, well. That's A Shame.", "smile")
                
            end
    end,

    hishouse = function(cutscene, event)
        if Game:getFlag("schooltalkjock") then
            Assets.playSound("knock")
            cutscene:setSpeaker("jockington_lw")
            cutscene:text("* Kris? Is, that you?")
            local opinion = cutscene:choicer({"It's Kris", "Nope"})
                if opinion == 1 then
                    cutscene:text("* Oh, Kris, come on. In.")
                    Game.world:mapTransition("interior/jockieapt")
                    Game:setFlag("schooltalkjock", false)
                else
                    cutscene:text("* Oh. Okay.")
                end
        else
            cutscene:text("* The door is locked.")
        end
    end,

    sockington = function(cutscene, event)
        cutscene:text("* (A sock lies alone in the corner of the room.)")
        cutscene:setSpeaker("jockington_lw")
        cutscene:text("* That's, my pet sock, Sockington.", "smile")
        cutscene:text("* Sometimes, I, feed him, things. Like. Eggs. And milk.", "smile")
    
    end,

    bed = function(cutscene, event)
        cutscene:text("* (A bed. The mattress is Jockington-shaped.)")
        cutscene:setSpeaker("jockington_lw")
        cutscene:text("* My, bed. Very thin, and Very Comfortable.", "smile")
    end,

    basketball = function(cutscene, event)
        cutscene:text("* (An aged basketball. Looks like it hasn't been used in a while.)")
        cutscene:setSpeaker("jockington_lw")
        cutscene:text("* When I'm bored, I like. To play basketball.", "smile")
        cutscene:text("* Sometimes, I lose the ball, but. It Is Okay.", "smile")
        cutscene:text("* Catti just. Roll me up. I am the ball.", "smile")
    end,

    cds = function(cutscene, event)
        cutscene:text("* (An old dusty CD player.)")
        cutscene:setSpeaker("jockington_lw")
        cutscene:text("* That's my, music player. Plays my music.", "smile")
        cutscene:text("* It's playing my music. Right Now.", "smile")
        cutscene:text("* I call it. Jockington and Catti song.", "smile")
        cutscene:text("* Most, was Catti's idea. All of it.", "smile")
        cutscene:text("* Except my guitar, solo. At the end.", "smile")
    end,

    photo = function(cutscene, event)
        cutscene:text("* (A photo of Catti.)")
        cutscene:setSpeaker("jockington_lw")
        cutscene:text("* This. Is a photo of Catti, my, best friend.", "smile")
        cutscene:text("* My. Old chum.", "smile")
    end,

    bedhat = function(cutscene, event)
        cutscene:text("* (A bed with a cap-shaped mattress.)")
        cutscene:setSpeaker("jockington_lw")
        cutscene:text("* That, is bed. For my Hat!", "smile")
        cutscene:text("* Hat needs, sleep too, y'know.", "smile")
    end,

    blackjack = function(cutscene, event)
        cutscene:setSpeaker("jockington_lw")
        cutscene:text("* We are having. So much, fun, aren't we.", "smile")
        cutscene:text("* ... [wait:5]\n* ...", "smile")
        cutscene:text("* Wanna play a. Game?", "smile")
        local opinion = cutscene:choicer({"Of course", "No thanks"})
        if opinion == 1 then
          cutscene:text("* I knew. You'd be, interested.", "smile")
          cutscene:text("* Just one game, Criss, then. We do something else.", "smile")
        else
          cutscene:text("* Come on, Chris. It will be, fun.", "smile")
          cutscene:text("* Just one game, Criss, then. We do something else.", "smile")
          end
        cutscene:text("* The game. It is called, Blackjack.", "smile")
        cutscene:text("* You play with, the pack, of, the pack of cards.", "smile")
        cutscene:text("* What you do, is, I deal you. Two cards. And I deal me two.", "smile")
        cutscene:text("* And, you count how much each of your cards adds up to.", "smile")
        cutscene:text("* Kings, queens. And Jacks. Are eleven each. Aces are one.", "smile")
        cutscene:text("* The goal, is for your cards to add to. Twenty One.", "smile")
        cutscene:text("* You can choose whether to. Stick or twist. When you get cards.", "smile")
        cutscene:text("* Stick means leave your cards as is, twist. is get another.", "smile")
        cutscene:text("* If your cards add up to more than twenty one, you. Lose.", "smile")
        cutscene:text("* If my cards are closer to twenty one than yours. I, win.", "smile")
        cutscene:text("* If yours are closer to twenty one. You win.", "smile")
        cutscene:text("* When we are both ready to go. We both, show our cards.", "smile")
        cutscene:text("* Some people play with betting, but we. Will Not.", "smile")
        cutscene:text("* Let's. Play...!", "smile")
        local card_one_round_one = {
            "Six of Diamonds",
            "Seven of Diamonds",
            "Eight of Diamonds",
            "Six of Hearts",
            "Seven of Hearts",
            "Eight of Hearts",
            "Six of Clubs",
            "Seven of Clubs",
            "Eight of Clubs",
            "Six of Spades",
            "Seven of Spades",
            "Eight of Spades"
        }
        local card_two_round_one = {
            "Two of Diamonds",
            "Four of Diamonds",
            "Two of Hearts",
            "Four of Hearts",
            "Two of Clubs",
            "Four of Clubs",
            "Two of Spades",
            "Four of Spades"
        }
        local card_three_round_one = {
            "Three of Diamonds",
            "Three of Hearts",
            "Three of Clubs",
            "Three of Spades"
        }
        local card_four_round_one = {
            "Jack of Diamonds",
            "Jack of Spades",
            "Jack of Clubs",
            "Jack of Hearts",
            "King of Hearts",
            "King of Spades",
            "King of Clubs",
            "King of Diamonds",
            "Queen of Hearts",
            "Queen of Diamonds",
            "Queen of Spades",
            "Queen of Clubs"
        }
        local card_one_round_one_random = Utils.pick(card_one_round_one)
        local card_two_round_one_random = Utils.pick(card_two_round_one)
        local card_three_round_one_random = Utils.pick(card_three_round_one)
        local card_four_round_one_random = Utils.pick(card_four_round_one)
        cutscene:text("* You have a... "..card_one_round_one_random.." and a... "..card_two_round_one_random..".", "smile")
        cutscene:text("* That adds up to... you. Can do the math.", "smile")
        cutscene:text("* Do you want to keep your hand, or. Get more card.", "smile")
        local opinion = cutscene:choicer({"Stick", "Twist"})
            if opinion == 1 then
                cutscene:text("* You choose. To stick. Okay.", "smile")
                cutscene:text("* I also choose. To stick! So let's see.", "smile")
                cutscene:text("* I have... a Five of Hearts. And. A Jack of Spades.", "smile")
                cutscene:text("* That adds to. Sixteen. Which means I win that, game.", "smile")
                cutscene:text("* We can play, one more. Come on, Kriz.", "smile")
                cutscene:text("* Let's, play again, Kristopher.", "smile")
            else
                cutscene:text("* You want. Another card? Okay!", "smile")
                cutscene:text("* Your new card is... a "..card_three_round_one_random.."!", "smile")
                cutscene:text("* I think I will, twist, also. I will get a new card...", "smile")
                cutscene:text("* It's your, turn, now. Stick or a. Twist?", "smile")
                local opinion = cutscene:choicer({"Stick", "Twist"})
                    if opinion == 1 then
                        cutscene:text("* I, understand. You go stick.", "smile")
                        cutscene:text("* When, Catti play blackjack, she stick a lot too.", "smile")
                        cutscene:text("* I think I will stick also.", "smile")
                        cutscene:text("* So now, we show cards.", "smile")
                        cutscene:text("* I have, a, Five of Hearts, and, an Ace of Spades.", "smile")
                        cutscene:text("* I also have, an Ace of Clubs. I have seven.", "smile")
                        cutscene:text("* Seems like you win that round...", "smile")
                        cutscene:text("* Jockington never lost before.", "smile")
                    else
                        cutscene:text("* Twist. Ok...", "smile")
                        cutscene:text("* Your new card is uh... a "..card_four_round_one_random..".", "smile")
                        cutscene:text("* I think, you've gone over twenty one. So I win.", "smile")
                        cutscene:text("* We can play, one more. Come on, Kriz.", "smile")
                        cutscene:text("* Let's, play again, Kristopher.", "smile")
                    end

            end

        cutscene:text("* Just one, more game?", "smile")

        local opinion = cutscene:choicer({"No thanks \nJockington", "No thanks \nJockington"})
            if opinion == 1 then
                cutscene:text("* Oh. Okay.", "smile")
            else
                cutscene:text("* Oh. Okay.", "smile")
            end

        cutscene:text("* That's fine.", "smile")
        cutscene:text("* ...[wait:15]you, know. What I want. Now?", "smile")
        cutscene:text("* I may, sound. Crazy. But I want some Milk, Cris.", "smile")
        cutscene:text("* My fridge, has. No Milk in it. Did you know?", "smile")
        cutscene:text("* Kriss, we should, go, to, the, store. For.", "smile")
        cutscene:text("* Milk.", "smile")
        cutscene:text("* Krice, are you. Busy?", "smile")
        cutscene:text("* Come On, Chrips, we could have so much fun getting.", "smile")
        cutscene:text("* Milk.", "smile")
        cutscene:text("* Pretty. Please.", "smile")
        cutscene:setSpeaker("npc001")
        cutscene:text("* (It wouldn't hurt to join him.)")
        cutscene:text("* (Time to get. Milk.)")

        local jockington = cutscene:getCharacter("jockington_lw")
        local kris = cutscene:getCharacter("kris_lw")

        jockington:convertToFollower() 
        cutscene:attachFollowers()
        cutscene:wait(0.6)
        Game:addPartyMember("jockington")
        Assets.playSound("charjoined")
        cutscene:text("* (Jockington joined the party.)")
        Game:setFlag("jockington_in_party", true)
        Game:setFlag("getmilk", true)
        
    end
        
}