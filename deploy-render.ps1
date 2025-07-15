# Render Deployment Preparation Script (PowerShell)
Write-Host "Preparing MERN App for Render Deployment (FREE!)" -ForegroundColor Green
Write-Host ""

# Step 1: Build the React app
Write-Host "Building React frontend for production..." -ForegroundColor Yellow
Set-Location client
npm run build
if ($LASTEXITCODE -ne 0) {
    Write-Host "Frontend build failed!" -ForegroundColor Red
    exit 1
}
Set-Location ..
Write-Host "Frontend build completed!" -ForegroundColor Green

# Step 2: Check required files
Write-Host "Checking required files..." -ForegroundColor Yellow
$requiredFiles = @("server.js", "package.json", ".env")
foreach ($file in $requiredFiles) {
    if (Test-Path $file) {
        Write-Host "$file found!" -ForegroundColor Green
    } else {
        Write-Host "$file missing!" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "Your app is ready for Render deployment!" -ForegroundColor Green
Write-Host ""
Write-Host "Next Steps:" -ForegroundColor Cyan
Write-Host "1. Push your code to GitHub" -ForegroundColor White
Write-Host "2. Go to render.com and sign up (FREE)" -ForegroundColor White
Write-Host "3. Create new Web Service from your GitHub repo" -ForegroundColor White
Write-Host "4. Use these settings:" -ForegroundColor White
Write-Host "   Build Command: npm run build" -ForegroundColor Gray
Write-Host "   Start Command: npm start" -ForegroundColor Gray
Write-Host ""
Write-Host "5. Add Environment Variables in Render:" -ForegroundColor White
Write-Host "   NODE_ENV=production" -ForegroundColor Gray
Write-Host "   MONGODB_URI=your_mongodb_connection_string" -ForegroundColor Gray
Write-Host "   JWT_SECRET=your_secure_secret" -ForegroundColor Gray
Write-Host "   PORT=10000" -ForegroundColor Gray
Write-Host ""
Write-Host "Total Cost: FREE!" -ForegroundColor Green
