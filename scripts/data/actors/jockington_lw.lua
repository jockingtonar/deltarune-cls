local actor, super = Class(Actor, "jockington_lw")

function actor:init()
    super.init(self)

    -- Display name (optional)
    self.name = "Jockington"

    -- Width and height for this actor, used to determine its center
    self.width = 36
    self.height = 44
    
    -- A table that defines where the Soul should be placed on this actor if they are a player.
    -- First value is x, second value is y.
    self.soul_offset = {12.5, 24}

    -- Color for this actor used in outline areas (optional, defaults to red)
    self.color = {0.243, 0.522, 0.149}

    -- Path to this actor's sprites (defaults to "")
    self.path = "party/jockington/light"

    self.default = "walk"

    -- Sound to play when this actor speaks (optional)
    self.voice = "jockington"

    -- Path to this actor's portrait for dialogue (optional)
    self.portrait_path = "party/jockington/portrait"

end

return actor