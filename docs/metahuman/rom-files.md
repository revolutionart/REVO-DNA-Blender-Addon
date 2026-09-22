# Getting ROM animations

`UE5_MH_ROMS` is a folder name used for local FBX exports. It is not a required folder and is not an Epic download package. You can save your clips anywhere and select that folder in REVO DNA.

## Find the animations in Unreal

Install the additional MetaHuman Creator content for your Unreal Engine version. Enable Plugin Content in the Content Browser, then browse to:

```text
/MetaHumanCharacter/Optional/Animation/TemplateAnimations
```

These animations are stored on disk as Unreal `.uasset` files. For example, this installed UE 5.8 folder contains the ROM assets:

```text
F:\Program Files\Epic Games\UE_5.8\Engine\Plugins\MetaHuman\MetaHumanCharacter\Content\Optional\Animation\TemplateAnimations\Technical_Loops
```

The face clip is `FaceROM\mhc_mh001_fmn_rom_face.uasset`; the body clip is `BodyROM\mhc_body_rom_body.uasset`. Replace the drive and Unreal installation folder with yours.


## Export FBX

1. Find the FaceROM or BodyROM Animation Sequence.
2. Retarget it to your assembled character if needed, following Epic's instructions above.
3. Select the resulting Animation Sequence in the Content Browser.
4. Right-click and choose **Asset Actions > Export**, then save as FBX.
5. Repeat for other clips you want to test.

Retargeting's Export Animation button creates an Unreal animation asset. The separate Asset Actions export creates the FBX file for Blender.

If the export menu does not offer FBX, check that you selected an Animation Sequence rather than a Blueprint or the MetaHuman Character asset.

## Load in REVO DNA

Open **MetaHuman Tools > Animation**. Set ROM Folder to your export folder, choose a Clip and click Load Clip. You can also select a single file with Import ROM FBX. Play or scrub the Blender timeline to inspect it.

No external animation is needed for [Build Control ROM](animation.md#optional-control-test). It generates a control test from your character's DNA inside Blender.
