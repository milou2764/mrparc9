$modelname "hk416f_1.mdl"

$bodygroup "frame"
{
     studio "c_hk416f.smd"
}

$bodygroup "ironsight"
{
	 studio "c_irons.smd"
	 blank
}



$cdmaterials models/weapons/hk416f

$attachment "1" "hk416" 0.00 -2.00 20.00 rotate -90 -0 0

$surfaceprop "default"

$contents "solid"



$sequence "idle" {
	"anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 60
	loop
}

$sequence "fire" {
	"anims\fire.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 60
}


$sequence "reload" {
	"anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 60
}


$sequence "reload_empty" {
	"anims\reload_empty.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 60
}


$sequence "deploy" {
	"anims\deploy.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 60
}

$sequence "holster" {
	"anims\holster.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 60
}

$attachment "1" "hk416" 0.00 -2.00 20.00 rotate -90 -0 0

$include "c_arms_definebones.qci"
