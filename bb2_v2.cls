%% TEMPLATE WRITER: SAY OL  %%
%% EMAIL: say_ol@yahoo.com  %%
%% WEBSITE: khtug.blogspot.com  %%
%% PERSONAL BLOG: bunnybookshelf.blogspot.com  %%
%% Adaptado para Apuntes de EDO (J. D. Torres-Riffo)  %%
%%
%% bb2_v2.cls -- cambios respecto de bb2.cls (ver auditoria_bb2.md):
%%   1. bbegreen oscurecido (3D8B45 -> 377D3E): titulo blanco 4,22 -> 5,04.
%%   2. activity con fondo !8 como las demas cajas.
%%   3. Subtitulo de solution con bbegreen en vez de magenta.
%%   4. remark y note con titulo en negro (sobre amarillo: 3,85 -> 11,98).
%%   5. Nuevo token bbeamberdark y macro \est (nivel de ejercicio).
%%   6. Listas con bolita con ball color=bbe en vez de blue.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bbe}[2026/10/18]
\LoadClassWithOptions{book}
% geometry
%% Margenes de 2.5 cm: lineas de ~80-90 caracteres, mas comodas de leer
%% e imprimir que los 1 cm originales (~140 caracteres por linea).
\RequirePackage{geometry}
\geometry{%
	left=2.5cm,%
	right=2.5cm,%
	top=2.5cm,%
	bottom=2.5cm,%
	bindingoffset=0cm}
