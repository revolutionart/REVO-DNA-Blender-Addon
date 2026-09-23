# Troubleshooting

| Problem | Check |
| --- | --- |
| Runtime conflict after updating | Save your work and restart Blender to load the updated runtime. |
| NumPy errors, or glTF import fails with "DLL load failed" | See [NumPy errors after updating to 1.0.1](numpy-fix.md). |
| Faceboard does not move the face | Check Character, then click **Edit Board** again. |
| Faceboard layout missing | Select faceboard.json from your Epic MetaHuman for Maya installation. |
| No ROM clips listed | Use exported FBX files, not Unreal .uasset files. |
| UV Conform rejected | Check compatible MetaHuman UVs and the Head/Body selection. |
| Creased ears, lips or eyelids | Check matching markers and protection. Try fewer Detail Iterations and compare from several angles. |
| Markers are invisible | Enable **Show Markers**. |
| Markers will not import | Set Source and Target; their topology must match the saved marker set. |
| Lower LOD still has the old shape | Apply the preview first. After manual sculpting, use **Update LOD 1-7** and check any warnings. |
| Protection is hard to see | Click **Protect** to view the Source's painted mask. |
| Export blocked by a welded sculpt | Click **Unweld Neck Seam** first. |

If Unweld reports changed topology or conflicting original meshes, keep the joined sculpt and recover from a saved copy. Do not delete your edits.


