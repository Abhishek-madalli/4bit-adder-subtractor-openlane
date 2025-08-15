#!/bin/bash
set -e

echo "🧹 Cleaning repo: keeping only final OpenLane outputs..."

# Step 1: Remove all tracked results/reports from Git (but keep them locally)
git rm -r --cached results/ || true
git rm -r --cached reports/ || true

# Step 2: Add only final outputs back
git add results/final/gds/addsub4_top.gds
git add results/final/def/addsub4_top.def
git add reports/final/timing/timing.rpt
git add reports/final/power/power.rpt
git add reports/final/area/area.rpt

# Step 3: Create .gitignore to prevent future unnecessary commits
cat > .gitignore <<EOL
# Ignore OpenLane intermediate run directories
runs/
tmp/
logs/


# Ignore large intermediate files
*.odb
*.sdc
*.spef
*.lef
*.v
*.mag
*.log
*.rpt

# Keep only final GDS/DEF and final reports
!results/final/gds/*.gds
!results/final/def/*.def
!reports/final/**/*.rpt
EOL

git add .gitignore

# Step 4: Commit changes
git commit -m "Clean repo: keep only final OpenLane outputs"

# Step 5: Push to GitHub
git push origin main

echo "✅ Repo cleaned! Only final outputs are now tracked."

