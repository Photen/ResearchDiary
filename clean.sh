#!/bin/bash

# =============================================================================
# LaTeX Cleanup Script
# =============================================================================
# 
# This script removes LaTeX compilation temporary files
# to keep the directory clean and organized.
#
# Usage: ./clean.sh
#
# Author: PhotonZhang
# Date: 2025
# =============================================================================

echo "Cleaning LaTeX temporary files..."

# Remove common LaTeX temporary files
rm -f *.aux
rm -f *.log
rm -f *.out
rm -f *.toc
rm -f *.bbl
rm -f *.blg
rm -f *.bcf
rm -f *.run.xml
rm -f *.fdb_latexmk
rm -f *.fls
rm -f *.synctex.gz

echo "Cleanup completed!"
echo ""
echo "Remaining files:"
ls -la *.tex *.sty *.bib *.md *.pdf 2>/dev/null || echo "No source files found" 