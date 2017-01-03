%%
%% This is file `ucllfilip.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% ucllfilip-src.dtx  (with options: `class')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2012 by Luc Van Eycken <Luc.VanEycken@esat.kuleuven.be>
%% 
%% This file may be distributed and/or modified under the conditions of
%% the LaTeX Project Public License, either version 1.2 of this license
%% or (at your option) any later version.  The latest version of this
%% license is in:
%% 
%%    http://www.latex-project.org/lppl.txt
%% 
%% and version 1.2 or later is part of all distributions of LaTeX version
%% 1999/12/01 or later.
%% 
\NeedsTeXFormat{LaTeX2e}[2001/06/01]
\ProvidesClass{ucllfilip}
    [2015/05/25 v1.8
     KU Leuven engineering master thesis document class]
\def\ucllfilip@cls{ucllfilip}

\def\ucllfilip@error#1{%
  \ClassError\ucllfilip@cls{#1}{Exit, correct this error and rerun.}}

\def\ucllfilip@opt@missingpkg#1#2{\ucllfilip@error{%
    The option `#1' is ignored because\MessageBreak
    it requires the installation of the package `#2'}}

%Hier wordt gekeken of dutch als taal is gekozen.
\def\ucllfilip@ifdutch{\protect\iflanguage{dutch}}

\@ifundefined{l@dutch}{\ucllfilip@error{%
    The language `dutch' is not available.\MessageBreak
    You must install Dutch hyphenation patterns}}{}

\def\ucllfilip@ifand#1{\expandafter\ucllfilip@ifand@ #1\and\@nil}

\def\ucllfilip@ifand@#1\and #2\@nil{%
  \if=\noexpand#2=\expandafter\@secondoftwo\else
    \expandafter\@firstoftwo\fi}

\RequirePackage{keyval}

\newcommand*\setup{%
  \ucllfilip@catcode@setup
  \ucllfilip@setup}

\@onlypreamble\setup
\def\ucllfilip@setup#1{%
	%Hier wordt de family key bepaald
  \setkeys{ucllfilip}{#1}%
  \ucllfilip@uncatcode@setup
  \ucllfilip@do@once@opts}
\def\ucllfilip@catcode@setup{%
	\csname extras\languagename\endcsname
	\ucllfilip@ifdutch{\catcode`\"\active}{}}
\def\ucllfilip@uncatcode@setup{%
	\csname noextras\languagename\endcsname
	\@makeother\"}
\def\ucllfilip@invalidate@key#1#2{%
  \define@key{ucllfilip}{#1}{\ClassWarning\ucllfilip@cls{%
      The key `#1' can only be used #2.\MessageBreak
      It is ignored}}}
\def\ucllfilip@keynovalue#1#2{%
  \define@key{ucllfilip}{#1}[]{%
    \def\@tempa{##1}\ifx\@tempa\@empty\else
      \PackageWarningNoLine\ucllfilip@cls{Value of option `#1' ignored}\fi
    #2}}
\def\ucllfilip@clskeys{}
\def\ucllfilip@clskey#1{%
  \edef\ucllfilip@clskeys{\ucllfilip@clskeys,#1}%
  \define@key{ucllfilip}{#1}}
\def\ucllfilip@clsopt#1{%
  \edef\ucllfilip@clskeys{\ucllfilip@clskeys,#1}%
  \ucllfilip@keynovalue{#1}}
\def\ucllfilip@process@ptions{%
  \@ifundefined{opt@\@currname.\@currext}{}%
   {\begingroup
    \toks@\expandafter\expandafter\expandafter{%
      \csname opt@\@currname.\@currext\endcsname}%
    \edef\CurrentOption{\the\toks@}%
    \toks@{}%
    \@for\CurrentOption:=\CurrentOption\do{%
      \@ifundefined{%
        KV@ucllfilip@\expandafter\ucllfilip@getkey\CurrentOption=\@nil}%
       {\ifx\@unusedoptionlist\@empty
          \global\let\@unusedoptionlist\CurrentOption
        \else
          \expandafter\expandafter\expandafter\gdef
          \expandafter\expandafter\expandafter\@unusedoptionlist
          \expandafter\expandafter\expandafter{%
            \expandafter\@unusedoptionlist
            \expandafter,\CurrentOption}%
        \fi}%
       {\toks@\expandafter{%
          \the\expandafter\toks@\expandafter,\CurrentOption}%
        \expandafter\ucllfilip@update@classoptions\CurrentOption=aa=\@nil
       }}%
    \edef\@tempa{\endgroup
      \noexpand\setkeys{ucllfilip}{\the\toks@}}%
    \@tempa
    \let\CurrentOption\@empty}%
  \@for\@tempa:=\ucllfilip@clskeys\do{%
    \expandafter\ucllfilip@invalidate@key\expandafter{\@tempa}{%
      as a class option}}}
\def\ucllfilip@getkey#1=#2\@nil{#1}
\def\ucllfilip@update@classoptions#1=#2#3=#4\@nil{%
  \def\@tempa{#3}\ifx\@tempa\@empty
    \def\@tempa##1,#1=##2,##3\@nil{##1,##3\@nil}%
    \def\@tempb,##1,\@nil{##1}%
    \xdef\@classoptionslist{\expandafter\expandafter\expandafter\@tempb
      \expandafter\@tempa\expandafter,\@classoptionslist,\@nil}%
  \fi}
\ucllfilip@clskey{master}{\lowercase{\edef\ucllfilip@opt@master{#1}}}
\def\ucllfilip@opt@master{}

%-------------------------------------------------------------------

%als je geen fontsize meegeeft zal standaard 11pt genomen worden
\ucllfilip@clsopt{10pt}{\def\ucllfilip@ptsize{0}}
\ucllfilip@clsopt{11pt}{\def\ucllfilip@ptsize{1}}
\def\ucllfilip@ptsize{1}

%--------------------------------------------------------------

\ucllfilip@clsopt{openright}{\PassOptionsToClass{open}{memoir}}
\ucllfilip@clsopt{openany}{\PassOptionsToClass{openany}{memoir}}
\ucllfilip@clsopt{openleft}{\PassOptionsToClass{openleft}{memoir}}
\ucllfilip@clsopt{oneside}{\PassOptionsToClass{oneside}{memoir}}
\ucllfilip@clsopt{twoside}{\PassOptionsToClass{twoside}{memoir}}
\ucllfilip@clskey{bind}{\setlength\ucllfilip@bind{#1}}
\newdimen\ucllfilip@bind
\ucllfilip@bind\z@
\ucllfilip@clsopt{draft}{\PassOptionsToClass{draft}{memoir}}
\def\ucllfilip@babel@opt{dutch,english}
\ucllfilip@clsopt{dutch}{\def\ucllfilip@language{dutch}}
\ucllfilip@clsopt{english}{\def\ucllfilip@language{english}}
\def\ucllfilip@language{\ucllfilip@master@language}
\ucllfilip@clskey{extralanguage}{%
  \edef\@tempa{{,#1,}{,\ucllfilip@babel@opt,}}\expandafter\in@\@tempa
  \ifin@\else \edef\ucllfilip@babel@opt{#1,\ucllfilip@babel@opt}\fi}
\ucllfilip@clsopt{nomicrotype}{\ucllfilip@microtypefalse}
\newif\ifucllfilip@microtype \ucllfilip@microtypetrue
\ucllfilip@clsopt{fleqn}{\PassOptionsToClass{fleqn}{memoir}}
\gdef\ucllfilip@do@once@opts{}
\def\ucllfilip@add@once@opts#1#2#3{\g@addto@macro\ucllfilip@do@once@opts{%
    \ifx #2\@empty\else
      \ucllfilip@invalidate@key{#1}{once}%
      \def\@tempa{#3\let#2\@empty}%
      \expandafter\@tempa
    \fi}}
\define@key{ucllfilip}{masteroption}{\def\ucllfilip@opt@masteroption{#1}}
\def\ucllfilip@opt@masteroption{}
\def\ucllfilip@master@option{}
\ucllfilip@add@once@opts{masteroption}\ucllfilip@opt@masteroption{%
  \global\let\ucllfilip@master@option\@empty
  \ifx\ucllfilip@master@options@vl\relax
    \ifx\ucllfilip@opt@masteroption\@empty\else
      \ucllfilip@error{%
        The option `masteroption' is ignored because\MessageBreak
        your program disallows a master option on front pages}%
    \fi
  \else
    \@for\@tempa:=\ucllfilip@opt@masteroption\do{%
      \let\@tempc\@tempa
      \expandafter\ucllfilip@handle@mo\expandafter\ucllfilip@master@options
      \expandafter{%
        \expandafter\ucllfilip@add@mo@tempc\expandafter{\@tempa}}%
      \expandafter\g@addto@macro\expandafter\ucllfilip@master@option
        \expandafter{\@tempc,}}%
  \fi}
\def\ucllfilip@add@mo@tempc#1#2#3{%
  \lowercase{\def\@tempa{#1}}\def\@tempb{#2}\ifx\@tempa\@tempb
    \def\@tempc{#3}\fi}
\def\ucllfilip@handle@mo#1#2{%
  \expandafter\@tfor\expandafter\@tempd\expandafter:\expandafter=#1\do{%
    \expandafter\ucllfilip@handle@mo@\@tempd\@nil{#2}}}
\def\ucllfilip@handle@mo@ #1:#2\@nil #3{#3{#1}{#2}}

\RequirePackage[ascii]{inputenc}
\define@key{ucllfilip}{inputenc}{\def\ucllfilip@opt@inputenc{#1}}
\def\ucllfilip@opt@inputenc{}
\ucllfilip@add@once@opts{inputenc}\ucllfilip@opt@inputenc{%
  \inputencoding\ucllfilip@opt@inputenc}

%Hier wordt de key font aangemaakt
\define@key{ucllfilip}{font}{%
  \edef\@tempa{\zap@space#1 \@empty}%
  \expandafter\ucllfilip@set@font\@tempa::\@empty}

\def\ucllfilip@set@font#1:#2:#3\@empty{%
  \expandafter\let\expandafter\@tempa
    \csname ucllfilip@set@font@#1\endcsname
  \ifx\@tempa\relax
    \ucllfilip@error{Font `#1' is ignored because it is an unknown font}%
  \else \@tempa{#2}\fi}

\let\ucllfilip@loadfont@\@empty

\ucllfilip@add@once@opts{font}\ucllfilip@loadfont@{%
  \ucllfilip@loadfont@ \ucllfilip@loadmt}

\def\ucllfilip@set@font@cm#1{\let\ucllfilip@loadfont@\relax}


\def\ucllfilip@set@font@lm#1{%
  \IfFileExists{lmodern.sty}%
   {\def\ucllfilip@loadfont@{%
      \RequirePackage[T1]{fontenc}%
      \RequirePackage{lmodern}}}%
   {\ucllfilip@opt@missingpkg{font=lm}{lm}}}

%font palatino
\def\ucllfilip@set@font@palatino#1{%
  \def\ucllfilip@loadfont@{%
    \RequirePackage[T1]{fontenc}%
    \RequirePackage[#1]{mathpazo}%
    \RequirePackage[scaled=.9]{helvet}}%
  \IfFileExists{lmodern.sty}{%
    \g@addto@macro\ucllfilip@loadfont@{%
      \renewcommand{\ttdefault}{lmtt}}}{}}
  
\def\ucllfilip@set@font@times#1{%
  \def\ucllfilip@loadfont@{%
    \RequirePackage[T1]{fontenc}%
    \RequirePackage[#1]{mathptmx}%
    \RequirePackage[scaled=.9]{helvet}}%
  \IfFileExists{lmodern.sty}{%
    \g@addto@macro\ucllfilip@loadfont@{%
      \renewcommand{\ttdefault}{lmtt}}}{}}

%font utopia
\def\ucllfilip@set@font@utopia#1{%
  \IfFileExists{fourier.sty}%
    {\def\ucllfilip@loadfont@{%
       \RequirePackage[T1]{fontenc}%
       \RequirePackage[#1]{fourier}%
       \RequirePackage[scaled=.9]{helvet}}%
     \IfFileExists{lmodern.sty}{%
       \g@addto@macro\ucllfilip@loadfont@{%
         \renewcommand{\ttdefault}{lmtt}}}{}}%
    {\ucllfilip@opt@missingpkg{font=utopia}{fourier}}}

%------------------------------------------------------------------------

%
% Additional titlepage definitions
%

\define@key{ucllfilip}{title}{\title{#1}}
\def\@title{\ucllfilip@error{No title given}}

\newcommand{\thetitle}{\@title}

\define@key{ucllfilip}{subtitle}{\def\ucllfilip@subtitle{#1}}
\def\ucllfilip@subtitle{}

\define@key{ucllfilip}{author}{\author{#1}}
\def\@author{\ucllfilip@error{No author given}}

\newcommand{\theauthor}{\@author}

\newcommand{\thesubject}{\@title}

\define@key{ucllfilip}{promotor}{%
  \def\@tempa{#1}\ifx\@tempa\@empty\else \def\ucllfilip@promotor{#1}\fi}
\let\KV@ucllfilip@promoter\KV@ucllfilip@promotor
\def\ucllfilip@promotor{\ucllfilip@error{No promoter given}}

\define@key{ucllfilip}{assessor}{\def\ucllfilip@assessor{#1}}
\def\ucllfilip@assessor{}
%\def\ucllfilip@assessor{\ucllfilip@error{No assessor given}}

\define@key{ucllfilip}{assistant}{\def\ucllfilip@assistant{#1}}
\def\ucllfilip@assistant{}
%\def\ucllfilip@assistant{\ucllfilip@error{No assistant given}}

\define@key{ucllfilip}{acyear}{\def\ucllfilip@acyear{#1}}
\def\ucllfilip@acyear{}
\def\ucllfilip@acyear@t{%
  \ifx\ucllfilip@acyear\@empty
    \@tempcnta\year \ifnum\month<10 \advance\@tempcnta\m@ne \fi
    \@tempcntb\@tempcnta \advance\@tempcntb\@ne
    \xdef\ucllfilip@acyear{\the\@tempcnta\space -- \the\@tempcntb}%
  \fi
  \ucllfilip@acyear}

\define@key{ucllfilip}{translatedtitle}{\def\ucllfilip@translatedtitle{#1}}
\def\ucllfilip@translatedtitle{%
  \ucllfilip@error{No translated title available}}
\define@key{ucllfilip}{shortabstract}{\def\ucllfilip@shortabstract{#1}}
\def\ucllfilip@shortabstract{%
  \ucllfilip@error{No short abstract available}}
\define@key{ucllfilip}{udc}{\def\ucllfilip@udc{#1}}
\def\ucllfilip@udc{%
  \ucllfilip@error{UDC number missing}}
\define@key{ucllfilip}{keywords}{\def\ucllfilip@keywords{#1}}
\def\ucllfilip@keywords{}

\newcommand{\thekeywords}{\ucllfilip@keywords}

\define@key{ucllfilip}{articletitle}{\def\ucllfilip@article@title{#1}}
\def\ucllfilip@article@title{}
\ucllfilip@keynovalue{coverpageonly}{\ucllfilip@coverpagetrue}
\newif\ifucllfilip@coverpage
\ucllfilip@keynovalue{frontpagesonly}{\ucllfilip@frontpagestrue}
\newif\ifucllfilip@frontpages
\ucllfilip@keynovalue{filingcard}{\ucllfilip@filingcardtrue}

\newif\ifucllfilip@filingcard
\define@key{ucllfilip}{bindcover}{\ClassWarningNoLine\ucllfilip@cls{%
    Option `bindcover' is no longer supported}}

\def\ucllfilip@def@master#1{\@namedef{ucllfilip@m@#1}}
\newcommand*\ucllfilip@obsolete@master[2][]{%
  \@namedef{ucllfilip@m@#2\if &#1&\else .#1\fi}}
\def\ucllfilip@set@master#1#2#3#4#5#6#7#8#9\@nil{%
  \edef\ucllfilip@master@language{%
    \if N\@car#1\@nil dutch\else english\fi}%
  \ucllfilip@facnum=#2\relax
  \if F\@car#3\@nil \ucllfilip@filingcardtrue \fi
  \def\ucllfilip@master@colors{#4}%
  \def\ucllfilip@master@title{#5}%
  \def\ucllfilip@copyright@contact{#6}%
  \ifx\ucllfilip@copyright@contact\@empty
    \protected@edef\ucllfilip@copyright@contact{\ucllfilip@fac@copyright}%
  \fi
  \@ifnextchar[\ucllfilip@set@mo{\ucllfilip@set@mo[]}#7\@nil{#8}}
\def\ucllfilip@set@mo[#1]#2\@nil#3{%
  \def\ucllfilip@master@options@vl{#1}%
  \def\ucllfilip@master@options@v{-}%
  \ifx\ucllfilip@master@options@vl\ucllfilip@master@options@v
    \let\ucllfilip@master@options@vl\relax
    \let\ucllfilip@master@options@v\@empty
    \let\ucllfilip@master@options@o\@empty
    \let\ucllfilip@master@options\@empty
  \else
    \def\ucllfilip@master@options@v{#2}%
    \def\ucllfilip@master@options@o{#3}%
    \def\ucllfilip@master@options{#2#3}%
  \fi}
\def\ucllfilip@getcolors#1:#2:#3\@nil{%
  \edef\ucllfilip@color@bg{\if !#1!{white}\else [cmyk]{#1}\fi}%
  \edef\ucllfilip@color@fg{\if !#2!{black}\else [cmyk]{#2}\fi}}
\let\ucllfilip@div@master\@gobble
\let\ucllfilip@end@master@def\relax
\newcount\ucllfilip@facnum
\ucllfilip@facnum\@ne
\def\ucllfilip@fac@name{%
  \ifcase\ucllfilip@facnum \or
    Facult\ucllfilip@ifdutch{eit Ingenieurswetenschappen}%
                         {y of Engineering}%
  \fi}
%-------------------------------------------------------------------------------------------------
%hier wordt logo ingeladen
\def\ucllfilip@kulfac@logo#1{%
%\edef\@tempa{[#1]{logokul\ifnum\ucllfilip@facnum=\@ne eng\fi}}%
  \edef\@tempa{[#1]{logoucll}}%
  \expandafter\includegraphics\@tempa}
\def\ucllfilip@fac@logo#1{}
%-------------------------------------------------------------------------------------------------

% is de tekst die wordt geschreven op de 2de pagina op copyright in 1ste alina in de laatste zin.
\def\ucllfilip@fac@copyright{%
 % \ifnum\ucllfilip@facnum >\@ne
%    \ucllfilip@ifdutch d{th}e \MakeLowercase{\noexpand\ucllfilip@paa@0}::%
%  \else
    de Faculteit Ingenieurswetenschappen, Kasteelpark Arenberg 1 bus 2200,
    B-3001 Heverlee:+32-16-321350:%
 % \fi
}

%-------------------------------------------------------------------------------------------------
\def\ucllfilip@paa@#1{%
  \ifcase #1%
%  Docent\ucllfilip@ifand\ucllfilip@promotor{\ucllfilip@ifdutch{oren}{ers}}{}%
   Promot\ucllfilip@ifand\ucllfilip@promotor{\ucllfilip@ifdutch{oren}{ers}}{}%
  \or
    Assessor\ucllfilip@ifand\ucllfilip@assessor{\ucllfilip@ifdutch{en}s}{}%
  \or
    \ucllfilip@ifdutch{Begeleider}{Assistant}% 
    \ucllfilip@ifand\ucllfilip@assistant{s}{}%
  \fi}

%-------------------------------------------------------------------------------------------------
%hier wordt de configuration file ingeladen

\providecommand*\ucllfilip@cfgfile{ucllfilip.cfg}
\ifx\ucllfilip@cfgfile\@empty\else
  \InputIfFileExists\ucllfilip@cfgfile{}{\ucllfilip@error{%
      Configuration file `\ucllfilip@cfgfile' is not installed}}
\fi

%-------------------------------------------------------------------------------------------------
\ucllfilip@process@ptions
\ifx\ucllfilip@opt@master\@empty
  \ucllfilip@error{Required option `master' missing}\fi
\expandafter\let\expandafter\@tempa
  \csname ucllfilip@m@\ucllfilip@opt@master \endcsname
\ifx\@tempa\relax
  \ucllfilip@error{%
    Unsupported value `\ucllfilip@opt@master' for option `master'}\fi
\expandafter\ucllfilip@set@master\@tempa{}{}{}\@nil
\@ifundefined{ucllfilip@cfgfile@m}{%
  \edef\ucllfilip@cfgfile@m{ucllfilip-\ucllfilip@opt@master.cfg}}{}
\ifx\ucllfilip@cfgfile@m\@empty\else
  \InputIfFileExists\ucllfilip@cfgfile@m{}{}
\fi
\ifx\ucllfilip@master@options@vl\@empty\else
  \ifx\ucllfilip@master@options@vl\relax\else
    \def\ucllfilip@check@masteroption{%
      \ifx\ucllfilip@master@option\@empty
        \ucllfilip@error{%
          When using option `master=\ucllfilip@opt@master',\MessageBreak
          you should specify at least one master option.\MessageBreak
          Allowed master options are: \ucllfilip@master@options@vl}%
      \fi}
    \AtBeginDocument{\ucllfilip@check@masteroption}
  \fi
\fi


%-------------------------------------------------------------------------------------------------
%hier wordt de memoir klasse ingeladen
\LoadClass[a4paper,1\ucllfilip@ptsize pt]{memoir}[2004/04/05]

%-------------------------------------------------------------------------------------------------
\def\and{\\}
\let\andnext\and


%-------------------------------------------------------------------------------------------------
%hier wordt de talen package ingeladen

\RequirePackage[\ucllfilip@babel@opt]{babel}


\addto\captionsenglish{%
  \def\appendixtocname{Appendices}%
  \def\appendixpagename{Appendices}%
  \def\figurerefname{Figure}%
  \def\tablerefname{Table}%
  \def\pagerefname{page}%
  \def\partrefname{Part~}%
  \def\chapterrefname{Chapter~}%
  \def\listfiguresandtablesname{List of Figures and Tables}}

\begingroup
  \catcode`\"\active
  \@firstofone{\endgroup
    \addto\captionsdutch{%
      \def\appendixtocname{B"ylagen}%
      \def\appendixpagename{B"ylagen}%
      \def\figurerefname{figuur}%
      \def\tablerefname{tabel}%
      \def\pagerefname{pagina}%
      \def\partrefname{Deel~}%
      \def\chapterrefname{hoofdstuk~}%
      \def\listfiguresandtablesname{L"yst van figuren en tabellen}}}
  
\AtBeginDocument{\gdef\latinencoding{T1}%
  \ifx\cf@encoding\latinencoding\else \xdef\latinencoding{OT1}\fi}
\edef\ucllfilip@language{\ucllfilip@language}
\expandafter\main@language\expandafter{\ucllfilip@language}
\def\ucllfilip@selectmasterlanguage{%
  \expandafter\selectlanguage\expandafter{\ucllfilip@master@language}}
\def\ucllfilip@selecttextlanguage{%
  \expandafter\selectlanguage\expandafter{\ucllfilip@language}}

%-------------------------------------------------------------------------------------------------
\RequirePackage{graphicx}
%\RequirePackage[draft]{graphicx}
\RequirePackage{color}
\def\ucllfilip@loadmt{%
  \@ifpackageloaded{microtype}{}{\RequirePackage{microtype}}}

\AtBeginDocument{\ucllfilip@loadmt}
\ifucllfilip@microtype
  \ifpdf
    \IfFileExists{microtype.sty}{}{%
      \def\@tempa{the package is not installed}%
      \ucllfilip@microtypefalse}
  \else
    \def\@tempa{you're not using pdflatex in pdf mode}
    \ucllfilip@microtypefalse
  \fi
\else
  \def\@tempa{option `nomicrotype' was used}
\fi
\ifucllfilip@microtype\else
  \let\ucllfilip@loadmt\relax
  \ClassWarningNoLine\ucllfilip@cls{%
    Package `microtype' not used because\MessageBreak
    \@tempa}%
\fi

%-------------------------------------------------------------------------------------------------
\def\ucllfilip@check@hyperref{%
  \@ifpackageloaded{hyperref}{%
    \@ifundefined{HyPsd@babel@dutch}{}{%
      \addto\HyPsd@babel@dutch{%
        \declare@shorthand{dutch}{"y}{ij}%
        \declare@shorthand{dutch}{"Y}{IJ}}}%
    \@ifpackageloaded{memhfixc}{}{%
      \RequirePackage{memhfixc}}%
    \providecommand*\theHsubfigure{\theHfigure.\arabic{subfigure}}%
    \providecommand*\theHsubtable{\theHtable.\arabic{subtable}}%
  }{}}

%-------------------------------------------------------------------------------------------------
\AtBeginDocument{\ucllfilip@check@hyperref}

%-------------------------------------------------------------------------------------------------

%A4 papier ==> 210mm width x 297 mm height
%A4 papier ==> 8.3in x 11.7 in
\RequirePackage[T1,OT1]{fontenc}
\ucllfilip@do@once@opts
\ifcase\ucllfilip@ptsize\relax
%als je 10pt kiest
  %\textwidth=10cm
  \textwidth=13cm

  \textheight=20cm
\or
%als je 11pt kiest
%standaardwaarde is \textwidth = 14cm
  %\textwidth=14cm
  \textwidth=18cm
  
  %standaardwaarde is \textheight=215mm
  %\textheight=215mm
  \textheight=250mm
\fi

%-------------------------------------------------------------------------------------------------
\spinemargin\paperwidth
\advance\spinemargin -\textwidth
\foremargin\spinemargin
\advance\foremargin -\ucllfilip@bind\relax
\foremargin .\if@twoside 6\else 5\fi\foremargin
\advance\spinemargin -\foremargin
\marginparwidth=56pt

\marginparsep=1.2\onelineskip
\marginparpush=\onelineskip
\setulmargins{*}{*}{1.2}
\setheaderspaces{*}{\headsep}{*}
\checkthelayout\fixthelayout
\AtBeginDocument{\checkandfixthelayout}
\renewcommand*\clearforchapter{%
  \if@mainmatter
    \if@openleft
      \cleartoverso
    \else
      \if@openright
        \cleartorecto
       \else
        \clearpage
       \fi
    \fi
  \else
    \clearpage
    
  \fi}

%------------------------------------------------------------------

%\RequirePackage{fancyhdr}

% Page style
%\makeoddhead{ruled}{}{}{%
 % \if@mainmatter \rightmark \else \scshape\leftmark \fi}
 
 \makeoddhead{ruled}{}{}{%
 	\if@mainmatter 
 	\rightmark 
 	\else 
 	\scshape\leftmark 
 	\fi}
 
% \makeevenfoot{ruled}{Pagina \thepage \hspace{1pt} van \thelastpage}{}{Filip Vanden Eynde~\copyright~2016}
% \makeoddfoot{ruled}{Filip Vanden Eynde~\copyright~2016}{}{Pagina \thepage \hspace{1pt} van \thelastpage}

%\makeevenfoot{hstylei}{hlefti}{hcenteri}{hrighti}
 \makeevenfoot{ruled}{%
 	\if@mainmatter
 	Pagina \thepage \hspace{1pt} van \thelastpage
	 \else
	 \thepage 
	\fi}
{}
{%
	\if@mainmatter
	Filip Vanden Eynde~\copyright~2016
	\else
	\fi
}

%\makeoddfoot{hstylei}{hlefti}{hcenteri}{hrighti}
\makeoddfoot{ruled}{%
	\if@mainmatter 
	Filip Vanden Eynde~\copyright~2016 
	\else 
	\fi}
{}
{%
	\if@mainmatter 
	Pagina \thepage \hspace{1pt} van \thelastpage 
	\else
	\thepage 
	\fi
}

%\makefootrule{ruled}{\textwidth}{0.5pt}{0pt} 

%\makefootrule{hstylei}{hwidthi}{hthicknessi}{hskipi}
%\makefootrule{ruled}{\textwidth}{\normalrulethickness}
%\makefootrule{ruled}{\textwidth}{\footruleheight}{\footruleskip}
%\makefootrule{ruled}{\textwidth}{\normalrulethickness}{}


%\makefootrule{ruled}{\if@mainmatter	\textwidth	\else	\fi}{\normalrulethickness}{\footruleskip}
%\newcommand\teststyle{%
%\if@mainmatter
%\makefootrule{ruled}{\textwidth}{\normalrulethickness}{\footruleskip}
%\else
%\makefootrule{ruled}{0pt}{0pt}{\footruleskip}
%\fi
%}
%\if@mainmatter
%\makefootrule{ruled}{\textwidth}{\normalrulethickness}{\footruleskip}
%\else
%\makefootrule{ruled}{0pt}{0pt}
%\fi

\pagestyle{ruled}

\copypagestyle{ruledfilip}{ruled}
\makefootrule{ruledfilip}{\textwidth}{0.5pt}{0pt} 

\makepagestyle{nohead}
\makeevenfoot{nohead}{\thepage}{}{}
\makeoddfoot{nohead}{}{}{\thepage}
\aliaspagestyle{chapter}{nohead}
\maxsecnumdepth{subsection}
\maxtocdepth{section}
\def\tocheadstart{\clearforchapter\chapterheadstart}
\def\lofheadstart{\clearforchapter\chapterheadstart}
\def\lotheadstart{\clearforchapter\chapterheadstart}

\makepagestyle{chapternohead}
 \makeevenfoot{chapternohead}{%
	\if@mainmatter
	Pagina \thepage \hspace{1pt} van \thelastpage
	\else
	\thepage 
	\fi}
{}
{%
	\if@mainmatter
	Filip Vanden Eynde~\copyright~2016
	\else
	\fi
}

\makeoddfoot{chapternohead}{%
	\if@mainmatter 
	Filip Vanden Eynde~\copyright~2016 
	\else 
	\fi}
{}
{%
	\if@mainmatter 
	Pagina \thepage \hspace{1pt} van \thelastpage 
	\else
	\thepage 
	\fi
}
%\footrule
%\makefootrule{arg1}{arg2}{arg3}{arg4}
%\renewcommand{\footrulewidth}{1.4pt} % Rule under the footer
%\makefootrule{arg1}{arg2}{arg3}{arg4}
%\makefootrule{nohead}{\textwidth}{0.5pt}{0pt} 
%nOTE THE EXTRA footskip parameter 
%for testing only



\makefootrule{chapternohead}{\textwidth}{0.5pt}{0pt} 





\makepagestyle{filip}
%\makeevenhead{filip}{left}{center}{right}
%\makeoddhead{filip}{left}{center}{right}
\makeevenfoot{filip}{Pagina \thepage \hspace{1pt} van \thelastpage}{}{Filip Vanden Eynde~\copyright~2016}
\makeoddfoot{filip}{Filip Vanden Eynde~\copyright~2016}{}{Pagina \thepage \hspace{1pt} van \thelastpage}
%\makeheadrule{filip}{width}{thickness} %To add lines for the header
\makefootrule{filip}{\textwidth}{\normalrulethickness}{} %To add lines to the footer
%\normalrulethickness

%-------------------------------------------------------------------------------------------------
\newcommand*\listoffiguresandtables{%
  \chapter\listfiguresandtablesname
  \def\@lofmaketitle{\section*\listfigurename}%
  \listoffigures*%
  \let\listoffigures\relax
  \def\@lotmaketitle{\section*\listtablename}%
  \listoftables*%
  \let\listoftables\relax}

\newcommand*\listfiguresandtablesname{List of Figures and Tables}

%-------------------------------------------------------------------------------------------------
\setrmarg{2.55em plus1fil}
\setlength{\cftbeforechapterskip}{1ex \@plus\p@}
\captionnamefont{\scshape}
\captiontitlefont{\upshape}
\captionstyle[\centering]{\centerlastline}
\DeclareFontFamily{T1}{ucllfilipfpf}{}
\DeclareFontShape{T1}{ucllfilipfpf}{m}{n}{<->phvr8t}{}
\DeclareFontShape{T1}{ucllfilipfpf}{m}{sc}{<->phvrc8t}{}
\DeclareFontShape{T1}{ucllfilipfpf}{m}{sl}{<->phvro8t}{}
\DeclareFontShape{T1}{ucllfilipfpf}{m}{it}{<->ssub*ucllfilipfpf/m/sl}{}
\DeclareFontShape{T1}{ucllfilipfpf}{bx}{n}{<->phvb8t}{}
\DeclareFontShape{T1}{ucllfilipfpf}{bx}{sc}{<->phvbc8t}{}
\DeclareFontShape{T1}{ucllfilipfpf}{bx}{sl}{<->phvbo8t}{}
\DeclareFontShape{T1}{ucllfilipfpf}{bx}{it}{<->ssub*ucllfilipfpf/bx/it}{}
\DeclareFontShape{T1}{ucllfilipfpf}{b}{n}{<->ssub*ucllfilipfpf/bx/n}{}
\DeclareFontShape{T1}{ucllfilipfpf}{b}{sc}{<->ssub*ucllfilipfpf/bx/sc}{}
\DeclareFontShape{T1}{ucllfilipfpf}{b}{sl}{<->ssub*ucllfilipfpf/bx/sl}{}
\DeclareFontShape{T1}{ucllfilipfpf}{b}{it}{<->ssub*ucllfilipfpf/bx/sl}{}
\def\ucllfilip@fpf@title{\fontsize\@xxvpt{30}\selectfont}
\def\ucllfilip@fpf@subtitle{\fontsize\@xviipt{22}\selectfont}
\def\ucllfilip@fpf@author{\fontsize\@xivpt{18}\selectfont}
\def\ucllfilip@fpf@txthead{\fontsize\@xiipt{14.5}%
  \fontseries\bfdefault\selectfont}
\def\ucllfilip@fpf@text{\fontsize\@xiipt{14}\selectfont}
\def\ucllfilip@fpf@banner{\fontsize\@xivpt{18}%
  \fontseries\bfdefault\selectfont}

%-------------------------------------------------------------------------------------------------
%tekst op voorpagina
\def\ucllfilip@master@text{Eindwerk
  \ucllfilip@ifdutch
    {voorgedragen tot het behalen van mijn eindcijfer voor het vak Beleggen anders bekeken voor het diploma}%
    {submitted for the degree of}
  \ucllfilip@master@title
  \ifx\ucllfilip@master@option\@empty\else
    \def\@tempb{, }%
    \@for\@tempa:=\ucllfilip@master@option\do{%
      \ifx\@tempa\@empty\else
        \@tempb \def\@tempb{ \ucllfilip@ifdutch{en}{and} }%
        \@tempa
      \fi}%
  \fi}

%-------------------------------------------------------------------------------------------------
\def\ucllfilip@paa@fp#1{%
  \begingroup
    \ifcase #1\relax
      \let\@tempa\ucllfilip@promotor
    \or
      \let\@tempa\ucllfilip@assessor
    \or
      \let\@tempa\ucllfilip@assistant
    \else
       \let\@tempa\@empty
    \fi
    \ifx\@tempa\@empty\else
      \medskip \begingroup
        \ucllfilip@fpf@txthead \ucllfilip@paa@{#1}:\vskip 2\p@
      \endgroup \@tempa \par
    \fi
  \endgroup}

%%dit is de voorpagina
\def\ucllfilip@frontpage{\clearpage
  \setcounter{page}\m@ne
  \thispagestyle{empty}% 
  %%zorgt ervoor dat er geen paginanummer te zien is.
  \@tempdima\uppermargin \advance\@tempdima\topskip%
  %%schuift de margin naar boven
  \advance\@tempdima\baselineskip \advance\@tempdima -1cm%
  \null \vskip -\@tempdima
%% The margins are 16\,mm, resulting in a text width of 178\,mm on A4 paper.
  \hbox to\hsize{%
    \@tempdima 2cm\advance\@tempdima -\spinemargin \hskip\@tempdima %
    %%zorgt voor de zijwaartse marge
    \vbox to\z@{\hsize 17cm\relax
      \lineskip\z@skip \parskip\z@skip
      \@ifundefined{microtypesetup}{}{\microtypesetup{activate=false}}%
      \fontencoding{T1}\fontfamily{ucllfilipfpf}\ucllfilip@fpf@text
      \raggedright \ucllfilip@selectmasterlanguage
      \noindent \hskip-1cm%
      \vbox to3cm{\hbox{\ucllfilip@kulfac@logo{width=76mm}}\vss}\hfill
      \vbox to3cm{\hbox{\ucllfilip@fac@logo{height=2cm}}\vss}%
 %     \vbox to3cm{\hbox{\ucllfilip@kulfac@logo{width=56mm}}\vss}\hfill
%      \vbox to3cm{\hbox{\ucllfilip@fac@logo{height=2cm}}\vss}%
      \hskip-1cm\hskip\z@skip
      \vskip 40\p@ \@plus 2fill\relax
      \begingroup \ucllfilip@selecttextlanguage
        \ucllfilip@fpf@title \@title \par
        \ifx\ucllfilip@subtitle\@empty\else
          \vskip 1em\relax
          \ucllfilip@fpf@subtitle \ucllfilip@subtitle \par
        \fi
      \endgroup
      \vskip 40\p@ \@plus .3fill%
      \begingroup \ucllfilip@fpf@author \@author
        \vskip 30\p@ \@plus 1fill\endgroup
      \noindent \hfill \vbox{\hsize .5\textwidth \raggedleft
%        \ucllfilip@master@text \par
%        \ucllfilip@paa@fp0%
        \ifucllfilip@coverpage\else
%          \ucllfilip@paa@fp1%
%          \ucllfilip@paa@fp2%
        \fi}%
      \vskip 20\p@ \@plus 2fill\relax
      \centering \ucllfilip@fpf@banner
      \textmd{Academi\ucllfilip@ifdutch{ejaar}{c year} \ucllfilip@acyear@t}%
      \vskip 15\p@
      \ifucllfilip@coverpage
        \ifx\ucllfilip@master@colors\@empty\else
          \vskip 15\p@
          \centerline{\fboxsep\z@
            \expandafter\ucllfilip@getcolors\ucllfilip@master@colors::\@nil
            \expandafter\colorbox\ucllfilip@color@bg{%
              \vbox to 15mm{\hsize 19cm\vss
                \expandafter\textcolor\ucllfilip@color@fg{%
                  \ucllfilip@master@title}\vss}}}%
        \fi
      \fi
      \vskip -277mm}%
    \hss}%
  \clearpage}
\let\maketitle\relax
\def\ucllfilip@contact@print{%
  \expandafter\ucllfilip@contact@scan\ucllfilip@copyright@contact:::\@nil}
\def\ucllfilip@contact@scan#1:#2:#3:#4\@nil{#1%
  \def\@tempa{#2}\def\@tempb{#3}%
  \ifx\@tempa\@empty
    \ifx\@tempb\@empty\else , \texttt{#3}\fi
  \else
    , #2%
    \ifx\@tempb\@empty\else
      \space o\ucllfilip@ifdutch{f via e-}{r by e}mail \texttt{#3}%
    \fi
  \fi}

%copyright tekst voor engelse taal
\def\ucllfilip@copyright@english{\selectlanguage{english}%
  Without written permission of the \MakeLowercase{\ucllfilip@paa@0} and
  the author\ucllfilip@ifand\@author{s}{} it is forbidden to reproduce
  or adapt in any form or by any means any part of this publication.
  Requests for obtaining the right to reproduce or utilize parts of
  this publication should be addressed to \ucllfilip@contact@print.\par
  A written permission of the \MakeLowercase{\ucllfilip@paa@0} is also
  required to use the methods, products, schematics and programs
  described in this work for industrial or commercial use, and for
  submitting this publication in scientific contests.\par}

%copyright tekst voor nederlandse taal
\def\ucllfilip@copyright@dutch{\selectlanguage{dutch}%
  Zonder voorafgaande schriftelijke toestemming van zowel de
  \MakeLowercase{\ucllfilip@paa@0} als de auteur\ucllfilip@ifand\@author{s}{}
  is overnemen, kopi\"eren, gebruiken of realiseren van deze uitgave
  of gedeelten ervan verboden. Voor aanvragen tot of informatie
  i.v.m.\ het overnemen en/of gebruik en/of realisatie van gedeelten
  uit deze publicatie, wend u tot \ucllfilip@contact@print.\par
  Voorafgaande schriftelijke toestemming van de
  %\MakeLowercase{\ucllfilip@paa@0} is eveneens vereist voor het
  %aanwenden van de in deze masterproef beschreven (originele)
%  methoden, producten, schakelingen en programma's voor industrieel
 % of commercieel nut en voor de inzending van deze publicatie ter
  %deelname aan wetenschappelijke prijzen of wedstrijden.\par}
    \MakeLowercase{\ucllfilip@paa@0} is eveneens vereist voor het
  aanwenden van de in deze portfolio beschreven (originele)
  methoden en producten voor de inzending van deze publicatie ter
  deelname aan wetenschappelijke prijzen of wedstrijden.\par}


%hier wordt de copyright pagina aangemaakt.
\def\ucllfilip@copyrightpage{\clearpage
  \thispagestyle{empty}%zorgt ervoor dat er geen paginanummer te zien is op deze pagina
  \null \vfill
  \begingroup
    \parindent\z@ \parskip .5\baselineskip \sloppypar
    \copyright\space Copyright UCLL~Leuven\vskip\baselineskip
    \expandafter\let\expandafter\@tempa
      \csname ucllfilip@copyright@\ucllfilip@master@language\endcsname
    \expandafter\let\expandafter\@tempb
      \csname ucllfilip@copyright@\ucllfilip@language\endcsname
    \ifx\@tempa\@tempb \@tempa \else
      \ifx\@tempb\ucllfilip@copyright@english
        \let\@tempb\@tempa \let\@tempa\ucllfilip@copyright@english \fi
      \def\@tempc{\@tempa \vskip\baselineskip}%
      \expandafter\@tempc\@tempb
    \fi
  \endgroup
\clearpage}

%einde copyrightpagina

%laatste pagina fiche pagina

\makepagestyle{filingcard}
\makeheadrule{filingcard}{\textwidth}{\normalrulethickness}
\makeevenhead{filingcard}{\ucllfilip@selectmasterlanguage
  UCLL~Leuven \ucllfilip@fac@name}{}{\ucllfilip@acyear@t} %dit is voor de laatste pagina van fiche masterproef voor een even pagina
\makeoddhead{filingcard}{\ucllfilip@selectmasterlanguage
  UCLL~Leuven \ucllfilip@fac@name}{}{\ucllfilip@acyear@t} %dit is voor de laatste pagina van fiche masterproef voor een oneven pagina
\def\ucllfilip@filingcard{\clearforchapter
  \thispagestyle{filingcard}%
  \begingroup
    \ucllfilip@selectmasterlanguage
    \begingroup
      \centering \Large
      \ucllfilip@ifdutch{Fiche portfolio}{Master thesis filing card}%
      \vskip 1em
    \endgroup
    \begingroup
      \parskip\medskipamount
      \@hangfrom{\textit{%
%          Student\ucllfilip@ifand\@author{\ucllfilip@ifdutch{en}s}}{}: }%
                Student\ucllfilip@ifand\@author}{}: }%
        \@author\par
      \@hangfrom{\textit{Tit\ucllfilip@ifdutch{el}{le}}: }%
        {\ucllfilip@selecttextlanguage \@title}\par
      \ifx\ucllfilip@translatedtitle\@empty\else
        \@hangfrom{\textit{%
            \ucllfilip@ifdutch
             {\ucllfilip@selecttextlanguage
              \ucllfilip@ifdutch{Engel}{Nederland}se titel}%
             {\ucllfilip@selecttextlanguage
              \ucllfilip@ifdutch{English}{Dutch} title}}: }%
        \ucllfilip@translatedtitle\par
      \fi
      \noindent \textit{UDC}: \ucllfilip@udc\par
      \ifx\ucllfilip@keywords\@empty\else
        \@hangfrom{\textit{Keywords}: }\ucllfilip@keywords\par
      \fi
      \ifx\ucllfilip@article@title\@empty\else
        \@hangfrom{\textit{%
            \ucllfilip@ifdutch{Titel van het artikel}{Article title}}: }%
          \ucllfilip@article@title\par
      \fi
      \vskip\medskipamount
    \endgroup
    \noindent \textit{\ucllfilip@ifdutch{Korte inhoud}{Abstract}}:%
    \vskip 2\p@
    \begingroup \ucllfilip@selecttextlanguage
      \noindent\ignorespaces \ucllfilip@shortabstract
    \endgroup
    \vfill \parskip\smallskipamount
    \begingroup \raggedright
      \noindent \ucllfilip@master@text \par
    \endgroup
    \@hangfrom{\textit{\ucllfilip@paa@0}: }\ucllfilip@promotor\par   
    %\@hangfrom{\textit{\ucllfilip@paa@1}: }\ucllfilip@assessor\par
    %\@hangfrom{\textit{\ucllfilip@paa@2}: }\ucllfilip@assistant\par
  \endgroup
  \clearpage}
\g@addto@macro\document{\ucllfilip@frontpage
  \ifucllfilip@coverpage
    \def\@tempa{\end{document}}%
  \else
    \ucllfilip@copyrightpage
    \ifucllfilip@frontpages
      \def\@tempa{\end{document}}%
    \else
      \let\@tempa\frontmatter
    \fi
  \fi
  \@tempa}
\def\ucllfilip@error@mm{\ucllfilip@error{%
    You forgot to use \string\mainmatter}}
\expandafter\def\expandafter\mainmatter\expandafter{%
  \expandafter\let\expandafter\ucllfilip@error@mm\expandafter\relax
  \mainmatter}
\AtEndDocument{%
  \ifucllfilip@coverpage\else
    \ifucllfilip@frontpages\else \ucllfilip@error@mm \fi
    \ifucllfilip@filingcard
      \if@mainmatter \backmatter \fi
      \ucllfilip@filingcard
    \fi
  \fi}


%-------------------------------------------------------------------------------


\newenvironment{preface}[1][\@author]%
 {\chapter\prefacename
  \def\ucllfilip@preface@{#1}}%
 {\par
  \ifx\ucllfilip@preface@\@empty\else
    \bigskip \raggedleft \itshape \ucllfilip@preface@
  \fi
  \vfill \clearpage}

\renewenvironment{abstract}%
 {\chapter\abstractname}%
 {\clearpage}
\newenvironment{abstract*}[1][\ucllfilip@master@language]%
 {\expandafter\selectlanguage\expandafter{#1}%
  \abstract}%
 {\endabstract}


%-------------------------------------------------------------------------------



\endinput
%%
%% End of file `ucllfilip.cls'.
