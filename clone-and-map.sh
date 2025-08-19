#!/bin/bash
# save as: clone-and-map.sh

DOMAIN="thisiscafeteria.com"
OUTPUT_DIR="cafeteria-clone"
VERCEL_URL="${1:-https://cafeteria-site.vercel.app}"

echo "🍽️ Cloning Cafeteria site with complete file mapping..."
echo "📍 Using Vercel URL: $VERCEL_URL"

# Create file mapping document
cat > FILE_MAP.md << 'EOF'
# File Download Map
Generated: $(date)
Target Site: thisiscafeteria.com

## Download Log
EOF

# Clone with detailed logging
wget --mirror \
     --convert-links \
     --adjust-extension \
     --page-requisites \
     --no-parent \
     --span-hosts \
     --domains="thisiscafeteria.com,static.squarespace.com,images.squarespace-cdn.com,static1.squarespace.com,assets.squarespace.com" \
     --directory-prefix="./$OUTPUT_DIR" \
     -e robots=off \
     --reject="*.mp4,*.avi,*.mov,*.wmv,*.flv,*.webm,*.mkv,*.m4v" \
     --user-agent="Mozilla/5.0" \
     --output-file=wget-detailed.log \
     "https://$DOMAIN"

# Parse wget log and create file map
echo "📊 Creating file inventory..."

cat >> FILE_MAP.md << EOF

## Downloaded Files

### HTML Pages
\`\`\`
$(find $OUTPUT_DIR -name "*.html" -type f | sort)
\`\`\`

### CSS Files  
\`\`\`
$(find $OUTPUT_DIR -name "*.css" -type f | sort)
\`\`\`

### JavaScript Files
\`\`\`
$(find $OUTPUT_DIR -name "*.js" -type f | sort)
\`\`\`

### Images
\`\`\`
$(find $OUTPUT_DIR \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.gif" -o -name "*.svg" \) -type f | sort)
\`\`\`

### Fonts
\`\`\`
$(find $OUTPUT_DIR \( -name "*.woff" -o -name "*.woff2" -o -name "*.ttf" -o -name "*.eot" \) -type f | sort)
\`\`\`

## Statistics
- Total HTML files: $(find $OUTPUT_DIR -name "*.html" -type f | wc -l)
- Total CSS files: $(find $OUTPUT_DIR -name "*.css" -type f | wc -l)
- Total JS files: $(find $OUTPUT_DIR -name "*.js" -type f | wc -l)
- Total images: $(find $OUTPUT_DIR \( -name "*.jpg" -o -name "*.png" -o -name "*.gif" \) | wc -l)

## Squarespace Assets Found
\`\`\`
$(grep -o "https://[^\"]*squarespace[^\"]*" wget-detailed.log | sort -u)
\`\`\`

## Failed Downloads
\`\`\`
$(grep "ERROR" wget-detailed.log || echo "No errors found")
\`\`\`

## Videos Found (Not Downloaded)
\`\`\`
$(grep -o "https://[^\"]*\.\(mp4\|avi\|mov\|webm\|mkv\|m4v\)[^\"]*" wget-detailed.log | sort -u || echo "No videos found in logs")
\`\`\`
EOF

echo "✅ File mapping complete - see FILE_MAP.md"

# Create video inventory for manual handling
grep -o "https://[^\"]*\.\(mp4\|avi\|mov\|webm\|mkv\|m4v\)[^\"]*" wget-detailed.log | sort -u > video-inventory.txt 2>/dev/null || touch video-inventory.txt

echo "📺 Video inventory saved to video-inventory.txt"
echo "💡 Next step: run organize-for-vercel.sh $VERCEL_URL"