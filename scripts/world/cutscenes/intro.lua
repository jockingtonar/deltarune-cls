return {
    opening = function(cutscene, event)
        cutscene:text("* Welcome to Deltarune: Calcium's Last Stand.")
        cutscene:text("* Thank you for playing.")
        Game.world:mapTransition("interior/kris_room")
        cutscene:wait(1)
        cutscene:setSpeaker("toriel")
        cutscene:text("* Kris, wake up, come down!", "toriel")
    end
}