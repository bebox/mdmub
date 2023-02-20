\version "2.23.82"
\include "../config/include.ily"

\header {
  title = "TROJSTVO SU"
  titlex = "Mala djeca mogu upoznati Boga"
  composer = ""
  style = ""
  broj = "8"
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: Name, Album } }
}

\paper {
  \aFourL
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
  %page-breaking = #ly:one-page-breaking
  %last-bottom-spacing.minimum-distance = #8
}

staffOne = \relative c' {
  \clef treble
  \key c \major
  \time 4/4
  \tempo 4 = 106
  c4 \( d4 \) e4 \( c4 \) |
  c4 \( d4 \) e4 \( c4 \) |
  e4 \( f4 \) g4 \( g4 \) |
  e4 \( f4 \) g4 \( g4 \) |
  g8 \( a8 \) g8 \( f8 \) e4 c4 |
  g'8 \( a8 \) g8 \( f8 \) e4 c4 |
  c4 g4 c2 |
  c4 g4 c2 | \bar "|."
}

lyricOneZero = \lyricmode {
  Bog __ _ O -- tac, 
  Bog __ _ O -- tac, 
  Bog __ _ Sin. __ _
  Bog __ _ Sin, __ _ 
  Bog __ _ Duh __ _ Sve -- ti, 
  Bog __ _ Duh __ _ Sve -- ti, 
  Troj -- stvo su, 
  Troj -- stvo su. 
}

lyricOneOne = \lyricmode {
  Sla -- vi O -- ca, 
  Sla -- vi O -- ca, 
  Sla -- vi Si -- na, 
  Sla -- vi Si -- na, 
  Sla -- vi Du -- ha Sve -- tog, 
  Sla -- vi Du -- ha Sve -- tog, 
  Troj -- stvo su, 
  Troj -- stvo su. 
}

harme = \chordmode  {
}

\score {
    <<
    \new ChordNames { \jazzChords \harme }
    \new Staff {
        \new Voice = "lead" { \staffOne }
    }
    \new Lyrics \lyricsto "lead" { \lyricOneZero }
    \new Lyrics \lyricsto "lead" { \lyricOneOne }
    >>
}
