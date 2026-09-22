# Set up the Faceboard

**The Faceboard needs Epic's `faceboard.json`, which is not included with REVO DNA.** This is a one-time setup. Conforming, sculpting, texture transfer and DNA export do not need this file.

## Download the layout

1. Add [MetaHuman for Maya](https://www.fab.com/listings/9e3bf55e-d4c3-44fc-a3d4-ec4cb772ec29) to your Fab library.
2. In **Epic Games Launcher > Fab Library**, find it and choose **Install to Engine** for a compatible Unreal Engine version.
3. Open the plugin's **Content** folder. Example:

```text
C:\Program Files\Epic Games\UE_5.8\Engine\Plugins\Marketplace\MetaHumanForMaya_5.8\Content
```

4. Extract the **MetaHumanForMaya** ZIP into a permanent folder. Do not leave the layout inside the ZIP.
5. Search the extracted folder for **faceboard.json**.

In the checked version 1.3.0 package, it is under:

```text
MetaHumanForMaya\lib\mh_assemble_lib\2.10.3\<package-id>\mh_assemble_lib\resources\MH.6\faceboard.json
```

Drive, engine version, ZIP name and package folders can differ. `<package-id>` represents the long folder name in your download.

## Select it in REVO DNA

Open **MetaHuman Tools > Animation**, select the extracted JSON in **Faceboard Layout**, then click **Build Faceboard > Edit Board**. Save your Blender file to retain the path.

REVO DNA may find an extracted layout automatically. If it does not, select it manually. Keep the extracted folder available when rebuilding the board or moving the project.

REVO DNA reads the JSON directly; this setup does not launch Maya or load its plugin binaries. Epic's [full Maya installation guide](https://dev.epicgames.com/documentation/metahuman/installing-metahuman-for-maya) also covers installing and enabling the tools inside Maya, which is separate from selecting the layout in Blender.
