return {
    first = function(cutscene,event)
        cutscene:setSpeaker("toriel")
        cutscene:text("* Kris, you really should go to school now.", "toriel")
        cutscene:text("* The teachers keep on contacting me about your lateness.", "toriel")
    end,

    inter = function(cutscene, event)
        cutscene:wait(cutscene:walkTo("kris", "krisstand", 1))
        cutscene:wait(cutscene:walkTo("toriel", "toereal", 1))
        cutscene:setSpeaker("toriel")
        cutscene:text("* Kris, today is a schoolday, as you know.", "toriel")
        cutscene:text("* However, I'm very... *achoo!* out of it...", "toriel")
        cutscene:text("* Would you mind walking yourself to school today, please?", "toriel")
        cutscene:text("* There'll be cookies when you come home...!", "toriel")
        Game:setFlag("torielscene", true)
        cutscene:wait(cutscene:walkTo("toriel", "torielstand", 0.5))
        Game:setFlag("torielintro", true)
    end
}