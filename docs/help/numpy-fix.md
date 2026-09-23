# NumPy errors after updating to 1.0.1

REVO DNA 1.0.0 shipped its own copy of NumPy. Blender puts add-on packages in a folder that every add-on shares, so that copy could replace the NumPy that comes with Blender. Other tools that use NumPy could then fail, for example Blender's glTF importer.

**Version 1.0.1 no longer includes NumPy.** It uses the NumPy that comes with Blender. Install the 1.0.1 ZIP for your Blender version, then restart Blender.

## Symptoms

You may see one of these errors, often while importing glTF files or using another add-on:

```text
ImportError: DLL load failed while importing _multiarray_umath: The specified module could not be found.
```

```text
Error importing numpy: you should not try to import numpy from
its source directory; please exit the numpy source tree, and relaunch
your python interpreter from there.
```

## Fix

### 1. Update and restart

1. Install the REVO DNA **1.0.1** ZIP that matches your Blender version (see [Installation and update](../getting-started/installation.md)).
2. Close Blender completely and start it again.

This fixes most cases. The "source directory" error usually means NumPy changed while Blender was running. A restart clears it.

### 2. Remove the old NumPy files

If the error continues after a restart, Blender is still loading the NumPy files left by 1.0.0.

1. Close Blender.
2. Paste this path into the Windows Explorer address bar, replacing `5.2` with your Blender version:

    ```text
    %APPDATA%\Blender Foundation\Blender\5.2\extensions\.local\lib\python3.13\site-packages
    ```

    For Blender 4.2–5.0, the folder is `python3.11` instead of `python3.13`.

3. Delete only these items, if they are present:
    - `numpy`
    - `numpy.libs`
    - `numpy-2.5.2.dist-info` (or `numpy-2.4.4.dist-info` for Blender 4.2–5.0)
4. Start Blender.

!!! warning
    Leave everything else in that folder alone. Other add-ons keep their packages there too.

Still stuck? Ask on the [Discord community](https://discord.gg/EUXecvQ8V).
