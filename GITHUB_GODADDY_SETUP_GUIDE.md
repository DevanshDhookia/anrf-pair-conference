# GitHub Pages Setup with GoDaddy Domain
# Complete Step-by-Step Guide for anrfpairiitk.in

## Phase 1: Purchase Domain (Do This First)

1. Go to https://www.godaddy.com
2. Search for: **anrfpairiitk.in**
3. Purchase the domain (~₹800-1500/year)
4. Complete the purchase
5. **IMPORTANT:** Keep GoDaddy tab open - you'll need it for DNS configuration

---

## Phase 2: Prepare Your GitHub Repository

### Step 1: Create CNAME File

This file tells GitHub Pages what your custom domain is.

```bash
cd "/Users/devanshdhookia/Desktop/Anushka Project "
echo "anrfpairiitk.in" > CNAME
```

### Step 2: Commit All Changes

```bash
git add .
git commit -m "Add CNAME for custom domain anrfpairiitk.in"
```

---

## Phase 3: Create GitHub Repository

1. **Go to GitHub:** https://github.com
2. **Sign in** (or create account if needed)
3. **Click "+" icon** → "New repository"
4. **Repository settings:**
   - Name: `anrf-pair-conference` (or any name)
   - Description: "ANRF PAIR Cancer Conference 2026 - IIT Kanpur"
   - Visibility: **Public** (required for free GitHub Pages)
   - **DO NOT** check "Initialize with README"
5. **Click "Create repository"**

---

## Phase 4: Push Your Code to GitHub

Copy your repository URL from GitHub (looks like: `https://github.com/YOUR_USERNAME/anrf-pair-conference.git`)

Then run these commands:

```bash
cd "/Users/devanshdhookia/Desktop/Anushka Project "

# Add GitHub as remote
git remote add origin https://github.com/YOUR_USERNAME/anrf-pair-conference.git

# Push to GitHub
git branch -M main
git push -u origin main
```

**Replace `YOUR_USERNAME` with your actual GitHub username!**

---

## Phase 5: Enable GitHub Pages

1. **Go to your repository** on GitHub
2. **Click "Settings"** (top menu)
3. **Click "Pages"** (left sidebar)
4. **Under "Source":**
   - Branch: Select **main**
   - Folder: Select **/ (root)**
5. **Click "Save"**
6. **Wait 1-2 minutes** - GitHub will build your site

Your site will initially be at: `https://YOUR_USERNAME.github.io/anrf-pair-conference/`

---

## Phase 6: Add Custom Domain in GitHub

1. **Still in Settings → Pages**
2. **Under "Custom domain":**
   - Enter: `anrfpairiitk.in`
   - Click **Save**
3. **Wait for DNS check** (will show pending)
4. **DO NOT check "Enforce HTTPS" yet** - wait for DNS to propagate first

---

## Phase 7: Configure DNS in GoDaddy (CRITICAL STEP)

### Go to GoDaddy DNS Management:

1. **Log in to GoDaddy**
2. **Go to:** My Products → Domains
3. **Click on:** anrfpairiitk.in
4. **Click:** DNS / Manage DNS

### Add These DNS Records:

#### Delete Existing A Records (if any)
- Remove any existing A records pointing to GoDaddy's parking page

#### Add New A Records (for apex domain):

**Record 1:**
- Type: `A`
- Name: `@`
- Value: `185.199.108.153`
- TTL: `600 seconds` (or 1 hour)

**Record 2:**
- Type: `A`
- Name: `@`
- Value: `185.199.109.153`
- TTL: `600 seconds`

**Record 3:**
- Type: `A`
- Name: `@`
- Value: `185.199.110.153`
- TTL: `600 seconds`

**Record 4:**
- Type: `A`
- Name: `@`
- Value: `185.199.111.153`
- TTL: `600 seconds`

#### Add CNAME Record (for www subdomain):

**Record 5:**
- Type: `CNAME`
- Name: `www`
- Value: `YOUR_USERNAME.github.io`
- TTL: `600 seconds`

**Replace `YOUR_USERNAME` with your actual GitHub username!**

### Save All Changes

Click "Save" or "Save Changes" in GoDaddy

---

## Phase 8: Wait for DNS Propagation

**Timeline:**
- Minimum: 10-30 minutes
- Maximum: 24-48 hours
- Usually: 1-2 hours

**Check DNS Propagation:**
- Go to: https://www.whatsmydns.net
- Enter: `anrfpairiitk.in`
- Check if A records show GitHub's IPs

---

## Phase 9: Enable HTTPS (After DNS Propagates)

1. **Go back to GitHub:** Repository → Settings → Pages
2. **Wait for:** "DNS check successful" message
3. **Check the box:** ✅ **Enforce HTTPS**
4. **Wait 5-10 minutes** for SSL certificate to be issued

---

## Phase 10: Verify Your Website

**Your website will be live at:**
- ✅ `https://anrfpairiitk.in`
- ✅ `https://www.anrfpairiitk.in`

**Both will work and redirect to HTTPS automatically!**

---

## Troubleshooting

### If DNS check fails:
- Wait longer (up to 24 hours)
- Verify A records in GoDaddy are correct
- Check whatsmydns.net for propagation status

### If HTTPS doesn't work:
- Make sure DNS check passed first
- Wait 10-15 minutes after enabling
- Try clearing browser cache

### If website shows 404:
- Verify `index.html` exists in repository
- Check GitHub Pages is enabled
- Ensure branch is set to `main`

---

## Updating Your Website Later

To make changes:

```bash
cd "/Users/devanshdhookia/Desktop/Anushka Project "

# Make your changes to HTML/CSS files

# Commit and push
git add .
git commit -m "Update website content"
git push

# Changes will appear in 1-2 minutes!
```

---

## Cost Summary

- **Domain (GoDaddy):** ₹800-1500/year
- **Hosting (GitHub Pages):** FREE forever
- **SSL Certificate:** FREE (automatic)
- **Bandwidth:** FREE unlimited
- **Total:** Just the domain cost!

---

## Important Notes

1. **Keep domain renewed** - Set auto-renewal in GoDaddy
2. **GitHub repo must be Public** for free GitHub Pages
3. **CNAME file must exist** in repository root
4. **DNS changes take time** - be patient
5. **HTTPS is automatic** - GitHub handles it

---

## Your Final URLs

- **Primary:** https://anrfpairiitk.in
- **With www:** https://www.anrfpairiitk.in
- **GitHub URL:** https://YOUR_USERNAME.github.io/anrf-pair-conference/

All will work and redirect to HTTPS!

---

**Ready to start? Follow the phases in order!** 🚀
