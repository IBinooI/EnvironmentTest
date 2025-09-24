#!/bin/bash

echo "🔧 Setting up development environment..."

# Install JS dependencies
npm install

# Install iOS dependencies (if ios/ exists)
if [ -d "ios" ]; then
  echo "📦 Installing iOS dependencies..."
  cd ios && pod install && cd ..
else
  echo "⚠️ Skipping iOS setup (no ios/ directory found)."
fi

# Start Metro bundler with cache reset
echo "🚀 Starting Metro bundler..."
npx react-native start --reset-cache
