return {

    hospitalpiano = function(cutscene, event)

        cutscene:text("* (It's an obligatory hospital piano,[wait:5] shrunk to fit in the corner.)")
        cutscene:text("* (As a result,[wait:5] it's missing most of the good keys.)")
        cutscene:text("* (Play it?)")
        local opinion = cutscene:choicer({"Yes", "No"})
            if opinion == 1 then
                Assets.playSound("piano")
                cutscene:text("* (Plink...)")
            else
                cutscene:text("* (Your hands linger over the keys doing nothing.)")
                
            end
        
    end,

    otherpiano = function(cutscene, event)

        Assets.playSound("piano")
        
    end,

    toysanta = function(cutscene, event)

        Assets.playSound("piano")
        
    end,

    asgorefridge = function(cutscene, event)
        
        cutscene:text("* (It's a rusty fridge with some photos on it.)")
        local opinion = cutscene:choicer({"Open\nFridge\n", "Don't", "See photos"})
            if opinion == 1 then
              cutscene:text("* (All that's inside is a jar with a single pickle in it...)")
            elseif opinion == 3 then 
              cutscene:text("* (A photo of your mother and father on their wedding day.)")
              cutscene:text("* (She's holding a bouquet of seven flowers.)")
              cutscene:text("* (A reindeer-looking monster stands nearby in a tuxedo.)")
              cutscene:text("* (They all look happy.)")
            else
              cutscene:text("* (You decide not to look.)")  
            end

    end,

    librarybook1 = function(cutscene, event)

      cutscene:text("* How To Care For A Human")
      cutscene:text("* (It's a book for monsters about how to care for humans.)")
      local opinion = cutscene:choicer({"Look in\nthe back", "Look inside"})
        if opinion == 1 then
          cutscene:text("* (According to the card in the back...)")
          cutscene:text("* (... looks like your mother took it repeatedly many years ago.)")
        else
          cutscene:text("* (There are photos of unfamiliar humans inside.)")
          cutscene:text("* (You shut the book quickly.)")
        end

    end,

    politics = function(cutscene, event)

      if Game:getFlag("politicsbear") then
        cutscene:setSpeaker("npc002")
        cutscene:text("* Not everything has to be politics, I guess...")
        cutscene:text("* Hey, maybe THAT'S the true essence of politics!")

      else

        cutscene:setSpeaker("npc002")
        cutscene:text("* Empty day today, eh? Not many people out and about...")
        cutscene:text("* Thaaaat's...[wait:10] well, not really, \nI suppose.")
        Game:setFlag("politicsbear", true)
      end
    
    end,

    sliwa = function(cutscene, event)
      if Game:getFlag("sliwahat") then

        cutscene:setSpeaker("npc003")
        cutscene:text("* What a quiet day out here!")
        cutscene:text("* Amazing day to come and eat \nsome PANCAKE! Wouldn't you \nagree?")

      else

        cutscene:setSpeaker("npc003")
        cutscene:text("* Heya there, partner! Say, isn't today just lovely?")
        cutscene:text("* You ever wonder what secrets people hide behind closed \ndoors?")
        cutscene:text("* Like, you'd never know that \none time, in 1992, I...")
        cutscene:text("* Goddamnit, I LOVE PANCAKE!")
        Game:setFlag("sliwahat", true)
      
      end

    end,

    librarybook2 = function(cutscene, event)

      cutscene:text("* (It's BOOK 1 about SOULS. Read it?)")
      local opinion = cutscene:choicer({"Read", "Don't"})
        if opinion == 1 then
          cutscene:text("* The SOUL has been called many things.")
          cutscene:text("* The font of our compassion. The source of our will.")
          cutscene:text("* The container of our \"life force.\"")
          cutscene:text("* But even now,[wait:5] the true function of it is unknown.")
        else
          
        end

    end,

    papyrushouse = function(cutscene, event)

      Assets.playSound("knock")
      cutscene:text("* (Knock knock knock...)")
      cutscene:text("* (...)")
      cutscene:text("* (No response...)\n[wait:5]* (... but the distant trousle of bones.)")

    end,

    flappy = function(cutscene, event)

      cutscene:setSpeaker("npc001")
      cutscene:text("* Books are awesome, I just love them so much...")
      cutscene:text("* Say, the books on the shelf at the end, you really should read them!")
      cutscene:text("* Go on, walk past me and go look at them!")

    end,

    cashier = function(cutscene, event)

      cutscene:setSpeaker("npc004")
      cutscene:text("* Huh? Where's the person at the counter?")
      cutscene:text("* Well... I picked up some shifts here, so I think it's meant to be me.")
      cutscene:text("* Right now? I'm just taking a good ol' break, as one does.")
      cutscene:text("* If you want something, you \ngotta wait!")

    end,

    dragonfam = function(cutscene, event)

      cutscene:setSpeaker("npc006")
      cutscene:text("* Sorry, could you take our \norder? The only other server \nis...")
      cutscene:text("* Oh, you don't work here? I'm sorry!")

    end,

    briefcase = function(cutscene, event)

      if Game:getFlag("incel") then

        cutscene:setSpeaker("npc007")
        cutscene:text("* I really mean it this time! Go away, punk!")
        cutscene:text("* You don't wanna get into a fight, do ya?!")
      
      else
      
        cutscene:setSpeaker("npc007")
        cutscene:text("* Hey, kid! If you got no \nbusiness with the mayor, you \nbetter scram!")
        cutscene:text("* I mean it![wait:20]\n* C'mon! Get outta here!")
        cutscene:text("* ...[wait:10]For real this time! Get out of this place, pal!")
        Game:setFlag("incel", true)
      end

    end,

    reception = function(cutscene, event)

      if Game:getFlag("lobby") then

        cutscene:setSpeaker("npc009")
        cutscene:text("* I'm sorry, I'm sorry. \n* Are you here to file a complaint?")
        cutscene:text("* The mayor's not your mom, kiddo. We're kinda busy, if you couldn't tell.")

      else

        cutscene:setSpeaker("npc009")
        cutscene:text("* I'm sorry, I'm sorry, do you have an appointment?")
        cutscene:text("* Honey, we've got bigger fish to fry...")
        cutscene:text("* Next time, come for something important, m'kay?")
        Game:setFlag("lobby", true)

      end

    end,

    lobbyhos = function(cutscene, event)

      cutscene:setSpeaker("npc008")
      cutscene:text("* Hi, Kris. Here to visit Rudy again?")
      cutscene:text("* Welp, we're not open right \nnow! So you can't come right \nnow.")
      cutscene:text("* Visiting hours start a bit later, so come sometime \nlater, ok?")

    end,

    fireboy = function(cutscene, event)

      cutscene:setSpeaker("npc005")
      cutscene:text("* Come on, Fire Lad! You got \nthis, Water Lady!")
      cutscene:text("* Man, this one's fun...")
      cutscene:text("* ...[wait:15]huh? What am I doing?")
      cutscene:text("* ...homework.")

    end,

    sansplin = function(cutscene, event)

      Assets.playSound("bell")

    end,

    pizzaraia = function(cutscene, event)

      if Game:getFlag("pizzaraia") then
        cutscene:setSpeaker("npc001")
        cutscene:text("* (He is intrigued. This cannot be changed.)")
      else
          cutscene:setSpeaker("npc001")
          cutscene:text("* (He is not speaking. He stares at you.)")
          cutscene:text("* (Stare back?)")
          local opinion = cutscene:choicer({"Stare", "Look Away"})
            if opinion == 1 then
              cutscene:text("* (You looked intently into his eyes.)")
              cutscene:text("* (Something changed in his expression.)")
              cutscene:text("* (He is intrigued.)")
              Game:setFlag("pizzaraia", true)
            else
              cutscene:text("* (You turn away from the man. He is saddened.)")
              cutscene:text("* (Although you don't see it, you sense his sorrow.)")
              Game:setFlag("sorrow", true)
          end

      end

    end,

    sorrowcond = function(cutscene, event)
      cutscene:setSpeaker("npc001")
      cutscene:text("* (You sense his sorrow. This cannot be changed.)")
      cutscene:setSpeaker("npc010")
      cutscene:text("* YOU WANNA ORDER SOMETHING?")
      cutscene:setSpeaker("npc001")
      cutscene:text("* (His sorrow lingers in the air. You can just feel it.)")
    
    end,

    iceesoda = function(cutscene, event)

      cutscene:text("* (It's a soda-dispensing machine.)")
      local opinion = cutscene:choicer({"Inspect", "Not"})
        if opinion == 1 then
          cutscene:text("* (You took a look at the flavors.)")
          cutscene:text("* WATER")
          cutscene:text("* ICE")
          cutscene:text("* DOUBLE-ICE")
          cutscene:text("* BREAD")
          cutscene:text("* FLAMIN HOT CHEESE SODA")
          cutscene:text("* GAMER BLOOD ENERGY DRINK")
          cutscene:text("* JOCKINGTON SPECIAL FREESE")
          cutscene:text("* BUBBLEGUM BLAST")
          cutscene:text("* RAINWATER")
          cutscene:text("* Juice (Red Flavor)")
        else

        end

    end

}