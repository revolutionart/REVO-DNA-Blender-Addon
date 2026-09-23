# Requirements

**REVO DNA 1.0.1 supports Blender 4.2–5.2 on Windows x64.** An AVX-capable processor is required.

Choose the ZIP that matches your Blender version:

| Blender version | Download |
| --- | --- |
| 4.2 through 5.0 | Blender 4.2–5.0 ZIP |
| 5.1 through 5.2 | Blender 5.1–5.2 ZIP |

Tested on 4.2.23, 5.0.0, 5.1.2 and 5.2.1. Blender 5.3+, macOS and Linux are not supported.

| Feature | Files needed |
| --- | --- |
| DNA import/export | MetaHuman Creator DCC Export head/body DNA |
| UV Conform | Target with compatible MetaHuman UVs |
| Marker Conform | Source and Target meshes |
| Faceboard | Epic MetaHuman for Maya faceboard.json; [download and setup](../metahuman/faceboard-setup.md) |
| Control ROM | Imported head DNA and built Faceboard |
| ROM playback | Compatible animation FBX |

The DNA runtime is included; NumPy comes with Blender. Character DNA, Epic's Faceboard layout and ROM FBX files are not.

Keep original DNA, generated sidecars and saved textures with your project.


