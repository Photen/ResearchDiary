#!/bin/bash

# =============================================================================
# GitHub Upload Script for Research Diary Template
# =============================================================================
# This script helps upload the Research Diary Template to GitHub
#
# Author: PhotonZhang
# Date: 2025
# =============================================================================

echo "🚀 Research Diary Template - GitHub Upload Script"
echo "=================================================="
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Error: Git is not installed. Please install Git first."
    exit 1
fi

# Check if we're in a git repository
if [ ! -d ".git" ]; then
    echo "❌ Error: Not in a git repository. Please run 'git init' first."
    exit 1
fi

# Check if we have commits
if ! git log --oneline -1 &> /dev/null; then
    echo "❌ Error: No commits found. Please commit your changes first."
    exit 1
fi

echo "✅ Git repository is ready"
echo ""

# Get repository URL from user
echo "📝 Please enter your GitHub repository URL:"
echo "   Example: https://github.com/PhotonZhang/research-diary-template.git"
read -p "Repository URL: " repo_url

if [ -z "$repo_url" ]; then
    echo "❌ Error: Repository URL is required"
    exit 1
fi

echo ""
echo "🔗 Adding remote repository..."
git remote add origin "$repo_url"

if [ $? -ne 0 ]; then
    echo "❌ Error: Failed to add remote repository"
    echo "   The repository might already exist. Try:"
    echo "   git remote set-url origin $repo_url"
    exit 1
fi

echo "✅ Remote repository added"
echo ""

# Set branch to main
echo "🌿 Setting branch to main..."
git branch -M main

# Push to GitHub
echo "📤 Pushing to GitHub..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "🎉 Success! Your Research Diary Template has been uploaded to GitHub!"
    echo ""
    echo "📋 Next steps:"
    echo "   1. Visit your repository: $repo_url"
    echo "   2. Add topics: latex, research, diary, template, academic, phd"
    echo "   3. Create a release (v1.0)"
    echo "   4. Share on social media"
    echo "   5. Check README.md for citation information"
    echo ""
    echo "🌟 Don't forget to star your own repository!"
    echo ""
    echo "📈 For tips on increasing visibility, see GITHUB_SETUP.md"
else
    echo ""
    echo "❌ Error: Failed to push to GitHub"
    echo "   Please check:"
    echo "   1. Your GitHub credentials are configured"
    echo "   2. The repository exists on GitHub"
    echo "   3. You have write access to the repository"
    echo ""
    echo "💡 Try running: git push -u origin main"
fi

echo ""
echo "📚 Additional resources:"
echo "   - GITHUB_SETUP.md: Complete setup guide"
echo "   - README.md: Documentation and citation info"
echo "   - CHANGELOG.md: Version history"
echo "" 