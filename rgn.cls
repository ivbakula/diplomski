\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{rgn}

\ProcessOptions
\LoadClass[12pt,onecolumn,oneside]{book}

%opcenito
\RequirePackage[a4paper, left=3cm, right=2.5cm, top=2.5cm, bottom=2.5cm]{geometry}
\RequirePackage[utf8]{inputenc}
\RequirePackage[croatian]{babel}
\RequirePackage{fancyhdr} % zaglavlja
\RequirePackage{tabularx}

%font (retardirani times new roman)
\RequirePackage{newtxtext,newtxmath}
\RequirePackage[T1]{fontenc}
\RequirePackage{anyfontsize}

%literatura
\RequirePackage[backend=biber,style=authoryear-ibid,firstinits=true]{biblatex}
\RequirePackage{xpatch}
\addbibresource{lit.bib}

%makni navodnike iz naslova
\DeclareFieldFormat
    [article,inbook,incollection,inprocessing,patent,thesis,unpublished,book]
    {title}{#1\isdot}

%makni zagrade iz godine izdanja
\xpatchbibmacro{date+extradate}{%
  \printtext[parens]%
}{%
  \setunit{\addperiod\space}%
  \printtext%
}{}{}

\DeclareFieldFormat[article,book]{author}{\MakeCapital{#1}}

%matematika
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{xfrac}
\RequirePackage{mathtools}
\RequirePackage{titlesec}
\RequirePackage{xstring}
\RequirePackage{gensymb} %stupnjevi

% za slike i oznacavanje
\RequirePackage{float}
\RequirePackage{graphicx}
\RequirePackage{subcaption}

% Za uklapanje pdf-ova (rjesenje)
\RequirePackage{pdfpages}
%poravnaj opise u lijevu stranu
\captionsetup{justification=raggedright, singlelinecheck=false, format=hang}
\captionsetup[subfigure]{justification=centering, singlelinecheck=false, format=hang}

%za grafove
\RequirePackage{tikz}
\RequirePackage{pgfplots}

%pobroji stranice, slike, tablice i reference 
\RequirePackage{totcount}
\RequirePackage[figure,table,page]{totalcount}

%broji reference
\newtotcounter{citenum}
\def\oldcite{}
\let\oldcite=\bibcite
\def\bibcite{\stepcounter{citenum}\oldcite}


%\pgfplotsset{width=15cm,compat=1.15}

%stavi broj stranice u donji desni kut
\pagestyle{fancy} 
\fancyhf{}
\fancyfoot[R]{\thepage}
\fancypagestyle{plain}{%
    \renewcommand{\headrulewidth}{0pt}%
    \fancyhf{}%
    \fancyfoot[R]{\thepage}%
}
\setcounter{page}{1}

%prored
\linespread{1.2}

%ne uvlaci novi odlomak
\setlength{\parindent}{0pt}

%razmak izmedju odlomaka
\setlength{\parskip}{3pt}

%razmak izmedju floatovo i teksta 
\setlength{\intextsep}{8.0pt plus 2.0pt minus 2.0pt}

%razmak izmedju teksta i jednadzbi s gornje strane
\setlength{\abovedisplayskip}{-12pt} 

%razmak izmedju teksta i jednadzbi s donje strane
\setlength{\belowdisplayskip}{12pt}

%razmak izmedju redova jednadzbi
\addtolength{\jot}{0.5em}

\renewcommand{\arraystretch}{1.2}

%poglavlja sekcije i podsekcije
\titleformat{\chapter}
{\Large\bfseries}
{\thechapter}
{0.5em}
{}[\vspace{1ex}]

%namjesti poziciju za naziv poglavlja
\titlespacing{\chapter}{0pt}{-0.9cm}{0pt}

\titleformat{\section}
{\large\bfseries}
{\thesection}
{0.5em}
{}[\vspace{1ex}]

%Naslovna stranica

\def\rad#1{\gdef\@rad{#1}}       % Diplomski | Završni
\def\title#1{\gdef\@title{#1}}
\def\godina#1{\gdef\@godina{#1}}
\def\indeks#1{\gdef\@indeks{#1}}
\def\studij#1{\gdef\@studij{#1}} % (Preddiplomski | Diplomski) ++ studij ++ (geologije | rudarstva | naftnog rudarstva)
%naslovna
\renewcommand\maketitle{%
%
    \thispagestyle{empty}
    \begin{center}
        {\large \fontsize{14}{17}\selectfont{SVEUČILIŠTE U ZAGREBU}} \\[8pt]
        {\large \fontsize{14}{17}\selectfont{RUDARSKO-GEOLOŠKO-NAFTNI FAKULTET}} \\[8pt]
        {\large \fontsize{13}{16}\selectfont{\@studij}}
    \end{center}

    \vskip 50mm
    \begin{center}
        {\bfseries{\fontsize{14}{17}\selectfont\MakeUppercase\@title}} \\[10mm]
        {\large \fontsize{13}{16}\selectfont{\@rad}}
    \end{center}

    \vskip 50mm
    \begin{center}
        {\large \fontsize{13}{16}\selectfont{\@author}} \\[10mm]
        {\large \fontsize{13}{16}\selectfont{\@indeks}}
    \end{center}

    \vfill
    \begin{center}
        {\large \fontsize{13}{16}\selectfont{Zagreb, \@godina.}}
    \end{center}
    \newpage
}
