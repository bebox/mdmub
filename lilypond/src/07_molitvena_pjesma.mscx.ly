\version "2.23.82"
\include "../config/include.ily"

\header {
  title = "MOLITVENA PJESMA"
  titlex = "The Prayer Song"
  composer = ""
  style = ""
  broj = "7"
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
  \key c \major
  \time 4/4
  \tempo 4 = 106
  c4 d4 e4 c4 |
  c4 d4 e4 c4 |
  e4 f4 g2 |
  e4 f4 g2 |
  g8 a8 g8 f8 e4 c4 |
  g'8 a8 g8 f8 e4 c4 |
  c4 g4 c2 |
  c4 g4 c2 | \bar "|."
}

lyricOneZero = \lyricmode {
  Ja se mo -- lim, 
  ja se mo -- lim, 
  Bi -- lo kad, 
  bi -- lo gdje. 
  Bo -- ga hva -- lim, 
  sla -- vim, 
  Ka -- žem da ga vo -- lim, 
  Sva -- ki dan, 
  sva -- ki dan. 
}

lyricOneOne = \lyricmode {
  Ja se mo -- lim, 
  ja se mo -- lim, 
  Bi -- lo kad, 
  bi -- lo gdje. 
  Pri -- znam kad po -- grije -- šim, 
  Bog će mi o -- pro -- stit, 
  Sva -- ki dan, 
  sva -- ki dan. 
}

lyricOneTwo = \lyricmode {
  Ja se mo -- lim, 
  ja se mo -- lim, 
  Bi -- lo kad, 
  bi -- lo gdje. 
  Mo -- lim se za dru -- ge, 
  Tre -- ba -- ju te, 
  Bo -- že, 
  Sva -- ki dan, 
  sva -- ki dan. 
}

harme = \chordmode  {
  c1 c c c
  c c c c
}

\score {
    <<
    \new ChordNames { \jazzChords \harme }
    \new Staff {
        \new Voice = "lead" { \staffOne }
    }
    \new Lyrics \lyricsto "lead" { \lyricOneZero }
    \new Lyrics \lyricsto "lead" { \lyricOneOne }
    \new Lyrics \lyricsto "lead" { \lyricOneTwo }
    >>
}
