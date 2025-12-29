#!/bin/bash

# Tanda Landing Page - Git Repository Setup Script
# This script helps you initialize the git repository and prepare for deployment

echo "🚀 Tanda Landing Page - Repository Setup"
echo "=========================================="
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first."
    exit 1
fi

# Check if already a git repository
if [ -d ".git" ]; then
    echo "⚠️  This directory is already a git repository."
    read -p "Do you want to reinitialize? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        rm -rf .git
        echo "✅ Removed existing .git directory"
    else
        echo "Skipping git initialization."
        exit 0
    fi
fi

# Initialize git repository
echo "📦 Initializing git repository..."
git init
git branch -M main

# Add all files
echo "📝 Adding files to git..."
git add .

# Initial commit
echo "💾 Creating initial commit..."
git commit -m "Initial commit: Tanda landing page - SEO optimized landing page for tanda.media"

echo ""
echo "✅ Git repository initialized successfully!"
echo ""
echo "📋 Next Steps:"
echo "1. Create a new repository on GitHub (do NOT initialize with README)"
echo "2. Run these commands:"
echo ""
echo "   git remote add origin https://github.com/YOUR_USERNAME/tanda-landing-page.git"
echo "   git push -u origin main"
echo ""
echo "3. Follow the DEPLOYMENT.md guide to deploy to tanda.media"
echo ""
echo "📖 For detailed instructions, see:"
echo "   - README.md - Project overview and quick start"
echo "   - DEPLOYMENT.md - Complete deployment guide"
echo ""

