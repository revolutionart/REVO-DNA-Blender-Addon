# REVO DNA documentation

Artist documentation for REVO DNA 1.0.0.

## Preview

From this directory:

```powershell
py -3.11 -m pip install -r requirements.txt
py -3.11 -m mkdocs serve --livereload
```

Open http://127.0.0.1:8000. Markdown, images, stylesheets and navigation changes rebuild automatically and reload the open browser page. Keep `--livereload` explicit: the installed MkDocs/Click combination otherwise disables watching. You can also run `./serve.ps1` from any directory to launch this preview.

## Build

```powershell
py -3.11 -m mkdocs build --strict
```

The website is written to `site/`. Pushing to `main` runs a strict build and publishes it through GitHub Pages Actions. The workflow can also be started manually from GitHub's Actions tab.

Public documentation: https://revolutionart.github.io/REVO-DNA-Blender-Addon/

In repository Settings > Pages, the build source is GitHub Actions. Only documentation sources and web assets are tracked; generated pages, Photoshop source files and product resources stay local.

## Updating the guide

Keep button names and section order aligned with Blender. Describe current behaviour, with release history kept out of workflow pages. Check the native implementation when behaviour changes; the bundled guide and website should describe the same release.

## Screenshots and YouTube

Screenshot placeholders are in `docs/assets/images/`. Each workflow page uses the `doc-screenshot` class to center its image and keep it within the page width. Replace a placeholder with a PNG or WebP and update the image filename in that page. Keep useful alt text and the centered caption.

The navigation and workflow pages link to `docs/tutorials.md`, which embeds the [full workflow tutorial](https://youtu.be/6bZvLnkjals) in a responsive video player and includes a direct YouTube link.
