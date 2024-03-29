% Dr. Geoff Boeing - academiccv class
% Copyright 2018 Geoff Boeing
% Email: gboeing@berkeley.edu
% Web: http://geoffboeing.com/

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{academiccv}[2018/02/08 LaTeX class to make an Academic CV]

\LoadClass[12pt,letterpaper]{report}

\RequirePackage[T1]{fontenc} % output T1 font encoding (8-bit) so accented characters are a single glyph
\RequirePackage[utf8]{inputenc} % allow input of utf-8 encoded characters
\RequirePackage[strict,autostyle]{csquotes} % smart and nestable quote marks
\RequirePackage[USenglish]{babel} % automatically regionalize hyphens, quote marks, etc
\RequirePackage{microtype} % improves text appearance with kerning, etc
\RequirePackage{datetime} % enable formatting of date output
\RequirePackage{tabto} % make nice tabbing
\RequirePackage{hyperref} % enable hyperlinks and pdf metadata
\RequirePackage{geometry} % manually set page margins
\RequirePackage{enumitem} % enumerate with [resume] option
\RequirePackage{titlesec} % allow custom section fonts

% what is your name?
\newcommand{\myname}{Luis Guillermo Natera Orozco}

% define a default font face and set it as the body font
\RequirePackage{crimson} % document's serif font
\RequirePackage{helvet}  % document's sans serif font

% define how far to tab for list items with left-aligned date - different font faces need different widths
\newcommand{\listtabwidth}{1.75cm}

% set name font to title the document
\newcommand{\namefont}[1]{{\normalfont\bfseries\Huge{#1}}}

% set section heading fonts and before/after spacing
\SetTracking{encoding=*}{50}
\titleformat{\section}{\sffamily\small\bfseries\lsstyle\uppercase}{}{}{}{}
\titlespacing{\section}{0pt}{24pt plus 4pt minus 2pt}{12pt plus 2pt minus 2pt}

% set subsection heading fonts and before/after spacing
\titleformat{\subsection}{\sffamily\small\bfseries}{}{}{}{}
\titlespacing{\subsection}{0pt}{12pt plus 4pt minus 2pt}{8pt plus 2pt minus 2pt}

% set page margins
\geometry{
  body={6.5in, 9.0in},
  left=1.0in,
  top=1.0in
}

% prevent paragraph indentation
\setlength\parindent{0em}

% define space between list items
\newcommand{\listitemspace}{0.2em}

% make unordered lists without bullets and use compact spacing
\renewenvironment{itemize}{
  \begin{list}{}{
      \setlength{\leftmargin}{0em}
      \setlength{\parskip}{0em}
      \setlength{\itemsep}{\listitemspace}
      \setlength{\parsep}{\listitemspace}
    }
}{
  \end{list}
}

% make tabbed lists so content is left-aligned next to years
\TabPositions{\listtabwidth}
\newlist{tablist}{description}{3}
\setlist[tablist]{leftmargin=\listtabwidth,
                  labelindent=0em,
                  topsep=0em,
                  partopsep=0em,
                  itemsep=\listitemspace,
                  parsep=\listitemspace,
                  font=\normalfont}

% print the month and year only when using \today
\newdateformat{monthyeardate}{\monthname[\THEMONTH] \THEYEAR}

% define hyperlink appearance and metadata for pdf properties
\hypersetup{
  colorlinks = true,
  urlcolor = black,
  pdfauthor = {\myname},
  pdfkeywords = {Networks, Urban Networks, Complexity},
  pdftitle = {\myname: Curriculum Vitae},
  pdfsubject = {Curriculum Vitae},
  pdfpagemode = UseNone
}