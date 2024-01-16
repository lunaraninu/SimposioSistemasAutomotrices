%%
%% This is file `SFEE.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% SFEE.dtx  (with options: `class')
%% 
%%  Copyright (C) 2023 by Tecnológico Nacional de México/ITS Purísima del Rincón juan.ds@purisima.tecnm.mx
%%  ---------------------------------------------------------------------------
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%% http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 
%% 
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{SFEE}
    [<+date+> <+version+> <+description+>]

%%% Document class for "Smart Factory and Efficence Energy" journal
%%% Developed by Juan de Anda Suárez <juan.ds@purisima.tecnm.mx>
%%% Biography sfee.bst
\NeedsTeXFormat{LaTeX2e} %File para indicar la version de latex con la que se va trabajar
\ProvidesClass{SFEE}[2023/11/23 version1.0] %nombre de la clase de para article
\LoadClass[journal,noindent,headline]{paper}
\usepackage{xcolor}
\usepackage{mdframed}
\usepackage{graphicx}
\usepackage{academicons}
\usepackage{svg}
\usepackage{yfonts,color}
\usepackage{datetime}
\usepackage{etoolbox}
\newcommand{\headlinecolor}{\normalcolor}
\RequirePackage{xcolor}
\definecolor{slcolor}{HTML}{882B21}
\let\Abstract\abstract %color al abstract
\long\def\abstract{\mdframed[backgroundcolor=pink,hidealllines=true]
  \vspace*{-0.5\baselineskip}\Abstract}
\let\endAbstract\endabstract
\def\endabstract{\endAbstract\endmdframed\par\bigskip}
\newcommand\doi[1]{\renewcommand\@doi{doi:10.61794/#1}}
\newcommand\@doi{}
\newcommand\received[1]{\renewcommand\@received{Received #1}}
\newcommand\@received{}
\newcommand\accepted[1]{\renewcommand\@accepted{Accepted #1}}
\newcommand\@accepted{}
\newcommand\Vol[1]{\renewcommand\@Vol{#1}}
\newcommand\@Vol{}
\newcommand\ppInit[1]{\renewcommand\@ppInit{#1}}
\newcommand\@ppInit{}
\newcommand\ppEnd[1]{\renewcommand\@ppEnd{#1}}
\newcommand\@ppEnd{}
\newcommand\ISSN[1]{\renewcommand\@ISSN{#1}}
\newcommand\@ISSN{}
\DeclareOption{onecolumn}{\OptionNotUsed}
\DeclareOption{green}{\renewcommand{\headlinecolor}{\color{green}}}
\DeclareOption{red}{\renewcommand{\headlinecolor}{\color{slcolor}}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\newcounter{fnote}
\def\fnmark[#1]{\let\comma\@empty
    \def\@fnmark{\@for\@@fnmark:=#1\do{%
    \edef\fnotenum{\@ifundefined{X@\@@fnmark}{1}{\Ref{\@@fnmark}}}%
  \unskip\comma\fnotenum\let\comma,}}%
}
\RequirePackage{authblk}
\renewcommand{\maketitle}{%
    \twocolumn[%
        \fontsize{15}{15}\fontfamily{phv}\fontseries{b}%
        \fontshape{sl}\selectfont\headlinecolor
        \textbf{\@title} \vskip 4pt
        \fontsize{12}{12}\fontfamily{phv}\fontseries{b}%
        \setcounter{footnote}{0}%
        \fontshape{sl}\selectfont\headlinecolor
        \@author \vskip 4pt
        \@doi \vskip 3pt
        %\@received ; \@accepted
        ]%
    \vskip 4pt
    \renewcommand{\AB@affillist}{}
    \renewcommand{\AB@authlist}{}
    \setcounter{authors}{0}
    \typeout{Article: \@shortauthor}
        %\setcounter{affil}{0}%
        \setcounter{section}{0}%
        \setcounter{subsection}{0}%
        \setcounter{subsubsection}{0}%
        \setcounter{paragraph}{0}%
        \setcounter{subparagraph}{0}%
        \setcounter{figure}{0}%
        \setcounter{table}{0}%
        \setcounter{equation}{0}%
}
\vfill
\ifdefined\biography\else\newenvironment{biography}{}{}\fi
\ifdefined\Contribution\else\newenvironment{Contribution}{}{}\fi
\unitlength 1in\parskip=0pt\par\parindent 1em\interlinepenalty500%

\endinput
%%
%% End of file `SFEE.cls'.
