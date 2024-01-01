return {
  -- Your beautiful name :)
  modder = "MajorGalvez",

  -- This must be UNIQUE so be creative!
  -- NO SPACES OR SYMBOLS ALLOWED
  unique_identifier = "Phantom_Valarie",

  -- This is the info about your new entity
  entity_info = {
  -- name: The name that will be shown in the Spawn tab
    name = "Phantom_Valarie",
  -- path: The path to your entity file. 
  -- Must use double slash bars \\ and HAS to be lower case, no CAPITAL LETTERS
    path = "tutorial\\npv\\Phantom_Valarie\\ops\\Phantom_Valarie.ent",
  -- record: This is the TweakDB record that will be used to add your character. More information below.
    record = "Character.afterlife_merc_fast_melee_w_hard",
  -- type: Character or Vehicle
    type = "Character",
  -- customName: Set this to true if you want the name you set here to appear in AMM Scan tab.
    customName = true
  },

  appearances = {
     "Punished_Valarie", 
     "Demon_Valarie",  
  },

  -- Here you can pass a list of attributes from different records to be copied to your new character.
  -- More information below.
  attributes = {
  },
}


-- TweakDB Records -- 
-- You have to select one record to be used for your character. This record will define the name of your character in the Kiroshi Scanner,
-- your character abilities, equipment, health stats, affiliation and much more. If you're not sure what to pick, leave as nil.
-- Some examples:
--
-- "Character.Judy"
-- "Character.Panam"
-- "Character.CitizenAldecaldosMaleNomad"
-- "Character.CitizenAldecaldosFemaleNomad"
-- "Character.CorpoMan"
-- "Character.CorpoWoman"
-- "Character.afterlife_merc_netrunner_w_hard"
-- "Character.afterlife_merc_netrunner_m_hard"

-- TweakDB Attributes --
-- You can copy specific attributes from specific Records. So let's say you want to use Judy's record as the base, but want to change the
-- primary equipment to Panam's equipment. To do this, you have to add the equipment attribute to the list:
--
-- attributes = {
--    primaryEquipment = "Character.Panam.primaryEquipment" 
-- }
--
-- If you want more attributes:
--
-- attributes = {
--    primaryEquipment = "Character.Takemura.primaryEquipment",
--    displayName = "Character.Takemura.displayName"
-- }