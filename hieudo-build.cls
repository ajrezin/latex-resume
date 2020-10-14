% Intro Options
\ProvidesClass{hieudo-build}[2016/07/26 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=1cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}
\usepackage{fontawesome5}
\pagenumbering{gobble}
\usepackage{datetime2}

% Color definitions
\definecolor{date}{HTML}{000000} 
\definecolor{primary}{HTML}{000000}
\definecolor{headings}{HTML}{0E0E0F}
\definecolor{subheadings}{HTML}{1A1C1E}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary, Path = NiveauGrotesk/, Scale=1.09]{Niveau-Lig.otf}
\newcommand{\custombold}[1]
{\color{subheadings}\fontspec[Path = NiveauGrotesk/]{Niveau-ExtraLight.otf}\selectfont #1 \normalfont}
\linespread{1.1}

% Date format
\DTMnewdatestyle{mylastupdate}{%
  \renewcommand*{\DTMdisplaydate}[4]{\DTMtwodigits{##2}.\DTMtwodigits{##3}.##1}\color{date}\fontspec[Path = NiveauGrotesk/]{Niveau-ExtraLight}\fontsize{10pt}{10pt}\selectfont%
  \renewcommand*{\DTMDisplaydate}{\DTMdisplaydate}%
}

% Name command
\newcommand{\namesection}[2]{
	\hspace{-1.7em}\raggedright{\parbox[t][3em][t]{21em}{\fontspec[Path = NiveauGrotesk/]{Niveau-Bol}\fontsize{50pt}{0cm}\selectfont #1}}
  \hfill
  \hspace{-1.7em}\raggedleft{\parbox[c][3em][c]{13em}{\color{headings}\fontspec[Path = NiveauGrotesk/]{Niveau-Lig}\fontsize{11pt}{14pt}\selectfont #2}}
  \vspace{1em}
}
\titlespacing{\section}{0pt}{0pt}{5pt}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = NiveauGrotesk/]{Niveau-Lig}\fontsize{18pt}{24pt}\selectfont \raggedright\uppercase}{} {0em}{}

% Subeadings command
\titleformat{\subsection}{\color{subheadings}
\fontspec[Path = NiveauGrotesk/]{Niveau-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}
\newcommand{\runsubsection}[1]{\color{subheadings}
\fontspec[Path = NiveauGrotesk/]{Niveau-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont}
\titlespacing{\section}{0pt}{0pt}{5pt}

% Jobtitle command
\newcommand{\workplace}[2]{
\color{subheadings}\raggedright
\fontspec[Path = NiveauGrotesk/]{Niveau-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont
\hfill
\color{subheadings}\raggedleft
\fontspec[Path = NiveauGrotesk/]{Niveau-Reg}\fontsize{12pt}{12pt}\selectfont\bfseries {#2} \normalfont
}
\titlespacing{\section}{0pt}{0pt}{5pt}

% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\scshape\fontspec[Path = NiveauGrotesk/]{Niveau-Reg}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}
\titlespacing{\section}{0pt}{0pt}{3pt}
\newcommand{\note}[1]{\color{subheadings}\raggedright\scshape\fontspec[Path = NiveauGrotesk/]{Niveau-LigIta}\fontsize{9pt}{10pt}\selectfont {#1}\normalfont}

% Positions command
\newcommand{\position}[2]{	\color{subheadings}\raggedright\scshape\fontspec[Path = NiveauGrotesk/]{Niveau-Reg}\fontsize{11pt}{13pt}\selectfont {#1}\normalfont
\hfill
\color{subheadings}\raggedleft\scshape\fontspec[Path = NiveauGrotesk/]{Niveau-Reg}\fontsize{11pt}{13pt}\selectfont {#2\\}\normalfont
}
\titlespacing{\section}{0pt}{0pt}{3pt}

% Location command
\newcommand{\location}[1]{\color{primary}\raggedright\fontspec[Path = NiveauGrotesk/]{Niveau-Med}\fontsize{10pt}{11pt}\selectfont {#1\\} \normalfont}
\titlespacing{\section}{0pt}{0pt}{3pt}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{8pt}}
\newcommand{\smallsectionsep}[0]{\vspace{4pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}