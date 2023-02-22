\version "2.23.82"
\include "../config/include.ily"

\header {
  title = "SLUŽITE BOGU"
  titlex = "Psalam 100,2"
  composer = "Tradicionalna"
  style = ""
  broj = "10"
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
  \time 4/4
  \tempo 4 = 96
  c4 c8 d8 e4 e4 |
  d8 c8 d8 ( e8 ) c4 r4 |
  e4 e8 f8 g4 g4 |
  f8 e8 f8 ( g8 ) e4 r4 \break |
  a4 a8 a8 g4 g4 |
  f8 e8 f8 ( g8 ) e4 r4 |
  c4 c8 ( d8 ) e4 e4 |
  d8 ( c8 ) d8 ( e8 ) c4 r4 | \bar "|."
}

lyricOneZero = \lyricmode {
  Slu -- ži -- te Bo -- gu u ve -- se -- lju. 
  Slu -- ži -- te Bo -- gu u ve -- se -- lju. 
  Slu -- ži -- te Bo -- gu u ve -- se -- lju. 
  Psa -- lam sto -- ti dru -- gi stih. 
}

harme = \chordmode  {
  c1 g2 c c1 g2 c |
  f2 c g c c1 g2 c |
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
