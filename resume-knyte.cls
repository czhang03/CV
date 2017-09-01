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
\newcolumntype{Y}{>{\arraybackslash}X}

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
\newcommand{\site}[1]{
    \fontsize{8pt}{10pt}
    \fontspec[Path=resources/fonts/PT_Sans/]{PT_Sans-Web-Bold}\selectfont #1
}

%%% link
\newcommand{\link}[2]{
    \fontsize{12pt}{15pt}
    \fontspec[Path=resources/fonts/PT_Sans/]{PT_Sans-Web-Regular}\selectfont
    \href{#2}{#1}
}

%%% section header
\newcommand{\sechead}[1]{
    \fontsize{10pt}{12pt}
    \fontspec[Path=resources/fonts/Muli/]{Muli-Regular}\selectfont #1
}

%%% section subheader
\newcommand{\secsub}[1]{
    \fontsize{10pt}{12pt}
    \fontspec[Path=resources/fonts/PT_Sans/]{PT_Sans-Bold}\selectfont #1
}

%%% content
\newcommand{\content}[1]{
    \fontsize{10pt}{12pt}
    \fontspec[Path=resources/fonts/PT_Sans/]{PT_Sans-Regular}\selectfont #1
}

% Environments
%% subheader
\newenvironment{subheader}[1]{
     \table[h]\centering
     \tabularx{\textwidth}{*{#1}{Y}}
     \hline\\[-2.5ex]
}{
     \endtabularx\\
     \hrulefill
     \endtable
}
