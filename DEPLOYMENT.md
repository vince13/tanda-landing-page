# Deployment Guide for Tanda Landing Page

This guide covers deploying the Tanda landing page to `tanda.media` using various hosting platforms.

## 🎯 Prerequisites

1. Domain `tanda.media` registered and DNS access
2. GitHub account (for repository hosting)
3. Hosting platform account (choose one below)

## 📦 Step 1: Prepare Repository

### Initialize Git Repository

```bash
cd tanda-landing-page
git init
git add .
git commit -m "Initial commit: Tanda landing page"
```

### Create GitHub Repository

1. Go to [GitHub](https://github.com/new)
2. Repository name: `tanda-landing-page`
3. Description: "SEO-optimized landing page for tanda.media"
4. Visibility: Public (or Private if preferred)
5. **Do NOT** initialize with README, .gitignore, or license
6. Click "Create repository"

### Push to GitHub

```bash
git remote add origin https://github.com/YOUR_USERNAME/tanda-landing-page.git
git branch -M main
git push -u origin main
```

## 🚀 Step 2: Choose Hosting Platform

### Option A: Cloudflare Pages (Recommended) ⭐

**Why Cloudflare Pages:**
- Free tier with generous limits
- Global CDN for fast loading
- Automatic SSL certificates
- Easy custom domain setup
- Great for static sites

**Steps:**

1. **Connect Repository**
   - Go to [Cloudflare Dashboard](https://dash.cloudflare.com/)
   - Navigate to Pages → Create a project
   - Connect to GitHub
   - Select `tanda-landing-page` repository

2. **Build Settings**
   - Framework preset: **None** or **Other**
   - Build command: (leave empty)
   - Build output directory: `/` (root)
   - Root directory: `/` (root)

3. **Deploy**
   - Click "Save and Deploy"
   - Wait for deployment to complete

4. **Custom Domain**
   - Go to project → Custom domains
   - Add `tanda.media`
   - Follow DNS setup instructions

5. **DNS Configuration**
   - Go to your domain registrar
   - Add CNAME record:
     ```
     Type: CNAME
     Name: @ (or tanda)
     Value: YOUR_PROJECT.pages.dev
     ```
   - Or use Cloudflare nameservers (recommended)

**Result:** `https://tanda.media` will be live!

---

### Option B: GitHub Pages

**Steps:**

1. **Enable Pages**
   - Go to repository Settings → Pages
   - Source: Deploy from a branch
   - Branch: `main` / `/ (root)`
   - Click Save

2. **Custom Domain**
   - In Pages settings, add `tanda.media`
   - This creates a `CNAME` file automatically

3. **DNS Configuration**
   - Add CNAME record at your domain registrar:
     ```
     Type: CNAME
     Name: @
     Value: YOUR_USERNAME.github.io
     ```
   - Or use A records (check GitHub Pages docs for IPs)

**Note:** GitHub Pages is free but has some limitations (100GB bandwidth/month, 1GB storage).

---

### Option C: Netlify

**Steps:**

1. **Connect Repository**
   - Go to [Netlify](https://app.netlify.com/)
   - Click "Add new site" → "Import an existing project"
   - Connect to GitHub
   - Select `tanda-landing-page` repository

2. **Build Settings**
   - Build command: (leave empty)
   - Publish directory: `/` (root)

3. **Deploy**
   - Click "Deploy site"
   - Wait for deployment

4. **Custom Domain**
   - Go to Site settings → Domain management
   - Add custom domain: `tanda.media`
   - Follow DNS instructions

5. **DNS Configuration**
   - Add CNAME record:
     ```
     Type: CNAME
     Name: @
     Value: YOUR_PROJECT.netlify.app
     ```

**Result:** Site will be live with automatic HTTPS!

---

### Option D: Vercel

**Steps:**

1. **Import Project**
   - Go to [Vercel](https://vercel.com/)
   - Click "Add New" → "Project"
   - Import from GitHub
   - Select `tanda-landing-page`

2. **Configure**
   - Framework Preset: **Other**
   - Root Directory: `.`
   - Build Command: (leave empty)
   - Output Directory: (leave empty)

3. **Deploy**
   - Click "Deploy"
   - Wait for deployment

4. **Custom Domain**
   - Go to Project Settings → Domains
   - Add `tanda.media`
   - Follow DNS instructions

5. **DNS Configuration**
   - Add CNAME record:
     ```
     Type: CNAME
     Name: @
     Value: cname.vercel-dns.com
     ```

---

## 🔧 Step 3: DNS Configuration

### If Using Cloudflare Nameservers (Recommended)

1. **Change Nameservers at Domain Registrar**
   - Get nameservers from Cloudflare (e.g., `ns1.cloudflare.com`)
   - Update at your domain registrar
   - Wait for propagation (up to 24 hours)

2. **Add DNS Records in Cloudflare**
   - Type: CNAME
   - Name: @
   - Target: YOUR_PROJECT.pages.dev
   - Proxy: ON (orange cloud)

### If Using Domain Registrar DNS

Add CNAME record:
```
Type: CNAME
Name: @ (or tanda)
Value: [Your hosting provider's domain]
TTL: 3600 (or Auto)
```

## ✅ Step 4: Verify Deployment

### 1. Check Site is Live

Visit `https://tanda.media` and verify:
- ✅ Page loads correctly
- ✅ SSL certificate is active (green lock)
- ✅ All images load
- ✅ Links work

### 2. Test SEO

- [Google Rich Results Test](https://search.google.com/test/rich-results)
- [Mobile-Friendly Test](https://search.google.com/test/mobile-friendly)
- [PageSpeed Insights](https://pagespeed.web.dev/)

### 3. Submit to Search Engines

**Google Search Console:**
1. Go to [Search Console](https://search.google.com/search-console)
2. Add property: `tanda.media`
3. Verify ownership
4. Submit sitemap: `https://tanda.media/sitemap.xml`

**Bing Webmaster Tools:**
1. Go to [Bing Webmaster Tools](https://www.bing.com/webmasters)
2. Add site: `tanda.media`
3. Verify ownership
4. Submit sitemap

## 🔄 Step 5: Continuous Deployment

All platforms above support automatic deployments:

- **Push to `main` branch** → Automatic deployment
- **Pull requests** → Preview deployments (on some platforms)
- **Custom branches** → Branch deployments

### Making Updates

```bash
# Make changes to index.html or other files
git add .
git commit -m "Update landing page content"
git push origin main
# Deployment happens automatically!
```

## 🎨 Customization

### Update Content

Edit `index.html`:
- Hero stats (lines 671-682)
- Feature descriptions
- CTA text
- Footer links

### Update SEO

Edit meta tags in `index.html`:
- Title (line 13)
- Description (line 15)
- Keywords (line 16)
- Social media handles (lines 41-42)

### Update Sitemap

Edit `sitemap.xml`:
- Add/remove URLs
- Update `lastmod` dates
- Adjust priorities

## 🐛 Troubleshooting

### Site Not Loading

1. **Check DNS propagation**: Use [whatsmydns.net](https://www.whatsmydns.net/)
2. **Verify DNS records**: Ensure CNAME is correct
3. **Check SSL**: Wait for certificate provisioning (can take up to 24 hours)
4. **Check hosting logs**: Look for deployment errors

### SSL Certificate Issues

- Most platforms auto-provision SSL
- Wait 24 hours after DNS setup
- Ensure DNS is pointing correctly
- Check platform status page

### 404 Errors

- Verify `index.html` is in root directory
- Check hosting platform settings
- Ensure build output directory is correct

## 📊 Monitoring

### Analytics

Add Google Analytics to `index.html` (before `</head>`):

```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_MEASUREMENT_ID');
</script>
```

### Uptime Monitoring

Set up monitoring with:
- [UptimeRobot](https://uptimerobot.com/) (free tier available)
- [StatusCake](https://www.statuscake.com/)
- [Pingdom](https://www.pingdom.com/)

## 🎉 Success!

Once deployed, your landing page will be live at `https://tanda.media` with:
- ✅ Fast loading times
- ✅ SEO optimization
- ✅ Mobile responsiveness
- ✅ Automatic SSL
- ✅ Global CDN (on most platforms)

---

**Need Help?** Contact support@tanda.media

