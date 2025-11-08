local Ralsei, super = Class(EnemyBattler)

function Ralsei:init()
    super.init(self)

    -- Enemy name
    self.name = "Ralsei"
    -- Sets the actor, which handles the enemy's sprites (see scripts/data/actors/dummy.lua)
    self:setActor("ralsei_boss")

    -- Enemy health
    self.max_health = 20
    self.health = 20
    -- Enemy attack (determines bullet damage)
    self.attack = 10
    -- Enemy defense (usually 0)
    self.defense = 1
    -- Enemy reward
    self.money = 100

    -- Mercy given when sparing this enemy before its spareable (20% for basic enemies)
    self.spare_points = 0

    -- List of possible wave ids, randomly picked each turn
    self.waves = {
        "examplewave",
        "examplewave2"
    }

    -- Dialogue randomly displayed in the enemy's speech bubble
    self.dialogue = {
        "What if I \naccidentally\nhurt you guys?!",
        "I'm sorry, Kris...",
        "I don't want to...",
        "I just want to\nhelp you guys.",
    }

    -- Check text (automatically has "ENEMY NAME - " at the start)
    self.check = "AT 15 DF 0\n* You feel bad.\n* You really don't want to do this."

    -- Text randomly displayed at the bottom of the screen each turn
    self.text = {
        "* Ralsei gives you a nervous\nsmile.",
        "* You can sense Ralsei's \ndiscomfort.",
        "* You really don't want to do this.",
        "* The power of fluffy boys is\nin the air.",
        "* Smells like rotten eggs.",
    }
    -- Text displayed at the bottom of the screen when the enemy has low health
    self.low_health_text = "* Ralsei gives a slight nod.\nIt's nearly over."

    -- Register act called "Smile"
    self:registerAct("Smile")
    -- Register party act with Ralsei called "Tell Story"
    -- (second argument is description, usually empty)
    self:registerAct("Comfort", "", {"susie"})
end

function Ralsei:onAct(battler, name)
    if name == "Smile" then
        -- Act text (since it's a list, multiple textboxes)
        return {
            "* You smile.[wait:5]\n* Ralsei smiles back.",
            "* It seems Ralsei just wants\nto see you happy."
        }

    elseif name == "Comfort" then
        -- Loop through all enemies
        for _, enemy in ipairs(Game.battle.enemies) do
        end
        return "* You and Susie told Ralsei to \nkeep it up.\n* He looked distraught."

    elseif name == "Standard" then --X-Action
        if battler.chara.id == "jockington" then
            -- J-Action text
            return "* Jockington smirked.\n* Ralsei looked away \nfor a second.."
        elseif battler.chara.id == "susie" then
            -- S-Action: start a cutscene (see scripts/battle/cutscenes/dummy.lua)
            return "* Susie told Ralsei it \nwas fine.\nHe stared on."
        else
            -- Text for any other character (like Noelle)
            return "* "..battler.chara:getName().." straightened the\ndummy's hat."
        end
    end

    -- If the act is none of the above, run the base onAct function
    -- (this handles the Check act)
    return super.onAct(self, battler, name)
end

return Ralsei