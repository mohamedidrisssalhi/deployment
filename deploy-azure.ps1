# Azure Deployment Script for MERN Application (PowerShell)
# This script helps automate the deployment process to Azure

Write-Host "🚀 Starting Azure MERN App Deployment Process..." -ForegroundColor Green

# Step 1: Build React application
Write-Host "📦 Building React frontend..." -ForegroundColor Yellow
Set-Location client
npm run build
if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Frontend build failed!" -ForegroundColor Red
    exit 1
}
Set-Location ..

# Step 2: Check if environment variables are set
Write-Host "🔍 Checking environment variables..." -ForegroundColor Yellow
if (-not $env:MONGODB_URI) {
    Write-Host "⚠️  Warning: MONGODB_URI environment variable not set" -ForegroundColor Yellow
    Write-Host "Please set your MongoDB Atlas connection string in Azure App Service Configuration" -ForegroundColor Yellow
}

if (-not $env:JWT_SECRET) {
    Write-Host "⚠️  Warning: JWT_SECRET environment variable not set" -ForegroundColor Yellow
    Write-Host "Please set a secure JWT secret in Azure App Service Configuration" -ForegroundColor Yellow
}

# Step 3: Test server dependencies
Write-Host "🧪 Testing server dependencies..." -ForegroundColor Yellow
$testResult = npm list --depth=0 2>&1
if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ All dependencies are installed correctly" -ForegroundColor Green
} else {
    Write-Host "⚠️  Some dependencies may be missing - run 'npm install'" -ForegroundColor Yellow
}

Write-Host "✅ Pre-deployment checks completed!" -ForegroundColor Green
Write-Host ""
Write-Host "📋 Next Steps for Azure Deployment:" -ForegroundColor Cyan
Write-Host "1. Create Azure Web App Service" -ForegroundColor White
Write-Host "2. Configure Environment Variables in Azure:" -ForegroundColor White
Write-Host "   - NODE_ENV=production" -ForegroundColor Gray
Write-Host "   - MONGODB_URI=<your-mongodb-atlas-connection-string>" -ForegroundColor Gray
Write-Host "   - JWT_SECRET=<your-secure-jwt-secret>" -ForegroundColor Gray
Write-Host "   - PORT=8080" -ForegroundColor Gray
Write-Host "3. Set up deployment source (GitHub/Local Git)" -ForegroundColor White
Write-Host "4. Deploy your application" -ForegroundColor White
Write-Host ""
Write-Host "📖 For detailed instructions, see README.md" -ForegroundColor Cyan