% math font
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{mathtools}
%% Tipografia: serif legible para el cuerpo de texto (Libertine) con su
%% math companion (newtxmath), y Fira Sans reservada para titulos, cajas
%% y elementos de navegacion via \sffamily. Este pareo evita el desajuste
%% de peso/anchura entre texto y simbolos matematicos.
\RequirePackage{libertine}
\RequirePackage[libertine]{newtxmath}
\RequirePackage[book]{FiraSans}
% color
\RequirePackage[table]{xcolor}
%% Paleta base: tonos con matiz y luminosidad emparejados para que las
%% cajas de colores convivan como un mismo sistema visual.
%% bbegreen: 377D3E (antes 3D8B45) para que el texto blanco del titulo y el
%% verde sobre su propio fondo claro lleguen a 4,5:1 (WCAG AA).
%% bbeamberdark: amarillo para texto y simbolos sobre fondo claro (estrellas).
\definecolor{bbeblue}{HTML}{2C5F8A}
\definecolor{bbeteal}{HTML}{1F7A6C}
\definecolor{bbegreen}{HTML}{377D3E}
\definecolor{bbered}{HTML}{B33A3A}
\definecolor{bbeamber}{HTML}{C98A1E}
\definecolor{bbeamberdark}{HTML}{8D6115}
\definecolor{bbeviolet}{HTML}{6A4C93}
\definecolor{bbebrown}{HTML}{8A5A3B}
\definecolor{bbegray}{HTML}{555555}
\DeclareOption{black}{%
	\colorlet{bbe}{black}
	\colorlet{blue}{black}
	\colorlet{brown}{black}
	\colorlet{cyan}{black}
	\colorlet{darkgray}{black}
	\colorlet{gray}{black}
	\colorlet{green}{black}
	\colorlet{lime}{black}
	\colorlet{magenta}{black}
	\colorlet{olive}{black}
	\colorlet{orange}{black}
	\colorlet{pink}{black}
	\colorlet{purple}{black}
	\colorlet{red}{black}
	\colorlet{teal}{black}
	\colorlet{violet}{black}
	\colorlet{yellow}{black}
	\colorlet{bbeblue}{black}
	\colorlet{bbeteal}{black}
	\colorlet{bbegreen}{black}
	\colorlet{bbered}{black}
	\colorlet{bbeamber}{black}
	\colorlet{bbeamberdark}{black}
	\colorlet{bbeviolet}{black}
	\colorlet{bbebrown}{black}
	\colorlet{bbegray}{black}
}
\DeclareOption{blue}{\colorlet{bbe}{bbeblue}}
\DeclareOption{brown}{\colorlet{bbe}{bbebrown}}
\DeclareOption{cyan}{\colorlet{bbe}{bbeteal}}
\DeclareOption{darkgray}{\colorlet{bbe}{bbegray}}
\DeclareOption{gray}{\colorlet{bbe}{bbegray}}
\DeclareOption{green}{\colorlet{bbe}{bbegreen}}
\DeclareOption{lime}{\colorlet{bbe}{bbegreen}}
\DeclareOption{magenta}{\colorlet{bbe}{bbeviolet}}
\DeclareOption{olive}{\colorlet{bbe}{bbebrown}}
\DeclareOption{orange}{\colorlet{bbe}{bbeamber}}
\DeclareOption{pink}{\colorlet{bbe}{bbeviolet}}
\DeclareOption{purple}{\colorlet{bbe}{bbeviolet}}
\DeclareOption{red}{\colorlet{bbe}{bbered}}
\DeclareOption{teal}{\colorlet{bbe}{bbeteal}}
\DeclareOption{violet}{\colorlet{bbe}{bbeviolet}}
\DeclareOption{yellow}{\colorlet{bbe}{bbeamber}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ExecuteOptions{blue}
\ProcessOptions\relax
% floating object
\RequirePackage{float}
% graphic
\RequirePackage{graphicx}
% table
\RequirePackage{colortbl}
\arrayrulecolor{bbe}
% picture
\RequirePackage{tikz}
\usetikzlibrary{calc}
\usetikzlibrary{angles}
\usetikzlibrary{quotes}
\usetikzlibrary{arrows.meta}

\usetikzlibrary{
    patterns,
    decorations.pathmorphing,
    decorations.markings,
    arrows.meta,
    positioning,
    calc,
    babel                      % Evita conflictos de babel-spanish con < y > en TikZ
}
\tikzset{%
	every picture/.style={%
		line width=1pt,%
		fill=bbe,%
		draw=bbe,%
		text=bbe,%
	},%
	>={Stealth[length=6pt,inset=2pt]}%
}
%
\RequirePackage[many]{tcolorbox}
%% Nota: 'sharp corners' se aplica a todas las cajas. Para una caja con
%% esquinas redondeadas (p. ej. la de la portada) agregar 'rounded corners'
%% en sus opciones; 'arc' por si solo no tiene efecto.
\tcbset{
    colframe=bbeblue,
    colback=bbeblue!8!white,
    boxed title style={colback=bbeblue},
	breakable,
	enhanced,
	sharp corners,
	boxsep=1pt,
	attach boxed title to top left={yshift=-\tcboxedtitleheight,  yshifttext=-.75\baselineskip},
	boxed title style={boxsep=1pt,sharp corners},
    fonttitle=\bfseries\sffamily,
    drop lifted shadow
}
\newtcolorbox{solution}[1][]{
    no shadow,
    top=2ex,
    boxrule=0pt,
    leftrule=1.4pt,
    title={Soluci\'on},
    colframe=bbegreen,
    colback=bbegreen!8!white,
    boxed title style={colback=bbegreen},
    overlay unbroken and first={
        \node[below right,font=\small,color=bbegreen,text width=.8\linewidth]
        at (title.north east) {#1};
    }
}
\newtcolorbox[auto counter,number within=chapter,number format=\arabic]{activity}[1][]{
	title={Actividad~\thetcbcounter},
	colframe=bbegreen,
	colback=bbegreen!8!white,
	coltitle=white,
	boxed title style={colback=bbegreen},
	overlay unbroken and first={
		\node[below right,font=\small,color=bbegreen,text width=.8\linewidth]
		at (title.north east) {#1};
	}
}
\newtcolorbox[auto counter,number within=chapter,number format=\arabic]{definition}[1][]{
	title={Definici\'on~\thetcbcounter},
	colframe=bbeblue,
	colback=bbeblue!8!white,
	boxed title style={colback=bbeblue},
	overlay unbroken and first={
		\node[below right,font=\small,color=bbeblue,text width=.8\linewidth]
		at (title.north east) {#1};
	}
}
\newtcolorbox[auto counter,number within=chapter,number format=\arabic]{theorem}[1][]{
	title={Teorema~\thetcbcounter},
	colframe=bbeblue,
	colback=bbeblue!8!white,
    fontupper=\itshape,
	boxed title style={colback=bbeblue},
	overlay unbroken and first={
		\node[below right,font=\small,color=bbeblue,text width=.8\linewidth]
		at (title.north east) {#1};
	}
}
\newtcolorbox[auto counter,number within=chapter,number format=\arabic]{example}[1][]{
	title={Ejemplo~\thetcbcounter},
	colframe=bbegreen,
	colback=bbegreen!8!white,
	boxed title style={colback=bbegreen},
	overlay unbroken and first={
		\node[below right,font=\small,color=bbegreen,text width=.8\linewidth]
		at (title.north east) {#1};
	}
}
\newtcolorbox[auto counter,number within=chapter,number format=\arabic]{exercise}[1][]{
    title={Ejercicio~\thetcbcounter},
    colframe=bbered,
    colback=bbered!8!white,
    boxed title style={colback=bbered},
    overlay unbroken and first={
        \node[below right,font=\small,color=bbered,text width=.8\linewidth]
        at (title.north east) {#1};
    }
}
%% 'generality' y 'property' producen la misma caja ("Propiedad").
%% Se mantienen ambos nombres para no romper capitulos que usen cualquiera.
\newtcolorbox[auto counter,number within=chapter,number format=\arabic]{generality}[1][]{
	title={Propiedad~\thetcbcounter},
	colframe=bbeteal,
	colback=bbeteal!8!white,
	boxed title style={colback=bbeteal},
	overlay unbroken and first={
		\node[below right,font=\small,color=bbeteal,text width=.8\linewidth]
		at (title.north east) {#1};
	}
}
\newtcolorbox[auto counter,number within=chapter,number format=\arabic]{property}[1][]{
	title={Propiedad~\thetcbcounter},
	colframe=bbeteal,
	colback=bbeteal!8!white,
	boxed title style={colback=bbeteal},
	overlay unbroken and first={
		\node[below right,font=\small,color=bbeteal,text width=.8\linewidth]
		at (title.north east) {#1};
	}
}
\newtcolorbox{remark}[1][]{
    title={\scalebox{1.75}{\raisebox{-.25ex}{\ding{43}}}~Observaci\'on},
    colframe=bbeamber!55!white,
    colback=bbeamber!15!white,
    coltitle=black,
    fontupper=\sffamily,
    boxed title style={colback=bbeamber!55!white},
    boxed title style={boxsep=1ex,sharp corners},%%
    %% El titulo es mas alto que en las otras cajas (icono + boxsep=1ex):
    %% se reserva su altura completa y se agrega un margen para que no
    %% tape la primera linea del texto.
    attach boxed title to top left={yshift=-\tcboxedtitleheight, yshifttext=-\tcboxedtitleheight},
    top=1ex,
    overlay unbroken and first={
        \node[below right,font=\normalsize,color=bbered,text width=.8\linewidth]
        at (title.north east) {#1};
    }
}
\newtcolorbox{note}[1][]{
    title={\scalebox{1.75}{\raisebox{-0.1ex}{\ding{45}}}~Obs.},
    colframe=bbeamber!55!white,
    colback=bbeamber!15!white,
    coltitle=black,
    fonttitle=\bfseries\sffamily,
    boxed title style={colback=bbeamber!55!white},
    boxed title style={boxsep=1ex,sharp corners},%%
    %% El titulo es mas alto que en las otras cajas (icono + boxsep=1ex):
    %% se reserva su altura completa y se agrega un margen para que no
    %% tape la primera linea del texto.
    attach boxed title to top left={yshift=-\tcboxedtitleheight, yshifttext=-\tcboxedtitleheight},
    top=1ex,
    overlay unbroken and first={
        \node[below right,font=\normalsize,color=bbered,text width=.8\linewidth]
        at (title.north east) {#1};
    }
}

%% Nivel de dificultad de un ejercicio: \est{1}, \est{2} o \est{3}.
%% \providecommand: practica_sistemas_1.tex y el maestro la definen igual.
\providecommand{\est}[1]{\textcolor{bbeamberdark}{\ifcase#1\or\ding{72}\or\ding{72}\ding{72}\or\ding{72}\ding{72}\ding{72}\fi}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% table of contents
% chapter
\def\l@chapter#1#2{%
	\ifnum \c@tocdepth >\m@ne
		\addpenalty{-\@highpenalty}%
		\vskip 1.0em \@plus\p@
		\setlength\@tempdima{1.5em}%
		\begingroup
			\parindent \z@ \rightskip \@pnumwidth
			\parfillskip -\@pnumwidth
			\leavevmode \bfseries
			\advance\leftskip\@tempdima
			\hskip -\leftskip
			\textcolor{bbe}{\bfseries\sffamily \chaptername~#1}\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss\color{bbe}#2}\par
			\penalty\@highpenalty
		\endgroup
	\fi}
% section / subsection (nivel 2 para que tocdepth=1 oculte subsecciones)
\renewcommand*\l@section{\@dottedtocline{1}{2ex}{4ex}}
\renewcommand*\l@subsection{\@dottedtocline{2}{6ex}{5.5ex}}
\def\@pnumwidth{6ex}
\def\@dotsep{.25}
\def\@dottedtocline#1#2#3#4#5{%
	\ifnum #1>\c@tocdepth \else
	\vskip \z@ \@plus.2\p@
	{\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
		\parindent #2\relax\@afterindenttrue
		\interlinepenalty\@M
		\leavevmode
		\@tempdima #3\relax
		\advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
		\color{bbe}\bfseries\sffamily #4\nobreak
		\leaders\hbox{$\m@th
			\mkern \@dotsep mu\hbox{.}\mkern \@dotsep
			mu$}\hfill
		\nobreak
		\hb@xt@\@pnumwidth{\hfil\normalfont\color{bbe}#5}%
		\par}%
	\fi}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ancho disponible para titulos (evita que se salgan del margen)
\newdimen\bbe@titlewd
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% chapter
\def\@makechapterhead#1{%
	{\if@twocolumn\vspace*{2.5ex}\else\relax\fi%
		\parindent\z@\raggedright%
		\LARGE\bfseries\sffamily
		\sbox\@tempboxa{\chaptername~\thechapter}%
		\bbe@titlewd\linewidth
		\advance\bbe@titlewd-\wd\@tempboxa
		\advance\bbe@titlewd-2em
		\begin{tikzpicture}[overlay,every node/.style={font=\LARGE\bfseries\sffamily}]
		\node[right,minimum height=6ex,draw=bbe,fill=bbe,text=white](chapter)at(0,0){\chaptername~\thechapter};
		\node[right,text=bbe,text width=\bbe@titlewd,align=left](title)at(chapter.east){#1};
		\draw[very thick](chapter.north west)--([xshift=\linewidth]chapter.north west);
		\end{tikzpicture}%
		\par}%
	\nobreak\vskip5ex}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% chapter star
\def\@makeschapterhead#1{%
	{\if@twocolumn\vspace*{2.5ex}\else\relax\fi%
		\parindent\z@\raggedright%
		\LARGE\bfseries\sffamily
		\sbox\@tempboxa{\chaptername}%
		\bbe@titlewd\linewidth
		\advance\bbe@titlewd-\wd\@tempboxa
		\advance\bbe@titlewd-2em
		\begin{tikzpicture}[overlay,every node/.style={font=\LARGE\bfseries\sffamily}]
		\node[right,minimum height=6ex,draw=bbe,fill=bbe,text=white](chapter)at(0,0){\hphantom{\chaptername}};
		\node[right,text=bbe,text width=\bbe@titlewd,align=left](title)at(chapter.east){#1};
		\draw[very thick](chapter.north west)--([xshift=\linewidth]chapter.north west);
		\end{tikzpicture}%
		\par}%
	\nobreak\vskip5ex}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% section spacing
%% \bbe@lvl registra el nivel para que las versiones con asterisco
%% (\section*, \subsection*) sepan que estilo dibujar.
\def\bbe@lvl{1}
\long\def\section{\def\bbe@lvl{1}%
	\@startsection{section}{1}{\z@}{%
		-2.5ex\@plus-.3ex\@minus-.2ex}{%
		1.5ex\@plus.2ex\@minus.2ex}{\normalfont\bfseries}}
\long\def\subsection{\def\bbe@lvl{2}%
	\@startsection{subsection}{2}{\z@}{%
		-2ex\@plus-.2ex\@minus-.2ex}{%
		1ex\@plus.2ex\@minus.2ex}{\normalfont\bfseries}}
\long\def\subsubsection{\def\bbe@lvl{3}%
	\@startsection{subsubsection}{3}{\z@}{%
		-1.5ex\@plus-.2ex\@minus-.2ex}{%
		1ex\@plus.2ex\@minus.2ex}{\normalfont\bfseries}}
\long\def\paragraph{%
	\@startsection{paragraph}{4}{\z@}{%
		1.5ex\@plus.2ex\@minus.2ex}{-1em}{\normalfont\bfseries}}
\long\def\subparagraph{%
	\@startsection{subparagraph}{4}{\parindent}{%
		1.5ex\@plus.2ex\@minus.2ex}{-1em}{\normalfont\bfseries}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% section drawing
%% Nivel 1 (section): recuadro de color con el numero + titulo + linea.
%% Niveles 2 y 3: titulo en color con una linea delgada debajo.
%% #1 = numero (puede ir vacio), #2 = titulo
\def\bbe@sectionbox#1#2{%
	\noindent
	\begingroup\large\bfseries\sffamily
	\bbe@titlewd\linewidth
	\advance\bbe@titlewd-5ex
	\advance\bbe@titlewd-2em
	\makebox[\linewidth][l]{%
	\begin{tikzpicture}[baseline=(section.base),every node/.style={font=\large\bfseries\sffamily}]
	\node[anchor=north west,minimum height=3.25ex,draw=bbe,fill=bbe,text=white,text width=5ex,align=center](section)at(0,0){#1};
	\node[anchor=base west,text=bbe,text width=\bbe@titlewd,align=left](title)at(section.base east){#2};
	\draw[very thick](section.north west)--([xshift=\linewidth]section.north west);
	\end{tikzpicture}}%
	\endgroup
	\@@par\nobreak\vskip1ex}
\def\bbe@subsectionhead#1#2{%
	\noindent
	\begin{minipage}{\linewidth}
	\raggedright\color{bbe}%
	\ifnum\bbe@lvl=2 \large\fi\bfseries\sffamily
	#1#2\par\vspace{.4ex}%
	\color{bbe!40}\rule{\linewidth}{.8pt}%
	\end{minipage}%
	\@@par\nobreak\vskip.5ex}
\def\@sect#1#2#3#4#5#6[#7]#8{%
	\ifnum #2>\c@secnumdepth
		\let\@svsec\@empty
	\else
		\refstepcounter{#1}%
		\protected@edef\@svsec{\@seccntformat{#1}\relax}%
	\fi
	\@tempskipa #5\relax
	\ifdim \@tempskipa>\z@
		\begingroup
		#6{%
			\ifnum #2=\@ne
				\vskip1ex%
				\bbe@sectionbox{\ifnum #2>\c@secnumdepth\else\csname the#1\endcsname\fi}{#8}%
			\else
				\bbe@subsectionhead{\@svsec}{#8}%
			\fi}%
		\endgroup
		\csname #1mark\endcsname{#7}%
		\addcontentsline{toc}{#1}{%
			\ifnum #2>\c@secnumdepth \else
				\protect\numberline{\csname the#1\endcsname}%
			\fi
			#7}%
	\else
		\def\@svsechd{%
			#6{\hskip #3\relax
				\@svsec #8}%
			\csname #1mark\endcsname{#7}%
			\addcontentsline{toc}{#1}{%
				\ifnum #2>\c@secnumdepth \else
					\protect\numberline{\csname the#1\endcsname}%
				\fi
				#7}}%
	\fi
	\@xsect{#5}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% section star (recuadro vacio en lugar del "?" original)
\def\@ssect#1#2#3#4#5{%
	\@tempskipa #3\relax
	\ifdim \@tempskipa>\z@
		\begingroup
		#4{%
			\ifnum\bbe@lvl=\@ne
				\vskip1ex%
				\bbe@sectionbox{}{#5}%
			\else
				\bbe@subsectionhead{}{#5}%
			\fi}%
		\endgroup
	\else
		\def\@svsechd{#4{\hskip #1\relax #5}}%
	\fi
	\@xsect{#3}}
% reference
\RequirePackage{hyperref}
\hypersetup{%
	linktoc=all,%
	bookmarksnumbered,%
	bookmarksopen,%
	hidelinks}
\RequirePackage{bookmark}
\bookmarksetup{
	addtohook={%
		\ifnum\bookmarkget{level}=0%
		\bookmarksetup{color=bbered}%
		\fi%
		\ifnum\bookmarkget{level}=1%
		\bookmarksetup{color=bbeblue}%
		\fi%
		\ifnum\bookmarkget{level}=2%
		\bookmarksetup{color=bbeteal}%
		\fi}}
% enumerate
\RequirePackage[inline]{enumitem}
\RequirePackage{multicol}
\RequirePackage{pifont}
% set enumerate and itemize key for number of columns
\SetEnumitemKey{2}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{2},after=\end{multicols}}
\SetEnumitemKey{3}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{3},after=\end{multicols}}
\SetEnumitemKey{4}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{4},after=\end{multicols}}
\SetEnumitemKey{5}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{5},after=\end{multicols}}
\SetEnumitemKey{6}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{6},after=\end{multicols}}
%
\setlist[enumerate]{%
    parsep=0pt,%
    topsep=1ex,%
    partopsep=0pt,%
    leftmargin=*,%
    itemsep=.5ex,%
    labelsep=0.5ex,%
    format=\color{bbe}\small\bfseries\sffamily
}
% enumerate keys
\SetEnumitemKey{1}{label=\arabic*.}
\SetEnumitemKey{a}{label=\alph*.}
\SetEnumitemKey{A}{label=\Alph*.}
\SetEnumitemKey{i}{label=\roman*.}
\SetEnumitemKey{I}{label=\Roman*.}
% ball enumerate
\SetEnumitemKey{b1}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries\sffamily,%
        ball color=bbe]{\arabic*};
    }%
}
%
\SetEnumitemKey{ba}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries\sffamily,%
        ball color=bbe]{\alph*};
    }%
}
%
\SetEnumitemKey{bA}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries\sffamily,%
        ball color=bbe]{\Alph*};
    }%
}
%
\SetEnumitemKey{bi}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries\sffamily,%
        ball color=bbe]{\roman*};
    }%
}
%
\SetEnumitemKey{bI}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries\sffamily,%
        ball color=bbe]{\Roman*};
    }%
}
%
% circled enumerate
\SetEnumitemKey{c1}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries\sffamily,%
        fill=bbe]{\arabic*};
    }%
}
%
\SetEnumitemKey{ca}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries\sffamily,%
        fill=bbe]{\alph*};
    }%
}
%
\SetEnumitemKey{cA}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries\sffamily,%
        fill=bbe]{\Alph*};
    }%
}
%
\SetEnumitemKey{ci}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries\sffamily,%
        fill=bbe]{\roman*};
    }%
}
%
\SetEnumitemKey{cI}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries\sffamily,%
        fill=bbe]{\Roman*};
    }%
}
%
% squared enumerate
\SetEnumitemKey{s1}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        sharp corners,%
        minimum height=1.25em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries\sffamily,%
        fill=bbe,%
        text width=2ex,%
        align=center]{\arabic*};
    },%
}
%
\SetEnumitemKey{sa}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        sharp corners,%
        minimum height=1.25em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries\sffamily,%
        fill=bbe,%
        text width=2ex,%
        align=center]{\alph*};
    }%
}
%
\SetEnumitemKey{sA}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        rounded corners=1pt,%
        minimum height=1.25em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries\sffamily,%
        fill=bbe,%
        text width=2ex,%
        align=center]{\Alph*};
    }%
}
%
\SetEnumitemKey{si}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        rounded corners=1pt,%
        minimum height=1.25em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries\sffamily,%
        fill=bbe,%
        text width=2ex,%
        align=center]{\roman*};
    }%
}
%
\SetEnumitemKey{sI}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        rounded corners=1pt,%
        minimum height=1.25em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries\sffamily,%
        fill=bbe,%
        text width=2ex,%
        align=center]{\Roman*};
    }%
}
%
% itemize keys
\SetEnumitemKey{f1}{label=\protect\ding{95}}
\SetEnumitemKey{f2}{label=\protect\ding{96}}
\SetEnumitemKey{f3}{label=\protect\ding{118}}
\SetEnumitemKey{f4}{label=\protect\ding{68}}
\SetEnumitemKey{b}{label=\protect\ensuremath{\bullet}}
\SetEnumitemKey{c}{label=\protect\ensuremath{\circ}}
\SetEnumitemKey{d}{label=\protect\ensuremath{\diamond}}
\SetEnumitemKey{t}{label=\protect\ensuremath{\triangleright}}
\SetEnumitemKey{p}{label=\protect\ding{43}}
\SetEnumitemKey{w}{label=\protect\ding{45}}
% styling enumerate
\setlist[enumerate,1]{1}
\setlist[enumerate,2]{a}
\setlist[enumerate,3]{i}
\setlist[enumerate,4]{A}
% styling itemize
\setlist[itemize]{%
	parsep=0pt,%
	topsep=1ex,%
	partopsep=0pt,%
	leftmargin=*,%
	itemsep=.5ex,%
	labelsep=.5ex,
    format=\color{bbe}}
