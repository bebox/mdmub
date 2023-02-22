\version "2.23.82"
\include "../config/include.ily"

\header {
  title = "BOG ME JE STVORIO"
  titlex = "God Made Me"
  composer = "Violet Whittaker"
  style = ""
  broj = "1"
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { © 1985 Child Evangelism Fellowship Inc. Sva prava pridržana. } }
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
  \key d \major
  \time 4/4
  \once \override Score.MetronomeMark.Y-offset = #3
  \once \override Score.MetronomeMark.break-align-symbols = #'(time-signature)
  %\once \override Score.MetronomeMark.self-alignment-X = #-0.1
  \tempo 4 = 112
  
  \repeat segno 2 {
    \markMoj
    fis4 a,4 fis'2 |
    g4 h,4 g'2 |
    fis4 a,4 d4 g4 |
    fis4 e4 d2 \once \override TextScript.extra-offset = #'( 2 . -3 ) \fine \bar "|." \break |
  
    \markMoj
    d4 d8 e8 fis4 d4 |
    h4 h8 d8 g2 |
    cis,4 cis8 d8 e4 cis4 |
    d4 d8 h8 a2 |
    d4 d8 e8 fis4 d4 |
    h4 h8 d8 g4 h,4 |
    cis4 cis8 h8 a4 g'4 |
    fis4 e4 d2 \bar "||" |
  }
}

lyricOneZero = \lyricmode {
  Bog me je stvo -- ri -- o. 
  Sre -- tan sam što stvo -- ren sam! 
  Bog stvo -- ri li -- ce, 
  Bog stvo -- ri nos Bog stvo -- ri no -- ge da ho -- dam bos. 
  Bog stvo -- ri gla -- vu, 
  Bog stvo -- ri vrat. 
  I Bog stvo -- ri glas da pje -- vam sad. 
}

harme = \chordmode  {
  d1 g1 d2 g2 a2 d2 |
  d1 g1 a1 d1 |
  d1 g1 a1 a2:7 d2 |
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
