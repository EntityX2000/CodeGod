#!/bin/bash

echo "🖼️  Image Metadata Extractor"
echo "═══════════════════════════"
read -p "Enter image filename: " image_file

if [ ! -f "$image_file" ]; then
    echo "❌ Error: File not found!"
    exit 1
fi

echo ""
echo "📊 EXTRACTING METADATA..."
echo "═══════════════════════════"

exiftool -n -p '
┌─────────────────────────────────────┐
│        📸 IMAGE METADATA            │
├─────────────────────────────────────┤
│ 📅 Creation Date: $CreateDate        │
│ 📱 Device Model: $Model              │
│ 📍 GPS: $GPSLatitude, $GPSLongitude  │
│ 🗺️  Maps: https://maps.google.com/?q=$GPSLatitude,$GPSLongitude
└─────────────────────────────────────┘
' "$image_file" 2>/dev/null || echo "❌ Error reading metadata"