\setlist[itemize,1]{f1}
\setlist[itemize,2]{f2}
\setlist[itemize,3]{f3}
\setlist[itemize,4]{f4}
% sub enumerate
\RequirePackage{tasks}
\settasks{%
	label=\alph*.,%
	label-format=\color{bbe}\bfseries\sffamily,%
	label-offset=0.5ex,%
	label-align=right,%
	label-width=3ex,%
	item-indent=3.5ex,%
	column-sep=2ex,%
	before-skip=0ex,%
	after-skip=0ex,%
	after-item-skip=0.5ex%
}
\NewTasksEnvironment[%
	style=enumerate,%
	label=\alph*.,%
	label-format=\color{bbe}\bfseries\sffamily,%
	label-offset=0.5ex,%
	label-align=right,%
	label-width=3ex,%
	item-indent=3.5ex,%
	column-sep=2ex,%
	before-skip=0ex,%
	after-skip=0ex,%
	after-item-skip=0.5ex]{Enumerate}[\item](2)
\NewTasksEnvironment[%
	style=itemize,
	label=\ding{95},
	label-format=\color{bbe},%
	label-offset=1.45ex,%
	label-align=right,%
	label-width=1ex,%
	item-indent=2.45ex,%
	column-sep=2ex,%
    before-skip=0ex,%
    after-skip=0ex,%
	after-item-skip=0ex]{Itemize}[\item](2)
    %
    \NewTasksEnvironment[%
    style=enumerate,%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        ball color=bbe]{\alph*};
    },%
    label-format=\upshape\small\bfseries\sffamily,%
    label-offset=0.5ex,%
    label-align=right,%
    label-width=3ex,%
    item-indent=3.5ex,%
    column-sep=2ex,%
    before-skip=0ex,%
    after-skip=0ex,%
    after-item-skip=0.5ex]{bEnumerate}[\item](2)
    %
    \NewTasksEnvironment[%
    style=enumerate,%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        fill=bbe]{\alph*};
    },%
    label-format=\upshape\small\bfseries\sffamily,%
    label-offset=0.5ex,%
    label-align=right,%
    label-width=3ex,%
    item-indent=3.5ex,%
    column-sep=2ex,%
    before-skip=0ex,%
    after-skip=0ex,%
    after-item-skip=0.5ex]{cEnumerate}[\item](2)
    %
    \NewTasksEnvironment[%
    style=enumerate,%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        rounded corners=1pt,%
        minimum height=1.25em,%
        inner sep=1pt,%
        text=white,%
        fill=bbe]{\protect\parbox{1.5em}{\protect\centering\alph*}};
    },%
    label-format=\upshape\small\bfseries\sffamily,%
    label-offset=0.5ex,%
    label-align=right,%
    label-width=3ex,%
    item-indent=3.5ex,%
    column-sep=2ex,%
    before-skip=0ex,%
    after-skip=0ex,%
    after-item-skip=0.5ex]{sEnumerate}[\item](2)
    %
