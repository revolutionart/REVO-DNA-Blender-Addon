# Export MetaHuman DNA

1. **Apply** any Conform preview to the imported Source.
2. **Unweld Neck Seam** if you used a joined sculpt.
3. Check the neutral face, lower LODs and facial movement.
4. In **Export**, click **Bake Edits into Metahuman** for each edited DNA mesh.
5. Click **Validate MetaHuman DNA** and resolve reported problems.
6. **Export MetaHuman DNA** to a new filename, then check it in Unreal.

![Validate the character before export](../assets/images/tool-ui-metahumantools-validate.png){.doc-screenshot .tool-ui-screenshot}

<p class="doc-caption">Validate the character before export</p>

**Bake before exporting.** Apply commits the Conform result to the mesh; Bake prepares the edited character for DNA export.

![Bake edits, then export MetaHuman DNA](../assets/images/tool-ui-metahumantools-export.png){.doc-screenshot .tool-ui-screenshot}

<p class="doc-caption">Bake edits, then export MetaHuman DNA</p>

Keep the original DNA and the `<file name>_revo_mh` folder next to your .blend; export reads the original DNA copy stored there. Head and body export as separate DNA files. A combined DNA is for inspection only.

ROM clips are not included in DNA export. Textures must be saved separately from the [Textures tab](../textures.md).

If export reports a problem, open **REVO DNA Export Report** in Blender's Text Editor.

## Replace or Mesh Fit

MetaHuman Creator offers two ways to bring in your DNA. **Use Replace.**

- **Replace** uses your DNA as it is: the exact vertices and skeleton REVO DNA exported. What you see in Blender is what you get in Unreal.
- **Mesh Fit** treats your DNA only as a shape to aim for. MetaHuman Creator reshapes its own body to look like your mesh, as far as its body model allows, then fits its skeleton to that new body. The result is close, but it isn't your mesh. It differs most where your character is furthest from a standard MetaHuman, such as a much larger chest or hips.

Anything you made against your exact shape in Blender only lines up with that exact shape. With Mesh Fit, clothing bound in the Clothing tab can clip through at the crotch and shoulders even though it fits in Blender, and fixes you made at the neck seam can come back.
