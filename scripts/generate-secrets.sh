#!/bin/bash
# Generate LibreChat secrets for GitHub Actions
# Run this script locally to generate secrets, then add them to GitHub

echo "========================================"
echo "  LibreChat Secrets Generator"
echo "========================================"
echo ""
echo "Copy these values to your GitHub repository secrets:"
echo "Repository → Settings → Secrets and variables → Actions → New repository secret"
echo ""
echo "========================================"
echo ""

# Generate 32-byte hex keys
CREDS_KEY=$(openssl rand -hex 32)
CREDS_IV=$(openssl rand -hex 16)
JWT_SECRET=$(openssl rand -hex 32)
JWT_REFRESH_SECRET=$(openssl rand -hex 32)
MEILI_MASTER_KEY=$(openssl rand -base64 32 | tr -dc 'a-zA-Z0-9' | head -c 44)

echo "CREDS_KEY:"
echo "$CREDS_KEY"
echo ""

echo "CREDS_IV:"
echo "$CREDS_IV"
echo ""

echo "JWT_SECRET:"
echo "$JWT_SECRET"
echo ""

echo "JWT_REFRESH_SECRET:"
echo "$JWT_REFRESH_SECRET"
echo ""

echo "MEILI_MASTER_KEY:"
echo "$MEILI_MASTER_KEY"
echo ""

echo "========================================"
echo ""
echo "You also need to add these secrets/variables:"
echo ""
echo "SECRETS (Already have these based on your context):"
echo "  - EC2_SSH_KEY: Your SSH private key for the EC2 instance"
echo ""
echo "VARIABLES (Settings → Secrets and variables → Actions → Variables tab):"
echo "  - EC2_HOST: 3.87.41.222"
echo "  - EC2_USER: ubuntu"
echo ""
echo "========================================"

