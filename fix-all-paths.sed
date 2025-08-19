# Fix domain paths to relative paths
s|../www\.thisiscafeteria\.com/|./|g
s|../../www\.thisiscafeteria\.com/|../|g
s|../thisiscafeteria\.com/|./|g
s|../../thisiscafeteria\.com/|../|g

# Fix squarespace CDN paths to local assets
s|../static1\.squarespace\.com/static/[^"]*|./assets|g
s|../images\.squarespace-cdn\.com/[^"]*|./assets/images|g
s|../assets\.squarespace\.com/[^"]*|./assets|g

# Fix any remaining absolute paths
s|https://www\.thisiscafeteria\.com/|./|g
s|https://thisiscafeteria\.com/|./|g
s|http://www\.thisiscafeteria\.com/|./|g
s|http://thisiscafeteria\.com/|./|g

# Fix work directory links to use proper relative paths
s|href="\./work/|href="./work/|g
