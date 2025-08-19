# Fix domain paths - work files need to go up one level
s|../www\.thisiscafeteria\.com/work/|./|g
s|../../www\.thisiscafeteria\.com/work/|./|g
s|../www\.thisiscafeteria\.com/|../|g
s|../../www\.thisiscafeteria\.com/|../|g
s|../../../www\.thisiscafeteria\.com/|../../|g
s|../thisiscafeteria\.com/work/|./|g
s|../../thisiscafeteria\.com/work/|./|g
s|../thisiscafeteria\.com/|../|g
s|../../thisiscafeteria\.com/|../|g

# Fix squarespace CDN paths - work files need to go up to assets
s|../static1\.squarespace\.com/static/[^"]*|../assets|g
s|../../static1\.squarespace\.com/static/[^"]*|../assets|g
s|../images\.squarespace-cdn\.com/[^"]*|../assets/images|g
s|../../images\.squarespace-cdn\.com/[^"]*|../assets/images|g
s|../assets\.squarespace\.com/[^"]*|../assets|g
s|../../assets\.squarespace\.com/[^"]*|../assets|g

# Fix any remaining absolute paths
s|https://www\.thisiscafeteria\.com/work/|./|g
s|https://www\.thisiscafeteria\.com/|../|g
s|https://thisiscafeteria\.com/work/|./|g
s|https://thisiscafeteria\.com/|../|g
s|http://www\.thisiscafeteria\.com/work/|./|g
s|http://www\.thisiscafeteria\.com/|../|g
s|http://thisiscafeteria\.com/work/|./|g
s|http://thisiscafeteria\.com/|../|g
