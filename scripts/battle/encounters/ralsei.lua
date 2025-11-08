local Ralsei, super = Class(Encounter)

function Ralsei:init()
    super.init(self)

    -- Text displayed at the bottom of the screen at the start of the encounter
    self.text = "* Wait, what?"

    -- Battle music ("battle" is rude buster)
    self.music = "ralseitest"
    -- Enables the purple grid battle background
    self.background = true

    -- Add the dummy enemy to the encounter
    self:addEnemy("ralsei")

    --- Uncomment this line to add another!
    --self:addEnemy("dummy")
end

return Ralsei