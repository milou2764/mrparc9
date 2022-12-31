AddCSLuaFile()
SWEP.Base = "arc9_base"
SWEP.Spawnable = true
SWEP.Category = "Armes - Fusil D'assault"
SWEP.AdminOnly = false
SWEP.PrintName = "Famas F1"
SWEP.TrueName = nil
SWEP.Class = "Unclassified Weapon"
SWEP.Trivia = {}
SWEP.Credits = {}
SWEP.Sway = 0 -- How much the gun sways.
SWEP.FreeAimRadius = 0
SWEP.Description = [[Description Unavailable.]]
SWEP.UseHands = true
SWEP.MirrorVMWM = true

SWEP.WorldModelOffset = {
    Pos = Vector(-5, 4, -5),
    Ang = Angle(0, 0, 180),
    Scale = 1
}

SWEP.Crosshair = true
SWEP.ViewModelFOVBase = 70
SWEP.ViewModel = "models/weapons/tfa_ins2/c_famas.mdl"
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"
-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 20 -- Damage done at point blank range
SWEP.DamageMin = 15 -- Damage done at maximum range
SWEP.ImpactForce = 8 -- Force that bullets apply on hit
SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.
SWEP.RangeMin = 0 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 5000 -- In Hammer units, how far bullets can travel before dealing DamageMin.
SWEP.Distance = 33000 -- In Hammer units, how far bullets can travel, period.
SWEP.Num = 1 -- Number of bullets to shoot
SWEP.DistributeDamage = false -- If true, damage is distributed evenly across all bullets. If false, damage is dealt to the first bullet only.
SWEP.Penetration = 5 -- Units of wood that can be penetrated by this gun.
SWEP.PenetrationDelta = 0.1 -- The damage multiplier after all penetration distance is spent.
SWEP.RicochetAngleMax = 45 -- Maximum angle at which a ricochet can occur. Between 1 and 90. Angle of 0 is impossible but would theoretically always ricochet.
SWEP.RicochetChance = 0.5 -- If the angle is right, what is the chance that a ricochet can occur?
SWEP.RicochetSeeking = false -- Whether ricochet bullets will seek living targets in a cone.
SWEP.RicochetSeekingAngle = 30
SWEP.RicochetSeekingRange = 1024
SWEP.DamageType = DMG_BULLET -- The damage type of the gun.
-- DMG_BLAST will create explosive effects and create AOE damage.
-- DMG_BURN will ignite the target.
-- DMG_AIRBOAT will damage Combine Hunter-Choppers.
SWEP.ArmorPiercing = 0 -- Between 0-1. A proportion of damage that is done as direct damage, ignoring protection.
SWEP.HeadshotDamage = 1.25
SWEP.ChestDamage = 1.05
SWEP.StomachDamage = 1
SWEP.ArmDamage = 0.9
SWEP.LegDamage = 0.9

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2.5,
    [HITGROUP_CHEST] = 1.15,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
}

-------------------------- MAGAZINE
SWEP.Ammo = "smg" -- What ammo type this gun uses.
SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 25 -- Self-explanatory.
SWEP.InfiniteAmmo = true
SWEP.ReloadWhileSprint = true
SWEP.CanFireUnderwater = false
-------------------------- FIREMODES
SWEP.RPM = 900

SWEP.Firemodes = {
    {
        Mode = -1
    },
    {
        Mode = 1
    }
}

-------------------------- RECOIL TWEAK THIS PLEASE
SWEP.RecoilSeed = nil -- Leave blank to use weapon class name as recoil seed.
SWEP.Recoil = 2
SWEP.RecoilUp = 1.2 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1.5 -- Multiplier for vertical recoil
-------------------------- SPREAD
SWEP.Spread = 0.01
-------------------------- SOUNDS
SWEP.ShootVolume = 125
SWEP.ShootVolumeActual = 1
SWEP.ShootPitch = 100
SWEP.ShootPitchVariation = 0.05
SWEP.FirstShootSound = nil -- First fire
SWEP.ShootSound = "weapons/tfa_ins2/famas/famas_fp.wav" -- Fire
SWEP.ShootSoundIndoor = nil -- Fire indoors
SWEP.ShootSoundSilenced = "" -- Fire silenced
SWEP.ShootSoundIndoorSilenced = nil -- Fire indoors silenced
SWEP.FirstShootSoundSilenced = nil -- First fire silenced
SWEP.FirstDistantShootSound = nil -- First distant fire
SWEP.DistantShootSound = "" -- Distant fire
SWEP.DistantShootSoundIndoor = nil -- Distant fire indoors
SWEP.DistantShootSoundSilenced = nil -- Distant fire silenced
SWEP.DistantShootSoundIndoorSilenced = nil -- Distant fire indoors silenced
SWEP.FirstDistantShootSoundSilenced = nil -- First distant fire silenced
SWEP.FiremodeSound = "arc9/firemode.wav"
SWEP.ToggleAttSound = "items/flashlight1.wav"
SWEP.MeleeHitSound = "arc9/melee_hitbody.wav"
SWEP.MeleeHitWallSound = "arc9/melee_hitworld.wav"
SWEP.MeleeSwingSound = "arc9/melee_miss.wav"
SWEP.BreathInSound = "arc9/breath_inhale.wav"
SWEP.BreathOutSound = "arc9/breath_exhale.wav"
SWEP.BreathRunOutSound = "arc9/breath_runout.wav"
-------------------------- EFFECTS
SWEP.NoMuzzleEffect = false -- Disable muzzle effect entirely
SWEP.NoFlash = false -- Disable light flash
SWEP.MuzzleParticle = nil -- Used for some muzzle effects.
SWEP.MuzzleEffect = "MuzzleFlash"
SWEP.FastMuzzleEffect = nil

