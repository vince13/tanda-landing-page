# 🚀 Quick Start Guide

Get your Tanda landing page deployed to `tanda.media` in 5 minutes!

## Step 1: Initialize Git Repository

```bash
cd tanda-landing-page
./SETUP.sh
```

Or manually:
```bash
git init
git add .
git commit -m "Initial commit: Tanda landing page"
```

## Step 2: Create GitHub Repository

1. Go to [GitHub](https://github.com/new)
2. Repository name: `tanda-landing-page`
3. **Do NOT** check "Initialize with README"
4. Click "Create repository"

## Step 3: Push to GitHub

```bash
git remote add origin https://github.com/YOUR_USERNAME/tanda-landing-page.git
git branch -M main
git push -u origin main
```

## Step 4: Deploy (Choose One)

### 🌟 Cloudflare Pages (Recommended)

1. Go to [Cloudflare Dashboard](https://dash.cloudflare.com/) → Pages
2. Create project → Connect GitHub → Select `tanda-landing-page`
3. Build settings:
   - Framework: **None**
   - Build command: (empty)
   - Output directory: `/`
4. Deploy
5. Add custom domain: `tanda.media`
6. Configure DNS (CNAME to your project URL)

### 📄 GitHub Pages

1. Repository → Settings → Pages
2. Source: `main` branch, `/ (root)`
3. Add custom domain: `tanda.media`
4. Configure DNS (CNAME to `YOUR_USERNAME.github.io`)

### ⚡ Netlify

1. Go to [Netlify](https://app.netlify.com/)
2. Add site → Import from GitHub
3. Select `tanda-landing-page`
4. Build command: (empty)
5. Publish directory: `/`
6. Deploy
7. Add custom domain: `tanda.media`

### ▲ Vercel

1. Go to [Vercel](https://vercel.com/)
2. Import project from GitHub
3. Framework: **Other**
4. Deploy
5. Add custom domain: `tanda.media`

## Step 5: Configure DNS

Add CNAME record at your domain registrar:
```
Type: CNAME
Name: @
Value: [Your hosting provider's domain]
```

## ✅ Done!

Your landing page will be live at `https://tanda.media`!

---

**Need more details?** See [DEPLOYMENT.md](./DEPLOYMENT.md) for complete instructions.

