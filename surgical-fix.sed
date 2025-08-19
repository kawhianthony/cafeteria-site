# Surgical Path Replacement - Each file mapped precisely

# JavaScript Files - Map to ./assets/js/filename.js
s|../assets\.squarespace\.com/@sqs/polyfiller/1\.6/legacy\.js|./assets/js/legacy.js|g
s|../assets\.squarespace\.com/@sqs/polyfiller/1\.6/modern\.js|./assets/js/modern.js|g
s|../assets\.squarespace\.com/universal/scripts-compressed/cldr-resource-pack-9902ec3244984e7d-min\.en-US\.js|./assets/js/cldr-resource-pack-9902ec3244984e7d-min.en-US.js|g
s|../assets\.squarespace\.com/universal/scripts-compressed/commerce-8234bf860e5c52a6-min\.en-US\.js|./assets/js/commerce-8234bf860e5c52a6-min.en-US.js|g
s|../assets\.squarespace\.com/universal/scripts-compressed/common-60259509f381b14d-min\.en-US\.js|./assets/js/common-60259509f381b14d-min.en-US.js|g
s|../assets\.squarespace\.com/universal/scripts-compressed/common-vendors-449caa6ee557611b-min\.en-US\.js|./assets/js/common-vendors-449caa6ee557611b-min.en-US.js|g
s|../assets\.squarespace\.com/universal/scripts-compressed/common-vendors-stable-54bab8bb8a15366b-min\.en-US\.js|./assets/js/common-vendors-stable-54bab8bb8a15366b-min.en-US.js|g
s|../assets\.squarespace\.com/universal/scripts-compressed/extract-css-moment-js-vendor-088ec0120fdbcfed-min\.en-US\.js|./assets/js/extract-css-moment-js-vendor-088ec0120fdbcfed-min.en-US.js|g
s|../assets\.squarespace\.com/universal/scripts-compressed/extract-css-runtime-44a3c2a34a8af752-min\.en-US\.js|./assets/js/extract-css-runtime-44a3c2a34a8af752-min.en-US.js|g
s|../assets\.squarespace\.com/universal/scripts-compressed/extract-css-runtime-488c2964d8f6960c-min\.en-US\.js|./assets/js/extract-css-runtime-488c2964d8f6960c-min.en-US.js|g
s|../assets\.squarespace\.com/universal/scripts-compressed/performance-7b43a43d6da409a6-min\.en-US\.js|./assets/js/performance-7b43a43d6da409a6-min.en-US.js|g
s|../static1\.squarespace\.com/static/ta/55f0a9b0e4b0f3eb70352f6d/354/scripts/site-bundle\.js|./assets/js/site-bundle.js|g

# CSS Files - Map to ./assets/css/filename.css
s|../assets\.squarespace\.com/universal/styles-compressed/commerce-98a41f09c7bd50ba-min\.en-US\.css|./assets/css/commerce-98a41f09c7bd50ba-min.en-US.css|g
s|../static1\.squarespace\.com/static/sitecss/581a45361b631b780e890445/146/55f0aac0e4b0f0a5b7e0b22e/581a45361b631b780e89044c/354/site\.css|./assets/css/site.css|g

# Images - Map to ./assets/images/filename
s|../images\.squarespace-cdn\.com/content/v1/581a45361b631b780e890445/[^/]*/\([^/"]*\.[a-zA-Z]*\)|./assets/images/\1|g

# Navigation Links - Fix work portfolio links
s|../www\.thisiscafeteria\.com/work/|./work/|g
s|../www\.thisiscafeteria\.com/|./|g
s|../thisiscafeteria\.com/work/|./work/|g
s|../thisiscafeteria\.com/|./|g

# Remove Typekit external dependency for now (we'll handle separately)
s|src="https://use\.typekit\.net/[^"]*"|src=""|g