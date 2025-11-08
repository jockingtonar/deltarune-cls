local actor, super = Class(Actor, "toriel")

function actor:init()
    super.init(self)

    -- Display name (optional)
    self.name = "Toriel"

    -- Width and height for this actor, used to determine its center
    self.width = 25
    self.height = 53

    -- Path to this actor's sprites (defaults to "")
    self.path = "npcs/toriel"

    self.default = "walk"

    -- Sound to play when this actor speaks (optional)
    self.voice = "toriel"

    -- Path to this actor's portrait for dialogue (optional)
    self.portrait_path = "npcs/toriel/face"

end

return actor