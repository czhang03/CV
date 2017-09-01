% intro options
\ProvidesClass{resume-knyte}[2017/08/02 resume class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Misc. package Imports
\usepackage[hmargin=1.00cm, vmargin=0.75cm]{geometry}
\usepackage{verbatim} % to enable multiline comments
\usepackage{hyperref}

% Table setup
\usepackage{tabularx,tabulary}
\newcolumntype{Y}{>{\arraybackslash}X} % subheader column
\newcolumntype{s}{>{\hsize=2\hsize}r} % section column

% Color definitions
\usepackage[usenames, dvipsnames]{xcolor} 
% \definecolor{NAME}{HTML}{HEXHEX}
\definecolor{primary}{HTML}{000000}

% Set main fonts
\usepackage{fontspec}
% extra-explicit below for ease of editing later
\setmainfont[Color=primary,
             Scale=MatchLowercase,
             Ligatures=TeX,
             Path=resources/fonts/PT_Sans/,
             BoldItalicFont=PT_Sans-Web-BoldItalic,
             BoldFont=PT_Sans-Web-Bold,
             ItalicFont=PT_Sans-Web-Italic]{PT_Sans-Web-Regular}
\setsansfont[Color=primary,
             Scale=MatchLowercase,
             Ligatures=TeX,
             Path=resources/fonts/Muli/,
             BoldItalicFont=Muli-BoldItalic,
             BoldFont=Muli-Bold,
             ItalicFont=Muli-Italic]{Muli-Light}

% Commands
%% makeheader
\newcommand{\makeheader}[1]{
	\centering{
		\color{primary}
		\fontsize{42pt}{52pt}
		\fontspec[Path=resources/fonts/Muli/]{Muli-Bold}\selectfont #1
	}
}

%% font specifications
%%% site
\newcommand{\site}[3]{
    \fontsize{8pt}{10pt}
    \fontspec[Path=resources/fonts/PT_Sans/]{PT_Sans-Web-Bold}\selectfont #1
    \fontsize{12pt}{15pt}
    \fontspec[Path=resources/fonts/PT_Sans/]{PT_Sans-Web-Regular}\selectfont
    \href{#3}{#2}
}

%%% section header
\newcommand{\sechead}[1]{
    \fontsize{10pt}{12pt}
    \fontspec[Path=resources/fonts/Muli/]{Muli-Regular}\selectfont #1
}

%%% section subheader
\newcommand{\secsub}[1]{
    \fontsize{10pt}{12pt}
    \fontspec[Path=resources/fonts/PT_Sans/]{PT_Sans-Web-Bold}\selectfont #1
}

%%% content
\newcommand{\content}{
    \fontsize{10pt}{12pt}
    \fontspec[Path=resources/fonts/PT_Sans/]{PT_Sans-Web-Regular}\selectfont
}

% Environments
%% subheader
\newenvironment{subheader}[1]{
     \table[h]\centering
     \tabularx{\textwidth}{*{#1}{Y}}
     \hline\\[-1.5ex]
}{
     \endtabularx\\
     \hrulefill\\[-4.5ex]
     \endtable
}

%% topic
\newenvironment{topic}[1]{
    \table[h]\centering
    \tabularx{\textwidth}{Xs}
    \sechead{#1} & \content
}{
    \endtabularx\\
    \endtable
}
