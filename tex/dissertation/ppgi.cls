%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Classe de documento LaTeX para elaboração de dissertações do Mestrado
%% em Informática - Universidade Federal de 
%% Alagoas - UFAL
%%
%%       Gustavo José - gustavo.ufal@gmail.com
%%       23 de julho de 2014
%%
%% Alterado por: Leandro Dias da Silva - leandrodias@ic.ufal.br
%% 23/01/2015
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
   \ProvidesClass{ppgi}[2015/01/23 v2.0 Modelo PPGI-UFAL Mestrado]

   \LoadClass[12pt,a4paper,brazil,oneside,oldfontcommands,chapter=TITLE]{abntex2}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%      PACOTES NECESSÁRIOS       %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{hyperref}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[brazil]{babel}
\RequirePackage{indentfirst}
\RequirePackage{url}
\RequirePackage{epsfig}
\RequirePackage{epstopdf}
\RequirePackage[alf]{abntex2cite}
\RequirePackage{listings}
\RequirePackage{textcase}

\hypersetup{
pdftitle={\@title},
pdfauthor={\@author},
pdfsubject={\imprimirpreambulo},	
pdfkeywords={PALAVRAS}{CHAVES}{EM}{PORTUGUES},
pdfcreator={LaTeX with abnTeX2},
colorlinks=true,
linkcolor=black,
citecolor=black,
urlcolor=black
}

%Redefinindo o comando citep para cite
\def\citep{\cite} 

%Corrigindo o tamanho da fonte dos capítulos e seções
\renewcommand{\ABNTEXchapterfontsize}{\normalsize}
\renewcommand{\ABNTEXsectionfontsize}{\normalsize}
\renewcommand{\ABNTEXsubsectionfontsize}{\normalsize}
\renewcommand{\ABNTEXsubsubsectionfontsize}{\normalsize} 

%Estilo do título e da legenda das figuras e tabelas (Fonte menor que o texto)
\hangcaption
\captionstyle[\raggedright]{}
\indentcaption{0pt}
\captionnamefont{\ABNTEXfontereduzida}
\captiontitlefont{\ABNTEXfontereduzida}
\newsubfloat{figure}

\local{Maceió}
\preambulo{Dissertação apresentada como requisito parcial para obtenção do grau de Mestre pelo Programa de Pós-Graduação em Informática do Instituto de Computação da Universidade Federal de Alagoas.}
\tipotrabalho{Dissertação}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%      NOVOS COMANDOS            %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\imprimirAutorMaiusculo}{\MakeTextUppercase{\imprimirautor}}
\newcommand{\instituicaoNome}{UNIVERSIDADE FEDERAL DE ALAGOAS}
\newcommand{\instituicaoCentro}{INSTITUTO DE COMPUTAÇÃO}
\newcommand{\instituicaoPrograma}{PROGRAMA DE PÓS GRADUAÇÃO EM INFORMÁTICA}

%% Definindo a instituição Completa
\instituicao{
\instituicaoNome \\ \instituicaoCentro \\ \instituicaoPrograma
}

%%---------------------------------------------------
%% Comando para capa
%%---------------------------------------------------
\makeatletter
\makeatother
\renewcommand{\imprimircapa}{%
\begin{capa}%
\center

\ABNTEXchapterfont\Large\imprimirinstituicao

\vspace*{1cm}
\vspace*{1cm}
\vspace*{1cm}
{\ABNTEXchapterfont\large\imprimirAutorMaiusculo}
\vfill
\ABNTEXchapterfont\bfseries\LARGE\imprimirtitulo
\vfill
\large\imprimirlocal

\large\imprimirdata

\vspace*{1cm}
\end{capa}
}
%%---------------------------------------------------

%%---------------------------------------------------
%% Comando para folha de rosto
%%---------------------------------------------------
\makeatletter
\renewcommand{\folhaderostocontent}{
\begin{center}
{\ABNTEXchapterfont\large\imprimirautor}
\vspace*{\fill}\vspace*{\fill}
\begin{center}
\ABNTEXchapterfont\bfseries\Large\imprimirtitulo
\end{center}
\vspace*{\fill}
\abntex@ifnotempty{\imprimirpreambulo}{%
\hspace{.45\textwidth}
\begin{minipage}{.5\textwidth}
\SingleSpacing
\imprimirpreambulo
\vspace*{\fill}
\vspace*{\fill}
\vspace*{\fill}
\vspace*{\fill}
\begin{center}
{\imprimirorientadorRotulo~\imprimirorientador\par}
\end{center}
\end{minipage}%
\vspace*{\fill}
}

\abntex@ifnotempty{\imprimircoorientador}{%
{\large\imprimircoorientadorRotulo~\imprimircoorientador}%
}%

\vspace*{\fill}
{\large\imprimirlocal}
\par
{\large\imprimirdata}
\vspace*{1cm}
\end{center}
}\makeatother
%%---------------------------------------------------

%Estilo do título e da legenda das figuras e tabelas (Fonte menor que o texto)
\captionstyle[\raggedright]{}
\captionnamefont{\ABNTEXfontereduzida}
\captiontitlefont{\ABNTEXfontereduzida}

%% Variável preDEDICATORIA
\newcommand{\prededicatoria}{\vspace*{\fill}}

%% Variável posResumo
\newcommand{\posresumo}{\vspace{\onelineskip} \noindent}

%% Variável Lista de Ilustrações
\newcommand{\listailustracoes}{
\pdfbookmark[0]{\listfigurename}{lof}
\listoffigures*
\cleardoublepage
}

%% Variável Lista de Tabelas
\newcommand{\listatabelas}{
\pdfbookmark[0]{\listtablename}{lot}
\listoftables*
\cleardoublepage
}

%% Variável Sumário
\newcommand{\sumario}{
\pdfbookmark[0]{\contentsname}{toc}
\tableofcontents*
\cleardoublepage
}

%% Variável ElementosTextuais
\newcommand{\elementostextuais}{
\mainmatter
\pagestyle{simple}
}
