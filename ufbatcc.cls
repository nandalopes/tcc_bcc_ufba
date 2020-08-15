%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% ufbatcc.cls
%%% UFPE Thesis/Dissertation document class
%%% (C) 2003--2005 Paulo Gustavo Soares Fonseca
%%% (C) 2012 Antonio Terceiro
%%% (C) 2014 Christina von Flach
%%% (c) 2020 Fernanda Lopes
%%% THIS FILE COMES WITH NO WARRANTIES
%%% PERMISSION TO COPY AND REDISTRIBUTE FREE OF CHARGE
%%% FOR ACADEMIC PURPOSES ONLY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%    Author              = "Paulo G. S. Fonseca and Antonio Terceiro and Christina von Flach",
%%%    Version             = "1.1",
%%%    Date                = "21 Jul 2020",
%%%    Filename            = "ufbatcc.cls",
%%%    Address             = "Universidade Federal da Bahia
%%%                           Instituto de Matematica",
%%%    Telephone           = "+55 71 3283-6292",
%%%    Email               = "flach@dcc.ufba.br",
%%%    Keywords            = "LaTeX, Thesis, Dissertation",
%%%    Abstract            = "LaTeX document-style for typesetting of
%%%                           Monographs, Theses and Dissertations at the
%%%                           Federal University of Bahia - Brazil"
%%%    SeeAlso             = "book.sty",
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ProvidesClass{ufbatcc}[2020/07/21]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% OPTIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\DeclareOption{pt}{%
  \let\@language=0%
  \PassOptionsToPackage{brazil}{babel}}

\DeclareOption{en}{%
  \let\@language=1%
  \PassOptionsToPackage{brazil,english}{babel}}

\DeclareOption{oneside}{%
  \PassOptionsToClass{oneside}{book}}

\DeclareOption{twoside}{%
  \PassOptionsToClass{twoside}{book}}

\DeclareOption{print}{%
  \let\@scr=0}

\DeclareOption{scr}{%
  \let\@scr=1%
  \PassOptionsToClass{dvipdfm}{book}}

\DeclareOption{bsc}{%
  \let\@degreetype=0}

\DeclareOption{msc}{%
  \let\@degreetype=1}

\DeclareOption{qual}{%
  \let\@degreetype=2}

\DeclareOption{prop}{%
  \let\@degreetype=3}

\DeclareOption{phd}{%
  \let\@degreetype=4}

\DeclareOption{classic}{%
  \let\@style=0}

\DeclareOption{std}{%
  \let\@style=1
}

% Default options
\ExecuteOptions{pt,msc,std,print}
\ProcessOptions

\LoadClass[12pt,a4paper]{report}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% PACKAGES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[top=3cm,left=3cm,right=2cm,bottom=2cm]{geometry}
\linespread{1.3}
\setlength{\parindent}{1.25cm}
\RequirePackage{indentfirst}
\RequirePackage[utf8]{inputenc}
\RequirePackage[brazil]{babel}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{graphicx}
\RequirePackage{color}
\RequirePackage{multicol}
\RequirePackage[normalem]{ulem}
\RequirePackage{wrapfig}
\RequirePackage{caption}
\RequirePackage{fancybox}
\RequirePackage[pdfstartview=FitH]{hyperref}
\RequirePackage{subfigure}
\bibliographystyle{plain}


















\renewcommand{\theenumii}{\alph{enumii}}
\DeclareMathOperator{\sen}{sen}
\DeclareMathOperator{\tg}{tg}
\DeclareMathOperator{\arctg}{arctg}
\DeclareMathOperator{\cotg}{cotg}
\DeclareMathOperator{\agm}{agm}

\newtheorem{thm}{Teorema}[section]
\newtheorem{dfn}{Definição}[section]
\newtheorem{prob}{Problema}[section]
\newtheorem{cor}{Corolário}[section]
\newtheorem{prop}{Proposição}[section]
\newtheorem{lem}{Lema} [section]
