#!/bin/bash

# Azure Deployment Script for MERN Application
# This script helps automate the deployment process to Azure

echo "🚀 Starting Azure MERN App Deployment Process..."

# Step 1: Build React application
echo "📦 Building React frontend..."
cd client
npm run build
cd ..

# Step 2: Check if environment variables are set
echo "🔍 Checking environment variables..."
if [ -z "$MONGODB_URI" ]; then
    echo "⚠️  Warning: MONGODB_URI environment variable not set"
    echo "Please set your MongoDB Atlas connection string in Azure App Service Configuration"
fi

if [ -z "$JWT_SECRET" ]; then
    echo "⚠️  Warning: JWT_SECRET environment variable not set"
    echo "Please set a secure JWT secret in Azure App Service Configuration"
fi

# Step 3: Test server startup
echo "🧪 Testing server startup..."
timeout 10s npm start &
SERVER_PID=$!
sleep 5

if ps -p $SERVER_PID > /dev/null; then
    echo "✅ Server starts successfully"
    kill $SERVER_PID
else
    echo "❌ Server failed to start - check your configuration"
    exit 1
fi

echo "✅ Pre-deployment checks completed!"
echo ""
echo "📋 Next Steps for Azure Deployment:"
echo "1. Create Azure Web App Service"
echo "2. Configure Environment Variables in Azure:"
echo "   - NODE_ENV=production"
echo "   - MONGODB_URI=<your-mongodb-atlas-connection-string>"
echo "   - JWT_SECRET=<your-secure-jwt-secret>"
echo "   - PORT=8080"
echo "3. Set up deployment source (GitHub/Local Git)"
echo "4. Deploy your application"
echo ""
echo "📖 For detailed instructions, see README.md"
