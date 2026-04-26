# pablodelgado.org

Personal blog. Built with [Hugo](https://gohugo.io/) and styled with
[Tufte CSS](https://github.com/edwardtufte/tufte-css).

## Branches

- `hugo` — source (markdown content + Hugo config). Push here to deploy.
- `master` — built static site, served by GitHub Pages.
- `source` — archived Octopress source (read-only, kept for history).

## Local development

```sh
brew install hugo
hugo server -D
```

Open <http://localhost:1313>.

## Writing a post

```sh
hugo new content posts/YYYY-MM-DD-my-post.md
```

Edit the file, set `draft = false`, then commit and push to `hugo`.
GitHub Actions builds and pushes the rendered site to `master`.

## Layout

- `content/posts/` — markdown posts
- `layouts/` — Hugo HTML templates
- `static/css/tufte.css` — vendored from edwardtufte/tufte-css
- `static/css/site.css` — small overrides on top of Tufte
- `static/photos/`, `static/images/` — assets
- `static/CNAME` — custom domain

## Permalinks

`/blog/:year/:month/:day/:slug/` — preserved from the original Octopress blog.
