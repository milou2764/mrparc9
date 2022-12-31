AddCSLuaFile()
SWEP.Base = "arc9_base"
SWEP.Spawnable = true
SWEP.Category = "ARC-9 Bravery"
SWEP.AdminOnly = false
SWEP.PrintName = "ARC9 HK416F"
SWEP.TrueName = "ARC9 HK416F"
SWEP.Class = "Unclassified Weapon"
SWEP.Description = [[Description Unavailable.]]
SWEP.UseHands = true
--viewmodel
SWEP.ViewModel = "models/hk416f_1.mdl"
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"
SWEP.MirrorVMWM = true

SWEP.WorldModelOffset = {
    Pos = Vector(-10, 5, -7),
    Ang = Angle(-5, 0, 180),
    Scale = 0.9
}

SWEP.ViewModelFOVBase = 54 -- Set to override viewmodel FOV
-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 20 -- Damage done at point blank range
SWEP.DamageMin = 15 -- Damage done at maximum range
SWEP.ImpactForce = 8 -- Force that bullets apply on hit
SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.
SWEP.RangeMin = 0 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 5000 -- In Hammer units, how far bullets can travel before dealing DamageMin.
SWEP.Distance = 33000 -- In Hammer units, how far bullets can travel, period.
SWEP.Num = 1 -- Number of bullets to shoot
-- Bear in mind: Damage is divided by Num
SWEP.Penetration = 5 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetAngleMax = 45 -- Maximum angle at which a ricochet can occur. Between 1 and 90. Angle of 0 is impossible but would theoretically always ricochet.
SWEP.RicochetChance = 0.5 -- If the angle is right, what is the chance that a ricochet can occur?
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

-------------------------- TRACERS
SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerFinalMag = 0 -- The last X bullets in a magazine are all tracers
SWEP.TracerEffect = "ARC9_tracer" -- The effect to use for hitscan tracers
SWEP.TracerColor = Color(255, 0, 0) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.
SWEP.TracerSize = 3
--ammo
SWEP.Ammo = "smg" -- What ammo type this gun uses.
SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 30 -- Self-explanatory.
SWEP.InfiniteAmmo = true --temp
--fireshit
SWEP.RPM = 800

SWEP.Firemodes = {
    {
        Mode = -1,
    },
    {
        Mode = 1,
    }
}

------------------------- RECOIL
SWEP.RecoilSeed = nil -- Leave blank to use weapon class name as recoil seed.
-- Should be a number.
SWEP.RecoilPatternDrift = 12 -- Higher values = more extreme recoil patterns.
SWEP.RecoilLookupTable = nil -- Use to set specific values for predictible recoil. If it runs out, it'll just use Recoil Seed.
-- SWEP.RecoilLookupTable = {
--     15,
--     3,
-- }
SWEP.RecoilLookupTableOverrun = nil -- Repeatedly take values from this table if we run out in the main table
-- General recoil multiplier
SWEP.Recoil = 0.15
-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil
-- This is for recoil that goes directly to camera, makes gun shoot where sights at but center of screen will be in different place. Like escape from t
SWEP.ViewRecoil = true -- true
SWEP.ViewRecoilUpMult = 40 -- 40-100
SWEP.ViewRecoilSideMult = 5 -- 1-20
-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.2
SWEP.RecoilRandomSide = 0.1
SWEP.RecoilDissipationRate = 10 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0.1 -- How long the gun must go before the recoil pattern starts to reset.
SWEP.Spread = 0.01
SWEP.SpreadAddRecoil = 0 -- Applied per unit of recoil.
-------------------------- HANDLING
SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 3 -- How much the gun sways.
SWEP.HoldBreathTime = 5 -- time that you can hold breath for
SWEP.RestoreBreathTime = 10
SWEP.FreeAimRadiusMultSights = 0.25
SWEP.SwayMultSights = 0.5
SWEP.AimDownSightsTime = 0.25 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.
SWEP.NoSprintWhenLocked = false -- You cannot sprint while reloading with this gun
SWEP.ShootWhileSprint = false
SWEP.Speed = 1
SWEP.SpeedMult = 1
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 0.9
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1
-------------------------- SOUNDS
SWEP.ShootVolume = 125
SWEP.ShootVolumeActual = 1
SWEP.ShootPitch = 100
SWEP.ShootPitchVariation = 0.05
SWEP.ShootSound = "arccw_bravery/ar15/fire_556.ogg" -- Fire
SWEP.ShootSoundSilenced = "weapons/arccw_ud/m16/fire-03.ogg" -- Fire silenced
SWEP.FiremodeSound = "arc9/firemode.wav"
SWEP.ToggleAttSound = "items/flashlight1.wav"
SWEP.BreathInSound = "arc9/breath_inhale.wav"
SWEP.BreathOutSound = "arc9/breath_exhale.wav"
SWEP.BreathRunOutSound = "arc9/breath_runout.wav"
-------------------------- EFFECTS
SWEP.NoMuzzleEffect = false -- Disable muzzle effect entirely
SWEP.NoFlash = false -- Disable light flash
SWEP.DoFireAnimation = true
SWEP.MuzzleEffectQCA = 1
SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.MuzzleParticle = "muzzleflash_1"

