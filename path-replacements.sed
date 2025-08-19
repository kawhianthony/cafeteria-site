# Cafeteria domain
s|https://thisiscafeteria.com/|/|g
s|http://thisiscafeteria.com/|/|g
s|//thisiscafeteria.com/|/|g

# Squarespace CDN - convert to local assets
s|https://static\.squarespace\.com/[^"]*\(/[^"/]*\.css\)|/assets/css\1|g
s|https://static\.squarespace\.com/[^"]*\(/[^"/]*\.js\)|/assets/js\1|g
s|https://images\.squarespace-cdn\.com/[^"]*\(/[^"/]*\.jpg\)|/assets/images\1|g
s|https://images\.squarespace-cdn\.com/[^"]*\(/[^"/]*\.png\)|/assets/images\1|g
s|https://images\.squarespace-cdn\.com/[^"]*\(/[^"/]*\.gif\)|/assets/images\1|g
s|https://static1\.squarespace\.com/[^"]*\(/[^"/]*\)|/assets\1|g

# Convert absolute to relative
s|href="/|href="./|g
s|src="/|src="./|g

# For any absolute URLs needed, use Vercel URL
s|VERCEL_URL_PLACEHOLDER|https://cafeteria-site-sigma.vercel.app|g