-------------------------- POSITIONS
SWEP.IronSights = {
    Pos = Vector(-3.37, 0, 0.9),
    Ang = Angle(0, 0, 0),
    Magnification = 1,
    AssociatedSlot = 0, -- Attachment slot to associate the sights with. Causes RT scopes to render.
    CrosshairInSights = false,
    Blur = true, -- If arc9_fx_adsblur 1 then blur gun in that ironsights. Disable if your "ironsights" are not real ironsights 
    ---- FLAT SCOPES -- These don't look very good; please use actual RT scopes if possible.
    FlatScope = false,
    FlatScopeOverlay = nil, -- Material()
    FlatScopeKeepVM = false,
    FlatScopeBlackBox = true,
    FlatScopeCC = nil -- Color correction table, see default.lua

}

SWEP.HasSights = true
-- Alternative "resting" position
SWEP.ActivePos = Vector(-0.5, -2, 0)
SWEP.ActiveAng = Angle(0, 0, -5)
-- Position when crouching
SWEP.CrouchPos = Vector(-4, 1, -4)
SWEP.CrouchAng = Angle(0, 0, -30)
-- Position when sprinting or safe
SWEP.RestPos = Vector(0, 0, 0)
SWEP.RestAng = Angle(10, -20, 0)
-- Position for customizing
SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(20, 32, 4)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(0, 0, 0)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false
SWEP.BipodPos = Vector(0, 4, -4)
SWEP.BipodAng = Angle(0, 0, 0)
SWEP.HeightOverBore = 1
-------------------------- HoldTypes
SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "ar2"
SWEP.HoldTypeHolstered = nil
SWEP.HoldTypeSights = "smg"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"
SWEP.HoldTypeNPC = nil
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC -- While in TPIK only -- Tip: if you dont want any additional anim put ACT_HL2MP_GESTURE_RELOAD_MAGIC here instead!
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_AR2 -- Non TPIK
SWEP.AnimDraw = false
SWEP.AnimMelee = ACT_GMOD_GESTURE_MELEE_SHOVE_2HAND
SWEP.AutoReload = false

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 1,
    },
    ["draw"] = {
        Source = "base_draw",
        Time = 1,
    },
    ["fire"] = {
        Source = "base_fire",
        Mult = 1.3,
    },
    ["idle_empty"] = {
        Source = "idle_empty",
        Time = 1,
    },
    ["reload"] = {
        Source = "base_reload",
        Time = 3,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.75,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {
                s = "weapons/tfa_ins2/famas/famas_magrelease.wav",
                t = 0.47
            },
            {
                s = "weapons/tfa_ins2/famas/famas_magout.wav",
                t = 0.54
            },
            {
                s = "weapons/tfa_ins2/famas/famas_magin.wav",
                t = 1.85
            },
        },
    },
    ["reload_empty"] = {
        Source = "base_reload_empty",
        Time = 3.4,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.75,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {
                s = "weapons/tfa_ins2/famas/famas_magrelease.wav",
                t = 0.47
            },
            {
                s = "weapons/tfa_ins2/famas/famas_magout.wav",
                t = 0.54
            },
            {
                s = "weapons/tfa_ins2/famas/famas_magin.wav",
                t = 1.85
            },
            {
                s = "weapons/tfa_ins2/famas/famas_boltback.wav",
                t = 2.45
            },
            {
                s = "weapons/tfa_ins2/famas/famas_boltrelease.wav",
                t = 2.65
            },
        },
    },
}

SWEP.NoShellEject = true

SWEP.Attachments = {
    {
        PrintName = "UPPER RAIL",
        DefaultName = "UPPER RAIL",
        DefaultCompactName = "UPPER RAIL",
        DefaultName_TrueName = "UPPER RAIL",
        DefaultCompactName_TrueName = "UPPER RAIL",
        Category = "optic_picatinny",
        Bone = "M4",
        Pos = Vector(0, 0, -1.5),
        Ang = Angle(90, -90, 0),
    },
    {
        PrintName = "GRIP",
        DefaultName = "GRIP",
        DefaultCompactName = "GRIP",
        DefaultName_TrueName = "GRIP",
        DefaultCompactName_TrueName = "GRIP",
        Category = "grip",
        Bone = "M4",
        Pos = Vector(0, 3, 6),
        Ang = Angle(90, 0, 90),
    },
}