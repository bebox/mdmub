\version "2.23.82"
\include "../config/include.ily"

\header {
  title = "RECI SVIMA SAD, RECI ISTINU"
  titlex = "Tell the Story True"
  composer = "Shirley Person"
  style = ""
  broj = "6"
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { © 2000 Hal Leonard Corp. Osigurana međunarodna autorska prava. Sva prava
pridržana. Korišteno s dopuštenjem. } }
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
  \tempo 4 = 98
  c4 c4 c8 d8 e4 |
  e8 d8 e8 f8 g4 r4 |
  c8 c8 g8 g8 e8 e8 c8 c8 |
  g'8 f8 e8 d8 c4 r4 \bar ":|." |
}

lyricOneZero = \lyricmode {
  Re -- ci svi -- ma sad, 
  re -- ci i -- sti -- nu: 
  Bog je stvo -- ri -- o baš sve, 
  On bri -- ne za te -- be. 
}

lyricOneOne = \lyricmode {
  Re -- ci svi -- ma sad, 
  re -- ci i -- sti -- nu: 
  I -- sus Krist je Bo -- žji Sin, 
  Za te -- be u -- skr -- snu. 
}

harme = \chordmode  {
  c1 c c g2 c
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