-------------------------- POSITIONS
SWEP.IronSights = {
    Pos = Vector(-4.58, -7, 0.61),
    Ang = Angle(0, 0, 0),
    Magnification = 1,
    AssociatedSlot = 0, -- Attachment slot to associate the sights with. Causes RT scopes to render.
    CrosshairInSights = false,
    ---- FLAT SCOPES -- These don't look very good; please use actual RT scopes if possible.
    FlatScope = false,
    FlatScopeOverlay = nil, -- Material()
    FlatScopeKeepVM = false,
    FlatScopeBlackBox = true,
    FlatScopeCC = nil -- Color correction table, see default.lua

}

-- Where the gun should be at the middle of it's irons
SWEP.SightMidPoint = {
    Pos = Vector(-3, 15, -5),
    Ang = Angle(0, 0, -45),
}

-- Alternative "resting" position
SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)
-- Position when crouching
SWEP.CrouchPos = Vector(-4, 1, -4)
SWEP.CrouchAng = Angle(0, 0, -30)
-- Position when sprinting or safe
SWEP.RestPos = Vector(0, 0, 5)
SWEP.RestAng = Angle(10, -30, 0)
-- Position for customizing
SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(20, 32, 4)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(0, 0, 0)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false
SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
SWEP.HoldType = "smg"
SWEP.HoldTypeSprint = "smg"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimDraw = false

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        IKTimeLine = {
            {
                t = 0.0,
                lhik = 1,
            },
        } -- t is in fraction of animation

    },
    ["fire"] = {
        Source = "fire",
    },
    ["draw"] = {
        Source = "deploy",
        EventTable = {
            {
                s = "arccw_bravery/gear/raise.ogg",
                t = 0.1
            },
            {
                s = "arc9/firemode.wav",
                t = 0.7
            },
        },
    },
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {24, 42, 59, 71},
        EventTable = {
            {
                s = "arccw_bravery/ar15/magout_1.ogg",
                t = 0.35
            },
            {
                s = "arccw_bravery/gear/magpouch.ogg",
                t = 1.2
            },
            {
                s = "arccw_bravery/gear/magpouch_pull_small.ogg",
                t = 1.4
            },
            {
                s = "arccw_bravery/ar15/magin_1.ogg",
                t = 1.7
            },
        },
        FrameRate = 37,
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
            },
            {
                t = 2,
                lhik = 1
            }
        }, -- t is in fraction of animation

    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {24, 42, 59, 71, 89},
        EventTable = {
            {
                s = "arccw_bravery/ar15/magout_1.ogg",
                t = 0.35
            },
            {
                s = "arccw_bravery/gear/magpouch.ogg",
                t = 1.2
            },
            {
                s = "arccw_bravery/gear/magpouch_pull_small.ogg",
                t = 1.4
            },
            {
                s = "arccw_bravery/ar15/magin_1.ogg",
                t = 1.7
            },
            {
                s = "arccw_bravery/ar15/chamber_press.ogg",
                t = 3.1
            },
        },
        FrameRate = 37,
        IKTimeLine = {
            {
                t = 0.0,
                lhik = 0,
            },
            {
                t = 3.2,
                lhik = 1
            }
        }, -- t is in fraction of animation
        ["holster"] = {
            Source = "holster",
            EventTable = {
                {
                    s = "arccw_bravery/gear/raise.ogg",
                    t = 0.05
                },
                {
                    s = "arc9/firemode.wav",
                    t = 0.25
                },
            },
        },
    }
}

--attachments
SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if not model then return end

    if wep:HasElement("optic_picatinny") then
        model:SetBodygroup(1, 1)
    else
        model:SetBodygroup(1, 0)
    end
end

SWEP.Attachments = {
    [1] = {
        PrintName = "Rail Du Haut",
        Category = "optic_picatinny",
        Bone = "hk416",
        Scale = 1.2,
        Pos = Vector(0, -0.7, 0),
        Ang = Angle(90, -90, 0),
    },
    [2] = {
        PrintName = "Rail Du Bas",
        Category = "grip_picatinny",
        Bone = "hk416",
        Scale = 1,
        Pos = Vector(0, 3.3, 7),
        Ang = Angle(90, -90, 0),
    },
}