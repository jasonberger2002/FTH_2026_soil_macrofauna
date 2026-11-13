# FTH_2026_soil_macrofauna
#### Students: Jason BERGER; Nina FARAH; Juliette KIFFER; Nelle KONCZAK

#### Project supervisors: Vincent FREYCON; Raphaël MARICHAL; Ariane MIRABEL

Github for the soil macrofauna project of the course Forêts Tropicales Humides 2026 at UMR EcoFoG. Soil macrofauna was sampled at the Paracou forest plots in French Guiana to investigate effects of soil types on macrofaunal communities.

### Software used:
- data analysis and presentation: [R](https://www.r-project.org/) v. 4.6.1 and [R Studio](https://docs.posit.co/ide/desktop-pro/2026.09.0/) v. 2026.09.0; report and statistical analysis document created using [Quarto](https://quarto.org/?utm_source=chatgpt.com) v. 1.10.18
- citation management: [zotero](https://www.zotero.org/) v. 10.0.8 with [Better BibTeX plug-in](https://retorque.re/zotero-better-bibtex/) v. 9.0.77
- geographical data management and presentation: [QGIS](https://www.qgis.org/project/overview/) v. 3.40
- R packages: complete list of packages in file package_citations.txt

#### Directory statistical_analysis:

index.qmd includes detailed statistical analysis and figures, including model selection and diagnostics.

#### Directory article:

index.qmd represents quarto document used to generate the article This directory uses code from [memoiR](https://github.com/EricMarcon/memoiR), originally developed by Eric Marcon.
Copyright belongs to the original copyright holders.
The original software is licensed under the GNU General Public License v3.0 (GPL-3.0).
A copy of the license is available at: <https://github.com/EricMarcon/memoiR/blob/master/LICENSE.md> Modifications include adaptations to visual settings for this specific article.

#### Directory data:

includes main raw data file used for the analyses

#### Directory qgis:

includes produced QGIS layers and mapps as well as an R script used to map field sampling points into coordinate system

#### citation_style:

apa.csl contains APA version 7 CSL style, obtained from the Citation Style Language (CSL) project (citationstyles.org); it was adapted in apa_adapted.csl to resolve a journal title capitalization issue.

### Comments:
All input excel files contain a meta tab, please refer to those tabs for variable definitions.
