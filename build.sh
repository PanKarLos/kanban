#!/bin/bash
set -e

mkdir -p dist
cp index.html dist/index.html

sed -i "s|%%SUPABASE_URL%%|$SUPABASE_URL|g" dist/index.html
sed -i "s|%%SUPABASE_KEY%%|$SUPABASE_KEY|g" dist/index.html
sed -i "s|%%NTFY_TOPIC%%|$NTFY_TOPIC|g" dist/index.html
sed -i "s|%%ADMIN_PASSWORD%%|$ADMIN_PASSWORD|g" dist/index.html

echo "Build hotový — klíče byly vloženy."
