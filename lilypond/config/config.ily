\version "2.23.12"
%%%%%%%%%%%%
%% CONFIG %%-------------------------------------------------------------------------
%%%%%%%%%%%%

%#(set-default-paper-size "a5")	%format papira

myStaffSize = #23
#(set-global-staff-size myStaffSize)
\paper {
  #(define fonts (make-pango-font-tree "JohnSans Text Pro" "Lilypond JohnSans White Pro" "Lilypond JohnSans Medium Pro" (/ myStaffSize 22)))
  markup-system-spacing.padding = #7
  indent = 0
  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 10\mm
  %paper-width = 138 \mm
  %paper-height = 214 \mm
  top-markup-spacing.padding = #0
  markup-system-spacing.padding = #5
  markup-system-spacing.stretchability = #5
  score-system-spacing.padding = #5
  %last-bottom-spacing.padding = #5
  score-markup-spacing.padding = #5
  top-system-spacing.padding = #5

  markup-markup-spacing.padding = #1
  %markup-markup-spacing.stretchability = #0
  %markup-markup-spacing.minimum-distance = #0
  %markup-markup-spacing.basic-distance = #0

  system-system-spacing.padding = #3
  %system-system-spacing.minimum-distance = #20
  %system-system-spacing.basic-distance = #25
  system-system-spacing.stretchability = #0
  score-system-spacing.stretchability = #5
  print-page-number = ##f
  last-bottom-spacing.minimum-distance = #0
  score-markup-spacing.stretchability = #0
  score-markup-spacing.padding = #5

  %first-page-number = #16
  %print-first-page-number = ##t
  %auto-first-page-number = ##t
  %ragged-last-bottom = ##t
  %annotate-spacing = ##t

  %oddHeaderMarkup = \markup { \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #16 \brojPjesme }
  %oddFooterMarkup = \markup { \fill-line { \center-column { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 \copyright \override #'(font-name . "JohnSans Medium Pro") \brojStraniceLijevo}}}
  %evenFooterMarkup = \markup {\fill-line { \override #'(font-name . "JohnSans Medium Pro") \brojStraniceDesno }}

  %size A4 which is 210 × 297 mm
  %  left-margin = 20 \mm %10mm
  line-width = 170 \mm %paper-width - 20mm
  bottom-margin = 12 \mm
  oddHeaderMarkup = \markup \teeny \unless \on-first-page {
    \vspace #2
    \fill-line {
      \unless \on-first-page-of-part {
        \italic \fromproperty #'header:title
        \fromproperty #'header:composer
      }
      %\fromproperty #'page:page-number-string
    }
  }
  evenHeaderMarkup = \markup \teeny \unless #on-first-page {
    \vspace #2
    \fill-line {
      \unless \on-first-page-of-part {
        \override #'(font-name . "JohnSans White Pro Italic") \fromproperty #'header:title
        \override #'(font-name . "JohnSans White Pro") \fromproperty #'header:composer
      }
      %\fromproperty #'page:page-number-string
    }
  }

  %  oddFooterMarkup = \markup {
  %    \on-the-fly #part-last-page \teeny \italic
  %    \fill-line {
  %      \tagline \concat { \AcquisitionDate \hspace #1 \Revision \hspace #1 \Formerly }
  %    }
  %  }
  %  evenFooterMarkup = \markup {
  %   \on-the-fly #part-last-page \teeny \italic
  %    \fill-line {
  %      \tagline \concat { \AcquisitionDate \hspace #1 \Revision \hspace #1 \Formerly }
  %    }
  %  }
}


%%%%%%%%%%%%%%%%
%% STAFF SIZE %% --------------------------------------------------------------------
%%%%%%%%%%%%%%%%

%myStaffSize = #18
%#(set-global-staff-size myStaffSize)
%#(set-default-paper-size "a5")	%format papira

%%%%%%%%%%%%%%%%%%%%%%%%%
%% USER DEF. FUNCTIONS %%------------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%

%eliam zuta
%crvena = 1.000 zelena = 0.804 plava = 0.173
%eliam narancasta
crvena = 0.980 zelena = 0.635 plava = 0.122

%BREATHEMOJ
\layout {
  \context {
    \Voice
    %\override BreathingSign.font-name = #"Helvetica"			%font za zarez
    \override BreathingSign.font-size = #8				%velicina fonta za zarez
    \override BreathingSign.text = \markup { \raise #0.2 "," }	%stavi zarez
    %\override BreathingSign.color = #blue				%boja zareza
    %narančasta eliam boja
    \override BreathingSign.color = #(rgb-color crvena zelena plava)
    %crvena eliam boja
    %\override BreathingSign.color = #(rgb-color crvena zelena plava)
  }

  \context {
    \Score rehearsalMarkFormatter = #format-mark-box-alphabet			%box oko broja
    %\Score markFormatter = #format-mark-circle-numbers			%krug oko broja
    \override RehearsalMark.self-alignment-X = #CENTER		%pozicija broja na zarez
    %\override RehearsalMark.color = #blue				%boja rehearsal marka
    \override RehearsalMark.color = #(rgb-color crvena zelena plava)
  }
}

breathemoj = {
  %\override Score.RehearsalMark.extra-spacing-width = #'(0 . 0)
  %\override Score.RehearsalMark.extra-spacing-height = #'(-inf.0 . +inf.0) 
  %\once \override Score.RehearsalMark.X-offset = #0.05
  %\once \override Score.RehearsalMark.Y-offset = #-1.5
  %\once \override Score.RehearsalMark.outside-staff-priority = #1
  %\override Score.RehearsalMark.break-align-symbols = #'(breathing-sign)
  %\override Score.RehearsalMark.break-align-symbols = #'(breathing-sign)
  %\mark \default
  %\breathe
  \noBreak
  \once \override Score.RehearsalMark.Y-offset = #0.1
  %\once \override Staff.BarLine #'extra-spacing-width = #'(-5 . 3)
  \once \override Staff.BarLine.extra-spacing-width = #'(0 . 0)
  \once \override Staff.BarLine.color = #(rgb-color crvena zelena plava)
  \once \override Staff.BarLine.bar-extent = #'(1.5 . 2.5)
  \bar "|"
  %\mark \default
}

markMoj = {
  %\override Score.RehearsalMark.extra-spacing-width = #'(0 . 0)
  %\override Score.RehearsalMark.extra-spacing-height = #'(-inf.0 . +inf.0) 
  %\once \override Score.RehearsalMark.X-offset = #0.05
  %\once \override Score.RehearsalMark.extra-spacing-height = #0
  %\once \override Score.RehearsalMark.outside-staff-priority = #1
  %\override Score.RehearsalMark.break-align-symbols = #'(breathing-sign)
  %\override Score.RehearsalMark.break-align-symbols = #'(breathing-sign)
  %\mark \default
  %\breathe
  %\noBreak
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \once \override Score.RehearsalMark.Y-offset = #0.16
  %\once \override Staff.BarLine #'extra-spacing-width = #'(-5 . 3)
  \once \override Staff.BarLine.extra-spacing-width = #'(0 . 1.2)
  %\once \override Staff.BarLine #'color = #red
  %\once \override Staff.BarLine.bar-extent = #'(1.5 . 2.5)
  \bar "||"
  \mark \default
}

markMojCenter = {
  %\override Score.RehearsalMark.extra-spacing-width = #'(0 . 0)
  %\override Score.RehearsalMark.extra-spacing-height = #'(-inf.0 . +inf.0) 
  %\once \override Score.RehearsalMark.X-offset = #0.05
  %\once \override Score.RehearsalMark.extra-spacing-height = #0
  %\once \override Score.RehearsalMark.outside-staff-priority = #1
  %\override Score.RehearsalMark.break-align-symbols = #'(breathing-sign)
  %\override Score.RehearsalMark.break-align-symbols = #'(breathing-sign)
  %\mark \default
  %\breathe
  %\noBreak
  \once \override Score.RehearsalMark.self-alignment-X = #CENTER
  %\once \override Score.RehearsalMark.Y-offset = #0.16
  %\once \override Staff.BarLine #'extra-spacing-width = #'(-5 . 3)
  \once \override Staff.BarLine.extra-spacing-width = #'(0 . 1.2)
  %\once \override Staff.BarLine #'color = #red
  %\once \override Staff.BarLine.bar-extent = #'(1.5 . 2.5)
  \bar "||"
  \mark \default
}

markMojPraz = {
  %\override Score.RehearsalMark.extra-spacing-width = #'(0 . 0)
  %\override Score.RehearsalMark.extra-spacing-height = #'(-inf.0 . +inf.0) 
  %\once \override Score.RehearsalMark.X-offset = #0.05
  %\once \override Score.RehearsalMark.extra-spacing-height = #0
  %\once \override Score.RehearsalMark.outside-staff-priority = #1
  %\override Score.RehearsalMark.break-align-symbols = #'(breathing-sign)
  %\override Score.RehearsalMark.break-align-symbols = #'(breathing-sign)
  %\mark \default
  %\breathe
  %\noBreak
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \once \override Score.RehearsalMark.Y-offset = #0.16
  %\once \override Staff.BarLine #'extra-spacing-width = #'(-5 . 3)
  \once \override Staff.BarLine.extra-spacing-width = #'(0 . 1.2)
  %\once \override Staff.BarLine #'color = #red
  %\once \override Staff.BarLine.bar-extent = #'(1.5 . 2.5)
  \bar ""
  \mark \default
}

markMojPon = {
  %\override Score.RehearsalMark.extra-spacing-width = #'(0 . 0)
  %\override Score.RehearsalMark.extra-spacing-height = #'(-inf.0 . +inf.0) 
  %\once \override Score.RehearsalMark.X-offset = #0.05
  %\once \override Score.RehearsalMark.extra-spacing-height = #0
  %\once \override Score.RehearsalMark.outside-staff-priority = #1
  %\override Score.RehearsalMark.break-align-symbols = #'(breathing-sign)
  %\override Score.RehearsalMark.break-align-symbols = #'(breathing-sign)
  %\mark \default
  %\breathe
  %\noBreak
  \once \override Score.RehearsalMark.self-alignment-X = #CENTER
  %\once \override Score.RehearsalMark.Y-offset = #0.16
  %\once \override Staff.BarLine #'extra-spacing-width = #'(-5 . 3)
  \once \override Staff.BarLine.extra-spacing-width = #'(0 . 1.2)
  %\once \override Staff.BarLine #'color = #red
  %\once \override Staff.BarLine.bar-extent = #'(1.5 . 2.5)
  \bar ":|."
  \mark \default
}

markMojPonn = {
  %\override Score.RehearsalMark.extra-spacing-width = #'(0 . 0)
  %\override Score.RehearsalMark.extra-spacing-height = #'(-inf.0 . +inf.0) 
  %\once \override Score.RehearsalMark.X-offset = #0.05
  %\once \override Score.RehearsalMark.extra-spacing-height = #0
  %\once \override Score.RehearsalMark.outside-staff-priority = #1
  %\override Score.RehearsalMark.break-align-symbols = #'(breathing-sign)
  %\override Score.RehearsalMark.break-align-symbols = #'(breathing-sign)
  %\mark \default
  %\breathe
  %\noBreak
  \once \override Score.RehearsalMark.self-alignment-X = #CENTER
  %\once \override Score.RehearsalMark.Y-offset = #2
  %\once \override Staff.BarLine #'extra-spacing-width = #'(-5 . 3)
  \once \override Staff.BarLine.extra-spacing-width = #'(0 . 1.2)
  %\once \override Staff.BarLine #'color = #red
  %\once \override Staff.BarLine.bar-extent = #'(1.5 . 2.5)
  \bar ".|:"
  \mark \default
}

markMojPonRight = {
  %\override Score.RehearsalMark.extra-spacing-width = #'(0 . 0)
  %\override Score.RehearsalMark.extra-spacing-height = #'(-inf.0 . +inf.0) 
  %\once \override Score.RehearsalMark.X-offset = #0.05
  %\once \override Score.RehearsalMark.extra-spacing-height = #0
  %\once \override Score.RehearsalMark.outside-staff-priority = #1
  %\override Score.RehearsalMark.break-align-symbols = #'(breathing-sign)
  %\override Score.RehearsalMark.break-align-symbols = #'(breathing-sign)
  %\mark \default
  %\breathe
  %\noBreak
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \once \override Score.RehearsalMark.Y-offset = #0.16
  %\once \override Staff.BarLine #'extra-spacing-width = #'(-5 . 3)
  \once \override Staff.BarLine.extra-spacing-width = #'(0 . 1.2)
  %\once \override Staff.BarLine #'color = #red
  %\once \override Staff.BarLine.bar-extent = #'(1.5 . 2.5)
  \bar ":|."
  \mark \default
}

markMojPoc = {
  %\override Score.RehearsalMark.extra-spacing-width = #'(0 . 0)
  %\override Score.RehearsalMark.extra-spacing-height = #'(-inf.0 . +inf.0) 
  %\once \override Score.RehearsalMark.outside-staff-priority = #1
  \once \override Score.RehearsalMark.X-offset = #5
  %\once \override Score.RehearsalMark.self-alignment-X = #-0.8
  %\once \override Score.RehearsalMark.extra-spacing-height = #0
  %\override Score.RehearsalMark.break-align-symbols = #'(breathing-sign)
  %\override Score.RehearsalMark.break-align-symbols = #'(breathing-sign)
  %\mark \default
  %\breathe
  %\noBreak
  \once \override Score.RehearsalMark.Y-offset = #3.8
  %\once \override Staff.BarLine #'extra-spacing-width = #'(-5 . 3)
  %\once \override Staff.BarLine.extra-spacing-width = #'(0 . 2)
  %\once \override Staff.BarLine #'color = #red
  %\once \override Staff.BarLine.bar-extent = #'(1.5 . 2.5)
  %\bar "||"
  \mark \default
}
%LEFT
left = { \once \override LyricText.X-offset = #-2.8 }                 % \left "S to" -- bom                                                                                           %snipet 737

%MARK DEFAULT I LYRICS FONT SIZE
\layout { 
  \context {
    \Score rehearsalMarkFormatter = #format-mark-box-alphabet
    %\override RehearsalMark = #format-mark-box-alphabet
    %\Score markFormatter = #format-mark-circle-numbers
    \override RehearsalMark.self-alignment-X = #CENTER
    %\override RehearsalMark.color = #blue
    \override RehearsalMark.color = #(rgb-color crvena zelena plava)
    %\override StaffSymbol.thickness = #0.5
    %\override Stem.thickness = #2.5
    %\override Stem.thickness = #10
    %\override StaffSymbol.ledger-line-thickness = #'(0.2 . 0.2)
  }
  \context {
    \Lyrics
    \override LyricText.font-size = #0
    \override LyricText.font-name = "JohnSans White Pro"
  } 
}

%%%%%%%%%%%%
%% HEADER %% ------------------------------------------------------------------------
%%%%%%%%%%%%

#(define-markup-command (when-property layout props symbol markp) (symbol? markup?)
   (if (chain-assoc-get symbol props)
       (interpret-markup layout props markp)
       empty-stencil))

aFourL = \paper {
  bookTitleMarkup = \markup {
    \override #'(baseline-skip . 4.5) %raznak između redova naslova

    \fill-line { %rasiri po liniji u stupce na rubove
      \line { %stvori lijevu grupu stupaca
        \column %prvi lijevi stupac
        { \vspace #1.5 %pomiče znak prema dole
          { \override #'(font-name . "JohnSans Medium Pro") \override #'(font-size . 13) \with-color #(rgb-color crvena zelena plava) \fromproperty #'header:broj } }
        \hspace #2 %pomiče slova u desno od znaka
        \left-column %drugi lijevi stupac s lijevim poravnavanjem
        { \when-property #'header:title {
          \override #'(font-name . "JohnSans Medium Pro") \override #'(font-size . 4) { \fromproperty #'header:title }
          }
          \when-property #'header:titlex {
            \override #'(font-name . "JohnSans White Pro Italic") \override #'(font-size . 4) { \fromproperty #'header:titlex }
          }
        }
      }

      \right-column { %stvori desni stupac 
        \when-property #'header:composer {
          \override #'(font-name . "JohnSans White Pro") \override #'(font-size . 1.5) \with-color #black { \fromproperty #'header:composer } }
        \line { %stvori novu liniju unutar donjeg dijela stupca da dobimo odnos 1:n
          \override #'(font-name . "JohnSans White Pro") \override #'(font-size . 1.5) {
            \when-property #'header:bpm {
              { \fromproperty #'header:bpm }
              { "BPM" "|" }
            }
            \when-property #'header:style {
              \with-color #black   
              { \fromproperty #'header:style }
            }
          }
        }
      }

    }
  }
}

%Broj desno
aFourR = \paper {
  bookTitleMarkup = \markup {
    \override #'(baseline-skip . 4.5) %raznak između redova naslova

    \fill-line { %rasiri po liniji u stupce na rubove

      \left-column {%drugi lijevi stupac s lijevim poravnavanjem
        \when-property #'header:composer {
          \override #'(font-name . "JohnSans White Pro") \override #'(font-size . 1.5) \with-color #black { \fromproperty #'header:composer } }
        \line { %stvori novu liniju unutar donjeg dijela stupca da dobimo odnos 1:n
          \override #'(font-name . "JohnSans White Pro") \override #'(font-size . 1.5) {
            %\when-property #'header:bpm {
            %  { \fromproperty #'header:bpm }
            %  { "BPM" "|" }
            %}
            \when-property #'header:style {
              \with-color #black   
              { \fromproperty #'header:style }
            }
          }
        }
      }
      
      

      \line { %stvori lijevu grupu stupaca

        \right-column { %stvori desni stupac 
          { \when-property #'header:title {
            \override #'(font-name . "JohnSans Medium Pro") \override #'(font-size . 4) { \fromproperty #'header:title }
            }
            \when-property #'header:titlex {
              \override #'(font-name . "JohnSans White Pro Italic") \override #'(font-size . 4) { \fromproperty #'header:titlex }
            }
          }
        
        }
        \hspace #2 %pomiče slova u desno od znaka
        \column %prvi lijevi stupac
        
        { \vspace #1.5 %pomiče znak prema dole
          { \override #'(font-name . "JohnSans Medium Pro") \override #'(font-size . 13) \with-color #(rgb-color crvena zelena plava) \fromproperty #'header:broj } }

      }

    }
  }
}

\header {
  copyright = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Creative Commons—Attribution-ShareAlike 4.0 | Eliam 2022 | Dravska 8, Pušćine } }
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Tekst i glazba: Tobi Wörner } }
  tagline = ""
}
