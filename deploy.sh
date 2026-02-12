#!/bin/bash

# Typer - Firebase Deployment Script
# This script builds and deploys the Flutter web app to Firebase Hosting

set -e  # Exit on error

echo "========================================="
echo "🚀 Starting Typer Deployment"
echo "========================================="
echo ""

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Step 1: Clean previous builds
echo "${BLUE}Step 1: Cleaning previous builds...${NC}"
flutter clean
echo "${GREEN}✓ Clean complete${NC}"
echo ""

# Step 2: Get dependencies
echo "${BLUE}Step 2: Getting dependencies...${NC}"
flutter pub get
echo "${GREEN}✓ Dependencies updated${NC}"
echo ""

# Step 3: Build web app
echo "${BLUE}Step 3: Building Flutter web app...${NC}"
flutter build web --release
echo "${GREEN}✓ Build complete${NC}"
echo ""

# Step 4: Deploy to Firebase
echo "${BLUE}Step 4: Deploying to Firebase Hosting...${NC}"
firebase deploy --only hosting
echo "${GREEN}✓ Deployment complete${NC}"
echo ""

echo "========================================="
echo "${GREEN}✅ Deployment successful!${NC}"
echo "========================================="
echo ""
echo "${YELLOW}Your app is now live at:${NC}"
firebase hosting:channel:list | grep "live" || echo "Check Firebase Console for the URL"
