# Free Deployment Preparation Script (PowerShell)
# Prepares your MERN app for free hosting platforms

Write-Host "🆓 Preparing MERN App for FREE Deployment!" -ForegroundColor Green
Write-Host ""

# Step 1: Build the React app
Write-Host "📦 Building React frontend..." -ForegroundColor Yellow
Set-Location client
npm run build
if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Frontend build failed!" -ForegroundColor Red
    exit 1
}
Set-Location ..
Write-Host "✅ Frontend build completed!" -ForegroundColor Green

# Step 2: Test server
Write-Host "🧪 Testing server..." -ForegroundColor Yellow
if (Test-Path "server.js") {
    Write-Host "✅ Server file found!" -ForegroundColor Green
} else {
    Write-Host "❌ Server file missing!" -ForegroundColor Red
    exit 1
}

# Step 3: Check Vercel config
Write-Host "🔧 Checking Vercel configuration..." -ForegroundColor Yellow
if (Test-Path "vercel.json") {
    Write-Host "✅ Vercel config found!" -ForegroundColor Green
} else {
    Write-Host "❌ Vercel config missing!" -ForegroundColor Red
}

Write-Host ""
Write-Host "🎉 Your app is ready for FREE deployment!" -ForegroundColor Green
Write-Host ""
Write-Host "🚀 Next Steps:" -ForegroundColor Cyan
Write-Host "1. Push your code to GitHub" -ForegroundColor White
Write-Host "2. Sign up for Vercel (free): https://vercel.com" -ForegroundColor White
Write-Host "3. Connect your GitHub repository" -ForegroundColor White
Write-Host "4. Set environment variables:" -ForegroundColor White
Write-Host "   - MONGODB_URI: mongodb+srv://idris:atlas123@cluster0.9ifvvcw.mongodb.net/mern-azure-app?retryWrites=true&w=majority" -ForegroundColor Gray
Write-Host "   - JWT_SECRET: your_secure_secret" -ForegroundColor Gray
Write-Host "   - NODE_ENV: production" -ForegroundColor Gray
Write-Host "5. Deploy!" -ForegroundColor White
Write-Host ""
Write-Host "💰 Total Cost: $0.00 (Completely FREE!)" -ForegroundColor Green
