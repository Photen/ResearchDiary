#!/bin/bash

# =============================================================================
# LaTeX Compilation Script
# =============================================================================
# 
# This script compiles LaTeX documents with bibliography support.
# It handles the complete compilation process including biber.
#
# Usage: ./compile.sh [filename]
#        ./compile.sh diary.tex
#
# Author: PhotonZhang
# Date: 2025
# =============================================================================

# Default filename if none provided
FILENAME=${1:-diary.tex}

# Remove .tex extension if provided
BASENAME=$(basename "$FILENAME" .tex)

echo "Compiling $BASENAME.tex..."

# First compilation
echo "Step 1: Initial compilation..."
pdflatex "$BASENAME.tex"
if [ $? -ne 0 ]; then
    echo "Error: Initial compilation failed!"
    exit 1
fi

# Process bibliography
echo "Step 2: Processing bibliography..."
biber "$BASENAME"
if [ $? -ne 0 ]; then
    echo "Error: Bibliography processing failed!"
    exit 1
fi

# Second compilation for references
echo "Step 3: Second compilation (for references)..."
pdflatex "$BASENAME.tex"
if [ $? -ne 0 ]; then
    echo "Error: Second compilation failed!"
    exit 1
fi

# Third compilation for table of contents
echo "Step 4: Final compilation (for table of contents)..."
pdflatex "$BASENAME.tex"
if [ $? -ne 0 ]; then
    echo "Error: Final compilation failed!"
    exit 1
fi

echo ""
echo "Compilation completed successfully!"
echo "Output file: $BASENAME.pdf"
echo ""
echo "To clean temporary files, run: ./clean.sh" 