% caption
\RequirePackage{caption}
\RequirePackage{subcaption}
\DeclareCaptionFont{bbe}{\color{bbe}}
\captionsetup{%
	font=small,%
	skip=0pt,%
	labelfont={bbe,sf},%
	textfont={bbe,sf},%
	labelsep=period}
\captionsetup[sub]{%
	font=small,%
	skip=0.5ex,%
	labelfont={bbe,sf},%
	textfont={bbe,sf},%
	labelsep=period}
%% Espacio alrededor de figuras flotantes [h] (antes 0pt: quedaban pegadas).
\setlength{\intextsep}{1.5ex}
\allowdisplaybreaks
%% re-define proof environment %%
\renewenvironment{proof}[1][\color{bbe}\itshape\bfseries\sffamily\proofname]{\par
	\pushQED{\qed}%
	\normalfont \topsep2\p@\@plus1\p@\relax
	\trivlist
	\item[\hskip\labelsep
	\color{bbe}\bfseries\sffamily
	#1\@addpunct{.}]\ignorespaces
}{%
	\popQED\endtrivlist\@endpefalse
}
%% re-define quite easy done symbol %%
\def\qedsymbol{\textcolor{bbe}{\ensuremath{\blacksquare}}}
%% paint color for bibiography counter %%
\def\@biblabel#1{\textcolor{bbe}{[#1]}}
%% footnote: el formato va en la marca, no en el contador %%
\def\footnoterule{\kern -3pt\textcolor{bbe}{\hrule width \linewidth height 0.4pt}\kern 2.6pt}
\def\@makefnmark{\hbox{\@textsuperscript{\normalfont\color{bbe}\bfseries\sffamily(\@thefnmark)}}}
%% color por defecto para formulas (sin forzar \displaystyle: eso hacia
%% que fracciones y sumas dentro de una linea de texto se vieran enormes
%% y descuadraran el interlineado del parrafo).
%% Mantiene negras las etiquetas matematicas de las figuras TikZ (cuyo
%% texto es de color bbe). Efecto secundario: una formula dentro de un
%% titulo de seccion tambien queda en negro. Comentar si se prefiere
%% que la matematica herede el color del texto que la rodea.
\everymath{\color{black}}
%% increase base line skip in display formula
\addtolength{\jot}{1pt}
%% prevent book contents from vertical stretching %%
\raggedbottom
\def\preparelabel{Jose David}
\def\preparename{Torres-Riffo}
%% Nombre del curso/apunte mostrado en el pie de pagina.
%% Redefinir en el preambulo con \renewcommand{\cursoactual}{...}
\newcommand{\cursoactual}{Apuntes EDO}
\def\ps@plain{%
	\let\@oddhead\@empty%
	\let\@evenhead\@oddhead%
	\def\@oddfoot{%
		\textcolor{bbe!89!white}{\footnotesize\itshape\preparelabel~\preparename}%
		\hfil\tikz[baseline=-0.8ex]{\node[sharp corners,inner sep=3pt,fill=bbe,text=white,font=\normalsize\bfseries\sffamily,text width=4ex,align=center]{\thepage};}%
		\hfil\textcolor{bbe!89!white}{\footnotesize\itshape \cursoactual}}%
	\def\@evenfoot{%
		\textcolor{bbe!89!white}{\footnotesize\itshape \cursoactual}%
		\hfil\tikz[baseline=-0.8ex]{\node[sharp corners,inner sep=3pt,fill=bbe,text=white,font=\normalsize\bfseries\sffamily,text width=4ex,align=center]{\thepage};}%
		\hfil\textcolor{bbe!89!white}{\footnotesize\itshape\preparelabel~\preparename}%
		}%
	}
%
%% Encabezado en \footnotesize para que capitulo + seccion quepan en una linea.
%% Para titulos muy largos usar \section[titulo corto]{titulo largo}.
\def\ps@bbe{%
	%% marcas sin mayusculas: ocupan menos espacio en el encabezado
	\def\chaptermark##1{\markboth{\ifnum\c@secnumdepth>\m@ne\chaptername\ \thechapter.\ \fi##1}{}}%
	\def\sectionmark##1{\markright{\ifnum\c@secnumdepth>\z@\thesection.\ \fi##1}}%
	\def\@oddhead{%
		\textcolor{bbe!89!white}{\footnotesize\itshape \leftmark}%
		\hfil\textcolor{bbe!89!white}{\footnotesize\itshape \rightmark}}%
	\def\@evenhead{%
		\textcolor{bbe!89!white}{\footnotesize\itshape \rightmark}%
		\hfil\textcolor{bbe!89!white}{\footnotesize\itshape \leftmark}}%
	\def\@oddfoot{%
		\textcolor{bbe!89!white}{\footnotesize\itshape\preparelabel~\preparename}%
		\hfil\tikz[baseline=-0.8ex]{\node[sharp corners,inner sep=3pt,fill=bbe,text=white,font=\normalsize\bfseries\sffamily,text width=4ex,align=center]{\thepage};}%
		\hfil\textcolor{bbe!89!white}{\footnotesize\itshape \cursoactual}}%
	\def\@evenfoot{%
		\textcolor{bbe!89!white}{\footnotesize\itshape \cursoactual}%
		\hfil\tikz[baseline=-0.8ex]{\node[sharp corners,inner sep=3pt,fill=bbe,text=white,font=\normalsize\bfseries\sffamily,text width=4ex,align=center]{\thepage};}%
		\hfil\textcolor{bbe!89!white}{\footnotesize\itshape\preparelabel~\preparename}%
	}%
}
%
\pagestyle{bbe}
%
\def\arraystretch{1.25}
%
\def\baselinestretch{1.2}
%
\RequirePackage{cancel}
\def\CancelColor{\color{bbe}}
%
\endinput