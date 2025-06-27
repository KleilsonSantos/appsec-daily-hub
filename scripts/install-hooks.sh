#!/bin/bash

echo "📦 Installing Git hooks..."

# 🐶 Install Husky for managing Git hooks
npm install husky --save-dev
echo "🐶 Husky installed successfully!"

# 🐾 Initialize Husky to set up Git hooks
echo "🔗 Setting up Git hooks..."
if [ ! -d ".husky" ]; then
  mkdir .husky
fi

if [ ! -f ".husky/_/pre-commit" ]; then
  touch .husky/_/pre-commit
  npx husky install
fi


# 📁 Copy the version check script to the Git pre-commit hook location
cp ./scripts/check-version-alignment.sh .husky/_/pre-commit

# 🔐 Make the script executable
chmod +x .husky/_/pre-commit

# ✅ Confirmation message
echo "✅ Git hook installed successfully!"