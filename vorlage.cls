%% LaTeX Beamer presentation template (requires beamer package)
%% see http://bitbucket.org/rivanvx/beamer/wiki/Home
%% idea contributed by H. Turgut Uyar
%% template based on a template by Till Tantau
%% this template is still evolving - it might differ in future releases!

\LoadClass[9pt,t]{beamer}
% 
\mode<presentation>

\RequirePackage{import} %% organize imports

\setbeamertemplate{navigation symbols}{}%remove navigation symbols

\usetheme{CambridgeUS}
\hypersetup{pdfpagemode=FullScreen}

\RequirePackage[ngerman]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage{amsmath,amsfonts,amssymb,wasysym}
\RequirePackage{MnSymbol} % downmapsto
\RequirePackage{rotating}
\RequirePackage{xifthen,printlen}% provides \isempty test
%\usepackage[backend=biber,style=verbose]{biblatex}
%\bibliography{biblio.bib}
%\nocite{*}

\RequirePackage{tikz}
\usetikzlibrary{arrows,calc, positioning, fit, shapes, backgrounds, shadows,
  matrix}

% \usepackage{pgfpages}
% \pgfpagesuselayout{4 on 1}[a4paper,landscape,border shrink=5mm]

% font definitions, try \usepackage{ae} instead of the following
% three lines if you don't like this look
% \usepackage{mathptmx}
% \usepackage[scaled=.90]{helvet}
% \usepackage{courier}

\RequirePackage[T1]{fontenc}

% \setbeameroption{show notes on second screen=left}

\renewcommand*{\thefootnote}{\arabic{footnote}}

%\AtBeginDocument{
%\setlength{\abovedisplayshortskip}{0pt}
%\setlength{\belowdisplayshortskip}{0pt}
%\setlength{\abovedisplayskip}{5pt}
%\setlength{\belowdisplayskip}{0pt}
%}



%% Define colors %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\tikzstyle{emptynode}=[inner sep=0pt, outer sep=0pt]
\tikzstyle{colored}=[fill=blue!20, rounded corners=2pt, inner sep=3pt, outer sep=-3pt]
\tikzstyle{overlaynode}=[text=blue!60, fill=gray, draw=blue!20,
	rounded corners=5pt, fill opacity=0.2, text opacity=1]
\tikzstyle{overlayarrow}=[draw=blue!60, opacity=0.2, line width=3pt]

\tikzstyle{overlayproofnode}=[text=blue!60, draw=blue!20,
	font=\scriptsize]
\tikzstyle{overlayproofarrow}=[draw=blue!60, opacity=0.2, line width=0.5pt,
	shorten >= 3pt]

\newcommand{\emptynode}[3][]{%
	\tikz[remember picture, baseline, outer sep=0pt, inner sep=0pt]{
		\node[anchor=base, emptynode, #1] (#2) {#3};}}
		

%% Math abkürzungen %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	
\newenvironment{notation}
	{\begin{exampleblock}{Notation}}	
	{\end{exampleblock}}

\newenvironment{beispiel}[1][]
	{\begin{exampleblock}{Beispiel #1}}	
	{\end{exampleblock}}

\newenvironment{satz}[1][]%
  {\begin{block}{Satz #1}}
  {\end{block}}
 



\newcommand{\ds}[1]{{\displaystyle #1}}
\let\fr\mathfrak

\DeclareMathOperator{\charak}{char}
\DeclareMathOperator{\dom}{dom}
\DeclareMathOperator{\rk}{rk}
\DeclareMathOperator{\id}{id}
\DeclareMathOperator{\ad}{ad}
\let\d\undefined
\DeclareMathOperator{\d}{d}
\DeclareMathOperator{\Hom}{Hom}
\DeclareMathOperator{\End}{End}
\DeclareMathOperator{\GL}{GL}

\renewcommand{\P}{\mathbb P}
\newcommand{\A}{\mathbb A}
\newcommand{\Z}{\mathbb Z}
\newcommand{\ideal}{\vartriangleleft}
\newcommand{\m}{\fr{m}}
\newcommand{\p}{\fr{p}}
\newcommand{\q}{\fr{q}}
\renewcommand{\a}{\fr{a}}
\renewcommand{\b}{\fr{b}}
\renewcommand{\O}{\mathcal O}
\newcommand{\OVP}{\O_{V,P}}
\newcommand{\inv}{^{-1}}

\newcommand{\lb}{{\color{blue}\big[}}
\newcommand{\rb}{{\color{blue}\big]}}

\newcommand{\speq}[1]{\ #1\ }

\newcommand{\rest}[1]{\big|_{#1}}
\newcommand{\funcdef}[1]{%
    \begin{array}[t]{>{\displaystyle}r>{\displaystyle}c>{\displaystyle}l}
    #1\end{array}}
\let\xto\xrightarrow

\newcommand{\partto}{\ \tikz[baseline=-0.6ex]{
    \draw[->]
        (0,0) -- +(0.4em,0) +(0.7em,0) -- +(1.3em,0);}\ }


\let\mpar\marginpar
\renewcommand{\marginpar}[1]{
    \mpar{\normalfont\sffamily\scriptsize #1}}
    

