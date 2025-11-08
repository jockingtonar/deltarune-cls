return {
    school = function(cutscene, event)
        cutscene:setSpeaker("susie")
        cutscene:wait(cutscene:walkTo("kris", "krisdialogue", 1))
        cutscene:text("* Hey, Kris! Have you heard?", "surprise_smile")
        cutscene:text("* School's out today, so we can go do whatever!", "smirk")
        cutscene:text("* Alphys came down with some sickness, and there's no replacement.", "neutral")
        cutscene:text("* I'm heading to the store for now, you can go do something, I guess...", "sus_nervous")
        cutscene:text("* Go explore town a bit, talk to Berdly or something...", "sus_nervous")
        cutscene:text("* We can meet back up at Castle Town later with Ralsei!", "smirk")
        cutscene:wait(cutscene:walkTo("susie_lw", "susiemarker1", 0.5))
        cutscene:wait(cutscene:walkTo("susie_lw", "susiemarker2", 2))
        Game:setFlag("susieschool", true)
    end
}