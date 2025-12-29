# Tanda Landing Page

A powerful, SEO-optimized landing page for `tanda.media` - Africa's premier social commerce platform.

## 🎯 Purpose

This is a standalone landing page repository designed to:
- Serve as the main entry point for `tanda.media`
- Drive traffic to `app.tanda.media`
- Maximize SEO rankings for key search terms
- Provide a compelling first impression of Tanda

## 📁 Project Structure

```
tanda-landing-page/
├── index.html          # Main landing page
├── robots.txt          # Search engine crawling rules
├── sitemap.xml         # Site structure for search engines
├── site.webmanifest    # PWA manifest
├── Tanda logo.png      # Logo file
├── apple-touch-icon.png # iOS icon
├── favicon-192x192.png # Favicon 192x192
├── favicon-512x512.png  # Favicon 512x512
├── .gitignore          # Git ignore rules
└── README.md           # This file
```

## 🚀 Quick Start

### 1. Initialize Git Repository

```bash
cd tanda-landing-page
git init
git add .
git commit -m "Initial commit: Tanda landing page"
```

### 2. Create GitHub Repository

1. Go to GitHub and create a new repository (e.g., `tanda-landing-page`)
2. **Do NOT** initialize with README, .gitignore, or license
3. Connect your local repository:

```bash
git remote add origin https://github.com/YOUR_USERNAME/tanda-landing-page.git
git branch -M main
git push -u origin main
```

### 3. Deploy to tanda.media

#### Option A: GitHub Pages (Free)

1. Go to repository Settings → Pages
2. Select source branch: `main`
3. Select folder: `/ (root)`
4. Save
5. Configure custom domain:
   - Add `tanda.media` in Pages settings
   - Update DNS records:
     - Type: `CNAME`
     - Name: `@` or `tanda`
     - Value: `YOUR_USERNAME.github.io`

#### Option B: Cloudflare Pages (Recommended)

1. Connect GitHub repository to Cloudflare Pages
2. Build settings:
   - Build command: (leave empty)
   - Build output directory: `/`
3. Custom domain: `tanda.media`
4. Deploy

#### Option C: Netlify

1. Connect GitHub repository
2. Build settings:
   - Build command: (leave empty)
   - Publish directory: `/`
3. Custom domain: `tanda.media`
4. Deploy

#### Option D: Vercel

1. Import GitHub repository
2. Framework preset: Other
3. Root directory: `.`
4. Custom domain: `tanda.media`
5. Deploy

## 🔧 Configuration

### Update Social Media Links

Edit `index.html` and update:
- Line 41-42: Twitter handles (`@TandaMedia`)
- Line 76-78: Social media URLs in structured data

### Update Statistics

Edit `index.html` and update hero stats (lines 671-682):
- Active Creators count
- Videos Created count
- Products Tagged count

### Update Sitemap

Edit `sitemap.xml` and update:
- `lastmod` dates
- Add/remove URLs as needed

## 📊 SEO Features

✅ **Complete Meta Tags**
- Title, description, keywords
- Open Graph (Facebook/LinkedIn)
- Twitter Cards

✅ **Structured Data (JSON-LD)**
- Organization schema
- WebApplication schema
- SoftwareApplication schema

✅ **Technical SEO**
- Canonical URLs
- Robots.txt
- XML Sitemap
- Semantic HTML5

✅ **Performance**
- Preconnect to external resources
- DNS-prefetch
- Optimized loading

## 🔍 SEO Checklist

After deployment:

- [ ] Submit to Google Search Console
- [ ] Submit to Bing Webmaster Tools
- [ ] Verify structured data with [Google Rich Results Test](https://search.google.com/test/rich-results)
- [ ] Test mobile-friendliness with [Google Mobile-Friendly Test](https://search.google.com/test/mobile-friendly)
- [ ] Check page speed with [PageSpeed Insights](https://pagespeed.web.dev/)
- [ ] Update social media handles in meta tags
- [ ] Add Google Analytics (if needed)
- [ ] Monitor search rankings

## 📝 Maintenance

### Regular Updates

1. **Statistics**: Update hero stats as numbers grow
2. **Features**: Add new features as platform evolves
3. **Content**: Keep messaging current and relevant
4. **Links**: Verify all links to app.tanda.media work
5. **Sitemap**: Update sitemap.xml when adding new pages

### Version Control

- Use semantic versioning for releases
- Tag releases: `v1.0.0`, `v1.1.0`, etc.
- Document major changes in commit messages

## 🌐 Domain Setup

### DNS Configuration

For `tanda.media`:

**If using GitHub Pages:**
```
Type: CNAME
Name: @
Value: YOUR_USERNAME.github.io
```

**If using Cloudflare Pages:**
```
Type: CNAME
Name: @
Value: YOUR_PROJECT.pages.dev
```

**If using Netlify:**
```
Type: CNAME
Name: @
Value: YOUR_PROJECT.netlify.app
```

### SSL Certificate

Most hosting providers (GitHub Pages, Cloudflare, Netlify, Vercel) automatically provide SSL certificates for custom domains.

## 🎨 Design

The landing page uses:
- **Dark theme** with gradient accents
- **Glassmorphism** effects
- **Mobile-first** responsive design
- **Smooth animations** and transitions
- **Tanda brand colors**: Pink (#ff0050) to Cyan (#00f2ea)

## 📱 Mobile Optimization

- Fully responsive design
- Touch-friendly buttons
- Optimized font sizes
- Fast loading times
- PWA-ready (with manifest)

## 🔗 Links

All links point to `app.tanda.media`:
- Sign In / Sign Up buttons
- Feature cards
- Footer navigation
- CTA buttons

## 📄 License

Copyright © 2024 Tanda. All rights reserved.

## 🤝 Contributing

This is a standalone landing page repository. For main app development, see the main Tanda repository.

## 📞 Support

For issues or questions:
- Email: support@tanda.media
- Website: https://app.tanda.media

---

**Built with ❤️ for Africa**

