# Release notes

To update, install the ZIP that matches your Blender version, restart Blender, then reopen your project. See [Installation and update](../getting-started/installation.md).

## 1.1.0 (12 October 2026)

Dress your MetaHuman in Blender and send the clothes to Unreal, with a neck seam that no longer shows and DNA exports that shade like the shape you made.

### New

- **Clothing tab.** A new tab between Conform and Textures rigs garments to your character and exports them for Unreal.
    - **Bind to Body** skins the selected garments to the MetaHuman body skeleton, copying weights from the nearest skin. Loose areas such as skirt hems are filled in smoothly, and weights are blended where a garment bridges two body parts, such as a sleeve across the armpit, so the cloth doesn't tear when posed. **Unbind** removes the skeleton again.
    - **Export groups** are collections named `export_<name>`. Each group is exported as its own FBX, with the MetaHuman body skeleton and Unreal's joint orientation, ready to import onto the MetaHuman body.
    - **Body masks** are black-and-white images in the body's and head's UV layouts that hide the skin under each group's clothes in Unreal. They are saved beside each FBX. Skin near openings such as boot tops and cuffs stays visible as a safety margin, and the padding past the UV islands can be set for mipmaps. **Preview on Body** shows the masked character in the viewport, and **Create Mask** makes the images without exporting.
    - Check the bind by loading a body ROM clip in the **Animation** panel.
- **Protected Areas Follow.** An option under **Protect Areas**: protected areas keep their shape but move with the fitted body around them. A protected head rides on the new neck and shoulders, so the neck no longer stretches between them. Off by default.
- **Match Seam Normals.** The head and body now shade as one surface where they meet, without being welded. It runs by itself after Unweld, Align Head to Body, Match Chest Loop and Conform.

### Better exports to Unreal

- **Exported DNA shades like the shape you made.** Export used to keep the original MetaHuman's normals, so Unreal lit an edited head or body as if it still had its old shape, and showed a line along the chest-cut. Export now writes normals for the new shape, and the head and body share the same normals along the neck seam at every LOD.
- **The neck seam stays closed at every LOD.** Lower LODs of the head and body could drift apart along their shared edge, by up to 12 mm on a heavily reshaped body. Export now closes the seam at every LOD.

### Fixes

- **Conform keeps the body where it is.** Markers on arms and hands posed differently on the two meshes could tilt the result by several degrees or shift it forwards or backwards. The Target now keeps its orientation and size. Texture Transfer is fixed the same way. Conform warns if the Target looks rotated; use **Align Target to Source** first in that case.
- **Conform by UVs:**
    - Picking the wrong part (a head while **Body** is selected) now stops within a second instead of hanging at "Sampling UVs".
    - Meshes split from a welded head and body, and meshes back from a ZBrush round trip, now conform instead of being rejected for "reversed or collapsed faces" or "96.9% coverage". The few vertices a weld or ZBrush merged or flattened are rebuilt and selected on the Target so you can check them. If there are too many, the error says the Target's shape is at fault and selects the faces to fix.
- **Match Chest Loop works after a Conform.** It used to read the head from before the Conform, so the gap at the chest stayed open.
- **Painted protection holds on Balanced and Best.** Protection just below full strength could still tear into flaps, most visibly on the neck and shoulders of clothed scans.
- **Export works after restarting Blender.** A character imported before the .blend was first saved lost its copy of the original DNA when Blender closed, so Export failed with "Error opening file". Projects saved with earlier versions repair themselves when opened, as long as the original DNA is still where you imported it from.
- **Apply on a duplicated character** moves only its own eyes, teeth and lashes, not the original character's.

### After updating

- **Export your characters' DNA again** to pick up the new normals and the closed neck seam. You don't need to bake again.
- **Use Replace in MetaHuman Creator.** When you import your DNA, choose **Replace**, not **Mesh Fit**. Replace uses your DNA exactly as exported. Mesh Fit only aims for your shape: MetaHuman Creator reshapes its own body to look like your mesh and refits the skeleton to it, so the result is close but not exact, and clothing made in Blender can clip through.

## 1.0.1 (23 September 2026)

### Fixes

- **NumPy is no longer bundled.** REVO DNA now uses the NumPy that comes with Blender. The copy shipped in 1.0.0 could replace Blender's own NumPy and break other add-ons, including Blender's glTF importer. See [NumPy errors after updating to 1.0.1](numpy-fix.md).

## 1.0.0 (September 2026)

First release: MetaHuman head and body DNA import and export, UV Conform, marker-based Conform with protection, joined neck sculpting, LOD updates, expression and Faceboard previews, ROM playback and texture transfer for Blender 4.2–5.2 on Windows x64.
