# Screenshot Guidelines

This directory is for storing preview images of the Research Diary template.

## Required Screenshots

### 1. title-page.png
- **Content**: The title page of the diary
- **Size**: 800x600px or similar aspect ratio
- **Focus**: Show the professional black-based design theme
- **How to capture**: 
  1. Compile `diary.tex` to generate `diary.pdf`
  2. Open the PDF and go to the first page
  3. Take a screenshot of the title page

### 2. sample-entry.png
- **Content**: A complete diary entry showing all environments
- **Size**: 800x600px or similar aspect ratio
- **Focus**: Show the overall layout and content structure
- **How to capture**:
  1. Open the generated `diary.pdf`
  2. Navigate to pages 2-3 (content pages)
  3. Take a screenshot showing the diary entry

### 3. environments.png
- **Content**: Close-up of different custom environments
- **Size**: 800x600px or similar aspect ratio
- **Focus**: Highlight the different environment types (paper, experiment, code, note, summary)
- **How to capture**:
  1. Open `diary.pdf`
  2. Take screenshots of each environment type
  3. Combine them into one image or create separate images

### 4. bibliography.png
- **Content**: The bibliography section
- **Size**: 800x600px or similar aspect ratio
- **Focus**: Show the automatically generated bibliography
- **How to capture**:
  1. Open `diary.pdf`
  2. Navigate to the last page (bibliography)
  3. Take a screenshot of the references section

## Image Requirements

- **Format**: PNG or JPG
- **Quality**: High resolution (at least 800px width)
- **Style**: Clean, professional appearance
- **Background**: White or light background
- **File naming**: Use the exact names specified above

## Tips for Good Screenshots

1. **Use a PDF viewer** that renders LaTeX output clearly
2. **Zoom in** to ensure text is readable
3. **Capture full sections** rather than partial content
4. **Maintain aspect ratio** for consistent appearance
5. **Check image quality** before uploading

## Alternative: Generate Images from PDF

You can also convert PDF pages to images using command line tools:

```bash
# Using pdftoppm (requires poppler)
pdftoppm -png -singlefile diary.pdf title-page

# Using ImageMagick
convert diary.pdf[0] title-page.png
convert diary.pdf[1-2] sample-entry.png
convert diary.pdf[5] bibliography.png
```

## File Structure

```
docs/
└── images/
    ├── README.md          # This file
    ├── title-page.png     # Title page screenshot
    ├── sample-entry.png   # Sample diary entry
    ├── environments.png   # Custom environments
    └── bibliography.png   # Bibliography section
```

Once you have the screenshots, place them in this directory and they will automatically appear in the main README.md file. 