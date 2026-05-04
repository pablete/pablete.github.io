# Project notes for future Claude sessions

This is **pablodelgado.org** — a Hugo blog with Tufte CSS. Migrated from
Octopress in April 2026. Source lives on the `hugo` branch; CI publishes the
built site to `master` (which GitHub Pages serves).

## Quick orientation

```
content/
├── talks/<YYYY-MM-DD-slug>/index.md   # page bundles; photos colocated
├── posts/<YYYY-MM-DD-slug>/index.md   # currently hidden (see flag below)
├── arxiv.md                           # papers list
└── about.md
layouts/
├── _default/{baseof,single,list}.html
├── talks/{single,list}.html           # section override: shows event/city
├── index.html                         # home page = talks list
└── shortcodes/                        # see Shortcodes section
static/css/
├── tufte.css                          # vendored from edwardtufte/tufte-css
├── chroma.css                         # rose-pine-dawn syntax theme (bg: #eff1f5)
└── site.css                           # all our overrides
```

## Conventions

- **Page bundles only.** Each post is a directory with `index.md` plus its
  images. Reference images relatively: `![alt](0001.jpg)` not `/photos/...`.
  `static/photos/` has only one orphan (`0006_large.jpg`); fine to delete.
- **`.main-column` (55%)** = the narrow Tufte serif reading column.
  **`.fullwidth` / 90%** = body + right margin together. Videos and code blocks
  use 90%; paragraphs and tables use 55%.
- **Talk frontmatter**: `event:` and `city:` are optional. Both render on a
  second line (italic, stone color) on `/talks/` and on the talk's own page.
- **Permalinks**: talks keep their original `/blog/:year/:month/:day/:slug/`
  URL pattern (preserves inbound links from the Octopress era).

## Custom shortcodes

| Shortcode | Renders | Notes |
|---|---|---|
| `sidenote` | numbered margin note | use *inline* in a paragraph; floats need an anchor |
| `marginnote` | unnumbered margin note | same rule |
| `sidefigure` | figure: image in body, caption in margin | |
| `marginfigure` | figure: image *and* caption in margin | |
| `mainfigure` | figure: 55% with caption below | |
| `fullfigure` | figure: 90% with caption | |
| `gallery` | photo grid (default 3 cols, `cols="2"` etc.) | wrap markdown images inside |
| `youtube` / `vimeo` / `slideshare` / `gdrive-pdf` | 16:9 embed at .fullwidth | |

## Design tokens (in `site.css`, `:root`)

- `--canvas: #f5f4ed` (warm parchment page bg)
- `--accent: #a00000` (Tufte red — links, sidenote numbers, inline-code tint)
- `--ink / --ink-soft / --stone / --rule` warm neutral ramp
- `--serif: Charter, "Source Serif 4", Georgia, …`
- `--mono: "JetBrains Mono", ui-monospace, …`
- Code blocks: `#eff1f5` cool grey, ring shadow, single box (the
  `.highlight > pre` is the only painted layer)
- Root font-size is 13px (overrides Tufte's 15px default)

## Toggles

```toml
# hugo.toml
[params]
  showPosts = false   # flip to true to surface /posts/ in the nav
```

When you're ready to publish your first real post, just set `showPosts = true`
and rebuild. The home page will keep showing talks; only the nav changes.

## Build & dev

```sh
/opt/homebrew/Cellar/hugo/0.160.1/bin/hugo server -D    # local
/opt/homebrew/Cellar/hugo/0.160.1/bin/hugo --gc         # one-shot build
```

(`brew link hugo` puts it on PATH if you'd rather just type `hugo`.)

CI: `.github/workflows/hugo.yml` builds on push to `hugo`, deploys to `master`.

## Recent decisions worth remembering

- **Chroma over sugar-high**: chroma is built into Hugo (zero JS), supports
  C/C++/Python/Ruby/Go/JS/etc. Sugar-high is JS-only and doesn't cover
  C-family languages — wrong fit.
- **Why CUDA code blocks are tagged `cpp`**: chroma doesn't recognize `cuda`
  as a lexer name and falls back to plain text. `cpp` highlights identically
  for our purposes.
- **Why `.highlight > pre` is the painted box, not `.highlight`**: avoids the
  nested-rectangle look. Inner code/spans are forced transparent.
- **Tufte's `pre > code` rule** sets `width: 52.5%; margin-left: 2.5%;
  overflow-x: auto` — this is what was creating the "window inside a window"
  effect; we override it.

## Open questions / possible next moves

- Add aliases for the old `/photos/...` URLs to redirect to bundle URLs (only
  matters if external sites link to them).
- Add a resource-aware `figure` shortcode that uses `.Resources.GetMatch`
  for responsive `srcset` thumbnails (worth doing once any post has 20+
  photos).
- Bring `showPosts = true` and write a real first post.
