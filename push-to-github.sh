#!/bin/bash

echo "================================================"
echo "  Push to GitHub: BlakeAcorn/SCORM"
echo "================================================"
echo ""

cd "/Users/blake/Offline SCORM"

# Add remote
git remote add origin https://github.com/BlakeAcorn/SCORM.git 2>/dev/null || echo "Remote already exists"

# Push
echo "Pushing to GitHub..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "================================================"
    echo "  ✅ SUCCESS!"
    echo "================================================"
    echo ""
    echo "Your code is now on GitHub:"
    echo "https://github.com/BlakeAcorn/SCORM"
    echo ""
else
    echo ""
    echo "================================================"
    echo "  ❌ AUTHENTICATION FAILED"
    echo "================================================"
    echo ""
    echo "You need to set up authentication first:"
    echo ""
    echo "Option 1: Use GitHub Desktop (easiest)"
    echo "  https://desktop.github.com"
    echo ""
    echo "Option 2: Create a Personal Access Token"
    echo "  1. Go to: https://github.com/settings/tokens"
    echo "  2. Generate new token (classic)"
    echo "  3. Check 'repo' permissions"
    echo "  4. Copy the token"
    echo "  5. Run this script again"
    echo "  6. Username: BlakeAcorn"
    echo "  7. Password: paste your token"
    echo ""
fi
