ATT.PrintName = "Aimpoint CompM4"
ATT.CompactName = "AIMPOINT"
ATT.Icon = Material("entities/arc9_att_optic_aimpoint.png", "mips smooth")
ATT.Description = [[none]]
ATT.SortOrder = 1

ATT.Model = "models/weapons/arccw_go/atts/compm4.mdl"
ATT.Folder = "REFLEX"

ATT.Category = {"optic_picatinny_medium", "optic_picatinny"}

ATT.Sights = {
    {
        Pos = Vector(0, 15, -1.4),
        Ang = Angle(0, 0, 0),
        Magnification = 1.25,
        ViewModelFOV = 40
    }
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("arc9/dot.png", "mips smooth")
ATT.HoloSightReticle:SetInt("$additive", 1)
ATT.HoloSightSize = 600
ATT.HoloSightColorable = true

ATT.ModelOffset = Vector(0, 0, -0.55)

ATT.SwayAdd = 0.015
ATT.FreeAimRadiusMultSights = 0.25
ATT.SprintToFireTimeAdd = 0.01