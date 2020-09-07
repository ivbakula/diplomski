\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{rgn}

\ProcessOptions
\LoadClass[12pt,onecolumn,oneside]{book}

%opcenito
\RequirePackage[a4paper, left=3cm, right=3cm, top=3cm, bottom=3cm]{geometry}
\RequirePackage[utf8]{inputenc}
\RequirePackage[croatian]{babel}
\RequirePackage{fancyhdr} % zaglavlja

%matematika
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{xfrac}
\RequirePackage{mathtools}
\RequirePackage{titlesec}
\RequirePackage{xstring}
\RequirePackage{gensymb} %stupnjevi
%\RequirePackage{newtxtext,newtxmath} 

% za slike i oznacavanje
\RequirePackage{float}
\RequirePackage{graphicx}
\RequirePackage{subcaption}

%za grafove
\RequirePackage{tikz}
\RequirePackage{pgfplots}
%\pgfplotsset{width=15cm,compat=1.15}

%stavi broj stranice u donji desni kut
\pagestyle{fancy}
\fancyhf{}
\fancyfoot[R]{\thepage}
\renewcommand{\headrulewidth}{0pt}

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
{\large\bfseries}
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

