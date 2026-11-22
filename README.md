# FTH_2026_soil_macrofauna
#### Students: Jason BERGER; Nina FARAH; Juliette KIFFER; Nelle KONCZAK

#### Project supervisors: Vincent FREYCON; Raphaël MARICHAL; Ariane MIRABEL

Github for the soil macrofauna project of the course Forêts Tropicales Humides 2026 at UMR EcoFoG. Soil macrofauna was sampled at the Paracou forest plots in French Guiana to investigate effects of soil types on macrofaunal communities.

### Overview
<pre>
├── .github/                             # for website publishing
├── article/
│   ├── _extensions/                     # extensions for the stylisharticle-outline
│   ├── images/                          # for images not generated in the qmd
│   ├── colors.css                       # for adjusting html colors
│   ├── <b>index.qmd</b>                        # &lt;-- <b>[MAIN ARTICLE]</b> file used to create the article as pdf or html
│   └── stylisharticle.cls               # main controlling file for stylisharticle formatting
├── citation_style/                      # files for automated citation style
├── data/
│   └── <b>macrofauna_counts.xlsx</b>           # &lt;-- <b>[MAIN DATA FILE]</b>
├── qgis/
│   ├── layers/                          # QGIS layers used for the map/s
│   ├── maps/
│   └── scripts/
│       ├── <b>sampling_locations.R</b>         # &lt;-- <b>[HELPER SCRIPT]</b> for calculating sampling coordinates
│       └── ...
├── statistical_analysis/
│   └── <b>index.qmd</b>                        # &lt;-- <b>[MAIN STATISTICAL ANALYSIS]</b> detailed script
├── .gitignore
├── FTH_2026_soil_macrofauna.Rproj
├── macrofauna_refs.bib                  # reference list
├── package_citations.txt                # complete citations for all R packages used
└── README.md
</pre>

*Directory tree generated with [RepoTree](https://ascii-repotree.vercel.app/generator).*

### Software used:
- data analysis and presentation: [R](https://www.r-project.org/) v. 4.6.1 and [R Studio](https://docs.posit.co/ide/desktop-pro/2026.09.0/) v. 2026.09.0; report and statistical analysis document created using [Quarto](https://quarto.org/?utm_source=chatgpt.com) v. 1.10.18
- citation management: [zotero](https://www.zotero.org/) v. 10.0.8 with [Better BibTeX plug-in](https://retorque.re/zotero-better-bibtex/) v. 9.0.77
- geographical data management and presentation: [QGIS](https://www.qgis.org/project/overview/) v. 3.40
- R packages: complete list of packages in file package_citations.txt

### Comments:
All input excel files contain a meta tab, please refer to those tabs for variable definitions.

#### Directory article:

index.qmd represents quarto document used to generate the article. This directory uses code from [memoiR](https://github.com/EricMarcon/memoiR), developed by Eric Marcon.
Copyright belongs to the original copyright holders.
The original software is licensed under the GNU General Public License v3.0 (GPL-3.0).
A copy of the license is available at: <https://github.com/EricMarcon/memoiR/blob/master/LICENSE.md> Modifications include adaptations to visual settings for this specific article.

#### citation_style:

apa.csl contains APA version 7 CSL style, obtained from the [Citation Style Language (CSL) project](citationstyles.org); it was adapted in apa_adapted.csl to resolve a journal title capitalization issue.


