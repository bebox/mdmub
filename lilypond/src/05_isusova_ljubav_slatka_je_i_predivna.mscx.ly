\version "2.23.82"
\include "../config/include.ily"

\header {
  title = "ISUSOVA LJUBAV SLATKA JE I DIVNA"
  titlex = "Jesus’ Love is Sweet and Wonderful"
  composer = ""
  style = ""
  broj = "5"
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: Name, Album } }
}

\paper {
  \aFourR
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
  %page-breaking = #ly:one-page-breaking
  %last-bottom-spacing.minimum-distance = #8
}

staffOne = \relative c' {
  \clef treble
  \key e \major
  \once \override Score.MetronomeMark.Y-offset = #3
  \once \override Score.MetronomeMark.break-align-symbols = #'(time-signature)
  \time 4/4
  \tempo 4 = 118
  
  \markMoj
  gis'4 gis4 e4 h4 |
  gis'4 gis8 h8 ~ h8 a8 gis4 |
  fis4 fis4 dis4 h4 |
  fis'4 fis8 a8 ~ a8 gis8 fis4 | \break
  gis4 gis4 e4 h4 |
  gis'4 gis8 h8 ~ h8 a8 gis4 |
  h4 h4 a8 gis8 fis4 |
  e2 r2 \bar "||" \break |
  
  \markMoj
  gis2 e2 |
  gis4 gis8 h8 \( ~ h8 a8 \) gis4 |
  fis2 dis2 |
  fis4 fis8 a8 \( ~ a8 gis8 \) fis4 |
  gis2 e2 |
  gis4 gis8 h8 ~ h8 a8 gis4 | \break
  h4 h4 a8 gis8 fis4 |
  e2 r2 | \bar "|."
}

lyricOneZero = \lyricmode {
  Lju -- bav Kri -- sta sla -- tka, 
  pre -- div -- na. 
  Lju -- bav Kri -- sta sla -- tka, 
  pre -- div -- na. 
  Lju -- bav Kri -- sta sla -- tka, 
  pre -- div -- na. 
  O, 
  o, 
  di -- vna lju -- bav! 
  Vi -- ša od pla -- ni _ -- na, 
  Du -- blja od svih mo -- _ ra, 
  Ši -- ra i od sve -- mi -- ra O, 
  o, di -- vna lju -- bav! 
}

harme = \chordmode  {
  e1 e h h |
  e1 e h e |
  e1 e h h e e |
  h1 e
}

\score {
    <<
    \new ChordNames { \jazzChords \harme }
    \new Staff {
        \new Voice = "lead" { \staffOne }
    }
    \new Lyrics \lyricsto "lead" { \lyricOneZero }
    >>
}
