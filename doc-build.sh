# Used for generating and updating main documentation that is used across repositories

# Check if Node.js exists


# Check that source folder, src/base-docs exists in this repo.

# If nothing exists create folder

# Get required partials from the archiv8-tools repo

# If folder exists

# Determine files altered by user and therefore must remain unchanged

# Check common, unchanged, partials are available and up to date

# Download missing and outdated partials from the archiv8-tools repo

# Run build for each document.
gitdown ./.README/frames/cc-by-sa-v4.frame.md --output-file ./CC-BY-SA-V4.md
gitdown ./.README/frames/changelog.frame.md --output-file ./CHANGELOG.md
gitdown ./.README/frames/code-of-conduct.frame.md --output-file ./CODE-OF-CONDUCT.md
gitdown ./.README/frames/contribute.frame.md --output-file ./CONTRIBUTE.md
gitdown ./.README/frames/commits.frame.md --output-file ./COMMITS.md
gitdown ./.README/frames/developer-certificate.frame.md --output-file ./DEVELOPER-CERTIFICATE.md
gitdown ./.README/frames/install.frame.md --output-file ./INSTALL.md
gitdown ./.README/frames/issues.frame.md --output-file ./ISSUES.md
gitdown ./.README/frames/license.frame.md --output-file ./LICENSE.md
gitdown ./.README/frames/mit.frame.md --output-file ./MIT.md
gitdown ./.README/frames/notes.frame.md --output-file ./NOTES.md
gitdown ./.README/frames/readme.frame.md --output-file ./README.md
gitdown ./.README/frames/security.frame.md --output-file ./SECURITY.md
