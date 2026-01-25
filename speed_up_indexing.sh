#!/bin/bash

# Google Indexing Speed-Up Script
# This script submits all URLs to Google for faster indexing

echo "🚀 Starting Google Indexing Speed-Up..."
echo ""

# Your website URLs
SITE="https://anrfpairiitk.in"
URLS=(
    "$SITE/"
    "$SITE/speakers.html"
    "$SITE/organizers.html"
    "$SITE/program.html"
    "$SITE/venue.html"
    "$SITE/instructions.html"
)

# Submit sitemap to Google
echo "📤 Submitting sitemap to Google..."
curl -s "https://www.google.com/ping?sitemap=$SITE/sitemap.xml"
echo "✅ Sitemap submitted!"
echo ""

# Submit sitemap to Bing
echo "📤 Submitting sitemap to Bing..."
curl -s "https://www.bing.com/ping?sitemap=$SITE/sitemap.xml"
echo "✅ Bing sitemap submitted!"
echo ""

# Ping each URL to various services
echo "📤 Pinging URLs to indexing services..."
for url in "${URLS[@]}"; do
    echo "  Pinging: $url"
    
    # Ping to Google
    curl -s "https://www.google.com/ping?sitemap=$url" > /dev/null
    
    # Ping to IndexNow (Microsoft/Bing)
    curl -s "https://www.bing.com/indexnow?url=$url&key=your-key" > /dev/null
    
    sleep 1
done

echo ""
echo "✅ All URLs submitted!"
echo ""
echo "📊 What happens next:"
echo "  • Google will crawl your site within 24-48 hours"
echo "  • Check Google Search Console for indexing status"
echo "  • Run this script again tomorrow if needed"
echo ""
echo "🎯 To check indexing status:"
echo "  Google: site:anrfpairiitk.in"
echo "  Or visit: https://search.google.com/search-console/"
echo ""
