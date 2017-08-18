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
\usepackage[hidelinks]{hyperref}
\usepackage{verbatim} % to enable multiline comments

% Table setup
\usepackage{tabularx,tabulary}
\newcolumntype{Y}{>{\centering\arraybackslash}X}

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
\newcommand{\makeheader}[3]{
	\centering{
		\color{primary}
		\fontsize{#2}{#3}
		\fontspec[Path=resources/fonts/Muli/]{Muli-Bold}\selectfont #1
	}
}

% Environments
%% subheader
\newenvironment{subheader}[1]{
     \table[h]\centering
     \tabularx{\textwidth}{*{#1}{Y}}
     \hline
}{
     \endtabularx\\
     \hrulefill
     \endtable
}