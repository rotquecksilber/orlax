# ORLAX — Astro Full MVP (static guides & catalog) — FULL package

This package contains:
- Astro project with static pages and a **content collection** (`@astro/content`) for guides.
- 30 fully generated guide articles in `src/content/guides/`.
- Dynamic route at `src/pages/guides/[slug].astro`.
- Design upgrade: Jura font, palette, CSS blocks.
- Deploy configs: `netlify.toml`, `vercel.json`.
- Instructions below.

## Local setup

1. Ensure Node 18+ installed.
2. From project root:
```bash
npm install
# (installs astro and @astro/content)
npm run dev
```

## Production build
```bash
npm run build
# output -> dist
```

## Notes for hosting
- Netlify / Vercel / Cloudflare Pages: point build command to `npm run build` and publish `dist`.
- Add your custom domain (orlax.ru) in hosting settings and configure DNS accordingly.

## How content works
- Guides are stored as markdown files in `src/content/guides/` (frontmatter: title, description, pubDate, tags, slug).
- Dynamic pages use `getEntryBySlug('guides', slug)`.

## Next steps I can do:
- Create sitemap.xml generation and robots.txt.
- Convert existing .astro guide pages to redirects to new slugs.
- Add structured data (FAQ/schema) for selected articles.

Enjoy — the project is packaged and ready to push to a repo.
