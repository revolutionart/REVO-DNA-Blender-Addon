# Installation and update

Choose the ZIP for your Blender version: **4.2–5.0** or **5.1–5.2**. Both are for Windows x64 and include the DNA runtime. NumPy comes with Blender. Install only the matching ZIP.

1. Open Blender Preferences.
2. Open the Extensions menu and choose **Install from Disk**.
3. Select the REVO DNA ZIP without extracting it.
4. Enable the addon if Blender asks.
5. Open a 3D Viewport, press **N**, and select **REVO DNA**.

For an update, save your work, install the new ZIP, then restart Blender. Restarting also replaces the native DNA runtime loaded by the previous version.

Updating from 1.0.0? If you see NumPy errors, see [NumPy errors after updating to 1.0.1](../help/numpy-fix.md).

The docs are a separate website. Install the addon ZIP, not the documentation folder.

## Before importing

Export your character through MetaHuman Creator's **DCC Export** workflow. Keep the head DNA, body DNA and exported textures together. Save a copy before editing.

The [Faceboard](../metahuman/animation.md) also needs the layout data from a local Epic MetaHuman for Maya installation. Marker conforming and texture transfer do not require that layout.
