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


%%%%%%%%%%%%%%%%% Classe nova %%%%%%%%%%%%%%%%%%%%%%%%%%%%

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
% \hypersetup{
%   colorlinks=true,
%   linkcolor=blue,
%   urlcolor=blue,
%   citecolor=blue
% }
\definecolor{blue}{RGB}{41,5,195}

\graphicspath{{figs/}}

\hypersetup{%
  portuguese,
  colorlinks=true,   % true: "links" coloridos; false: "links" em caixas de texto
  linkcolor=blue,    % Define cor dos "links" internos
  citecolor=blue,    % Define cor dos "links" para as referências bibliográficas
  filecolor=blue,    % Define cor dos "links" para arquivos
  urlcolor=blue,     % Define a cor dos "hiperlinks"
  breaklinks=true,
  pdfkeywords={abnt, latex, abntex, abntex2}
}

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

\newcounter{contar}


% \begin{document}

%---------- CAPA -------------

\pagestyle{empty}
\begin{center}
\includegraphics[height=2.5cm]{UFBA.jpg}
\hspace{2cm}
\includegraphics[height=2.5cm]{IM.jpg}
\hspace{2cm}
\includegraphics[height=2.5cm]{dccufba.jpg}
\end{center}

\begin{center}
\sc{\large{Universidade Federal da Bahia}} \\
\sc{\large{Instituto de Matemática e Estatística}} \\
\sc{\large{Bacharelado em Ciência da Computação}} \\
\sc{\small{Trabalho de Conclusão de Curso}} \\

\vspace{4cm}

\sc{\Large{Título do Trabalho}}

\vspace{4.5cm}

\sc{\Large{Nome do(a) estudante}}

\vspace{5.5cm}

\textbf{Salvador - Bahia} \\
12 de agosto de 2020
% \today
\end{center}


%---------- FOLHA DE ROSTO -------------
\newpage
\begin{center}
\sc{\Large{Título do Trabalho}}

\vspace{4cm}

\large{Nome do(a) estudante}
\end{center}

\vspace{4cm}

\begin{flushright}
\begin{minipage}{8.6cm}
Trabalho de Conclusão de curso apresentado como 
requisito parcial para obtenção 
do título de Bacharel em Ciência da Computação.

\vspace{0.5cm}
\textbf{Orientador}: Prof. Dr. Nome do(a) Orientador(a).

\end{minipage}
\end{flushright}

\vspace{8cm}


\begin{center}
\textbf{Salvador - Bahia} \\
\today
\end{center}


%---------- BANCA EXAMINADORA -------------
\newpage
\begin{center}
\sc{\Large{Título do Trabalho}}

\vspace{2.2cm}

\large{Nome do(a) estudante}
\end{center}

\vspace{2.2cm}

\begin{flushright}
\begin{minipage}{8.6cm} 
Trabalho de Conclusão de curso apresentado como 
requisito parcial para obtenção 
do título de Bacharel em Ciência da Computação.
\end{minipage}
\end{flushright}

\vspace{1cm}
\begin{center}
\Large \textbf{Banca Examinadora:}
\end{center}
\vspace{1.5cm}

\begin{flushright}
\begin{minipage}[l]{12cm}
\begin{center}
\uline{\hspace{10.5cm}} \\
Prof. Dr. Nome do(a) Orientador(a) (Orientador) \\ UFBA \\
\vspace{1cm}
\uline{\hspace{10.5cm}} \\
Prof. Dr. Nome do(a) Avaliador(a) \\ Instituição \\
\vspace{1cm}
\uline{\hspace{10.5cm}} \\
Prof. Dr. Nome do(a) Avaliador(a) \\ Instituição

\end{center}
\end{minipage}
\end{flushright}

%-----------Dedicatória----------------
\newpage
\vspace*{21cm}
\begin{flushright}
\textit{À minha família}
\end{flushright}


%------------Agradecimentos------------
\newpage
\chapter*{Agradecimentos}
\thispagestyle{empty}

Agradeço a...

%------------Citação-------------------
\newpage
\vspace*{20cm}
\begin{flushright}
\begin{minipage}{7cm}
\begin{flushright}
\textit{
"A Matemática não mente. Mente quem faz mau uso dela". \\
Albert Einstein}
\end{flushright}
\end{minipage}
\end{flushright}


%--------------Resumo-------------------
\newpage
\chapter*{Resumo}
\thispagestyle{empty}



%-------------Abstract------------------
\newpage
\chapter*{Abstract}
\thispagestyle{empty}


%-------------Índice--------------------
\newpage
\tableofcontents
\thispagestyle{empty}


%-------------Introdução----------------
\chapter*{Introdução}
\pagestyle{myheadings}
\setcounter{page}{1}
\addcontentsline{toc}{chapter}{Introdução}



%-------------Capítulo 1-----------------
\chapter{Primeiro Capítulo}


\section{Seção 1}



%-------------Capítulo 2-----------------
\chapter{Segundo Capítulo}


\section{Seção 1}


%-------------Capítulo 3-----------------
\chapter{Terceiro Capítulo}


\section{Seção 1}




\nocite{Lucas1, Lucas2, Bonola}


%-------------Bibliografia------------------
\newpage
\renewcommand{\refname}{Referências Bibliográficas}
\addcontentsline{toc}{chapter}{Referências Bibliográficas}
\bibliography{Bibliografia}


\end{document}
