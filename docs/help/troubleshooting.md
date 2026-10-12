# Troubleshooting

| Problem | Check |
| --- | --- |
| Runtime conflict after updating | Save your work and restart Blender to load the updated runtime. |
| NumPy errors, or glTF import fails with "DLL load failed" | See [NumPy errors after updating to 1.0.1](numpy-fix.md). |
| Faceboard does not move the face | Check Character, then click **Edit Board** again. |
| Faceboard layout missing | Select faceboard.json from your Epic MetaHuman for Maya installation. |
| No ROM clips listed | Use exported FBX files, not Unreal .uasset files. |
| UV Conform rejected | Check compatible MetaHuman UVs and the Head/Body selection. |
| UV Conform says vertices were rebuilt | Welding or a ZBrush round trip merged or flattened a few Target vertices, so they were rebuilt from their neighbours. They are selected on the Target: Tab into Edit Mode to check them. |
| UV Conform says faces would flip or collapse | The Target's own shape is damaged in more places than can be rebuilt. Fix the selected faces on the Target, or use a copy from before welding or ZBrush, then conform again. |
| Clothing export says "Bind to Body first" | Select the garments it names and click **Bind to Body**. |
| Clothing export says "Enable these in the Outliner first" | Turn the named objects, or the collections holding them, back on in the Outliner. |
| Clothing clips in Unreal but not in Blender | Import the character's DNA in MetaHuman Creator with **Replace**, not **Mesh Fit**. Mesh Fit reshapes MetaHuman Creator's own body to resemble yours, so it doesn't match the body the clothes were bound to. |
| Creased ears, lips or eyelids | Check matching markers and protection. Try fewer Detail Iterations and compare from several angles. |
| Markers are invisible | Enable **Show Markers**. |
| Markers will not import | Set Source and Target; their topology must match the saved marker set. |
| Lower LOD still has the old shape | Apply the preview first. After manual sculpting, use **Update LOD 1-7** and check any warnings. |
| Protection is hard to see | Click **Protect** to view the Source's painted mask. |
| Export blocked by a welded sculpt | Click **Unweld Neck Seam** first. |
| A line shows where head and body meet | Click **Match Seam Normals**. If the line stays, turn off other normals modifiers on the head or body, such as a Weighted Normals node group, which replace REVO's seam shading. |
| Export fails with "Error opening file", or Validate reports `E_SIGNATURE` for a `.orig.dna` file | Update to 1.1.0 and reopen the .blend. The original DNA must still be unchanged where you imported it from; otherwise re-import the character. |
| Painted protection tears into flaps on Balanced or Best | Update to 1.1.0 and run **Conform** again. |

If Unweld reports changed topology or conflicting original meshes, keep the joined sculpt and recover from a saved copy. Do not delete your edits.


