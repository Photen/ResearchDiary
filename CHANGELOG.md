# Research Diary LaTeX Template - Changelog

## [1.1] - 2025-07-29

### Enhanced
- **Cross-Page Support**: All custom environments now support breaking across pages
  - Paper reading environment (`paper`)
  - Experiment log environment (`experiment`)
  - Daily summary environment (`summary`)
  - Code snippet environment (`codebox`)
  - Important note environment (`note`)
- **Improved Usability**: Enhanced user experience for long content entries
- **Technical Enhancement**: Added `breakable` option to all tcolorbox environments

### Technical Details
- Modified `researchdiary.sty` to include `breakable` option in all environment definitions
- Ensures seamless content flow across page boundaries
- Maintains visual consistency and professional appearance

## [1.0] - 2025-07-29

### Added
- Initial release of Research Diary LaTeX Template
- Professional black-based design theme
- Custom environments for different content types:
  - Paper reading environment
  - Experiment log environment
  - Daily summary environment
  - Code snippet environment
  - Important note environment
- Bibliography support with biblatex
- FontAwesome icons integration
- Modular LaTeX package design
- Industrial Engineering focus
- Complete documentation and examples
- GitHub-ready with MIT license

### Technical Specifications
- LaTeX package: researchdiary.sty
- Document class: article
- Bibliography: biblatex with biber backend
- Icons: FontAwesome 5
- Color scheme: Black-based professional theme
- Page layout: A4, twoside, professional margins

### Files Included
- researchdiary.sty: Main style package
- diary.tex: Basic template
- example_usage.tex: Detailed usage examples
- ref.bib: Sample bibliography
- README.md: Comprehensive documentation
- LICENSE: MIT license
- .gitignore: GitHub configuration
- compile.sh: Compilation script
- clean.sh: Cleanup script

### Dependencies
- LaTeX distribution (TeX Live or MiKTeX)
- biblatex package
- tcolorbox package
- fontawesome5 package
- Other standard LaTeX packages

### Collaborators
- **Author**: PhotonZhang
- **Email**: zyw23@mails.tsinghua.edu.cn
- **AI Assistant**: Claude Sonnet 4 (Anthropic)

### License
MIT License - see LICENSE file for details

### Repository
GitHub: https://github.com/PhotonZhang/research-diary-template 