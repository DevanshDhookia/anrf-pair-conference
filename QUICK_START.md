# Quick Start: Deploy to GitHub Pages

## ✅ DONE - Repository Prepared
- CNAME file created with domain: anrfpairiitk.in
- All files committed to Git
- Ready to push to GitHub

## 🚀 NEXT STEPS (Do These Now):

### 1. Purchase Domain (If Not Done)
Go to GoDaddy and buy: **anrfpairiitk.in**

### 2. Create GitHub Repository
1. Go to: https://github.com/new
2. Name: `anrf-pair-conference`
3. Make it **Public**
4. Click "Create repository"

### 3. Push Your Code
Copy the commands GitHub shows you, they'll look like:

```bash
git remote add origin https://github.com/YOUR_USERNAME/anrf-pair-conference.git
git push -u origin main
```

Run these in Terminal from your project folder.

### 4. Enable GitHub Pages
1. Repository → Settings → Pages
2. Source: **main** branch
3. Save

### 5. Add Custom Domain
1. Still in Pages settings
2. Custom domain: `anrfpairiitk.in`
3. Save

### 6. Configure DNS in GoDaddy
Add these A records (all with name `@`):
- 185.199.108.153
- 185.199.109.153
- 185.199.110.153
- 185.199.111.153

Add CNAME record:
- Name: `www`
- Value: `YOUR_USERNAME.github.io`

### 7. Wait & Enable HTTPS
- Wait 1-2 hours for DNS
- Check "Enforce HTTPS" in GitHub Pages

## 📖 Full Guide
See: GITHUB_GODADDY_SETUP_GUIDE.md

## 🌐 Your Final URL
https://anrfpairiitk.in

---
**Total Time:** 30 min setup + 1-2 hours DNS propagation
**Cost:** Just the domain (~₹800-1500/year)
