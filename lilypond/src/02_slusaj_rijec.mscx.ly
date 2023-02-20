\version "2.23.82"
\include "../config/include.ily"

\header {
  title = "SLUŠAJ RIJEČ"
  titlex = "Hear God's Word"
  composer = "Harry D. Clarke."
  style = ""
  broj = "2"
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
  \key d \major
  \time 4/4
  \tempo 4 = 118
  \partial 4
  a4 |
  
  \markMojCenter
  d4 d4 d4 e8 \( e8 \) |
  fis8 fis8 fis8 e8 fis4 r4 |
  e8 e8 e8 d8 e4 r4 |
  d8 d8 d8 h8 a4 a4 |
  d4 d4 d4 e8 \( e8 \) |
  fis8 fis8 fis8 e8 fis4 g8 e8 \break |
  d2 cis2 |
  d2 r4 fis8 g8 \bar "||" |
  
  \markMojCenter
  a2 gis2 |
  a2. fis8 a8 |
  d2 h2 |
  a2. a,4 \bar "||" \break |
  
  \mark \markup { \box \bold C }
  d4 d4 d4 e8 \( e8 \) |
  fis8 fis8 fis8 e8 fis4 g8 e8 |
  d2 cis2 |
  d2. r4 | \bar "|."
}

lyricOneZero = \lyricmode {
  _ Slu -- šaj Riječ i __ _ mo -- li sva -- ki dan, 
  Mo -- li sva -- ki dan, 
  mo -- li sva -- ki dan. __
  _ Slu -- šaj Riječ i __ _ mo -- li sva -- ki dan, 
  ta -- da ra -- sti ćeš. 
  Ta -- da ra -- sti ćeš, 
  ta -- da ra -- sti ćeš. 
  _ Slu -- šaj Riječ i __ _ mo -- li sva -- ki dan, 
  ta -- da ra -- sti ćeš. 
}

lyricOneOne = \lyricmode {
  Go -- vo -- ri Riječ i __ _ mo -- li sva -- ki dan, 
  Mo -- li sva -- ki dan, 
  mo -- li sva -- ki dan. 
  Go -- vo -- ri Riječ i __ _ mo -- li sva -- ki dan, 
  ta -- da ra -- sti ćeš. 
  Ta -- da ra -- sti ćeš, 
  ta -- da ra -- sti ćeš. 
  Go -- vo -- ri Riječ i __ _ mo -- li sva -- ki dan, 
  ta -- da ra -- sti ćeš. 
}

lyricOneTwo = \lyricmode {
  _ Či -- taj Bi -- bli -- ju, 
  mo -- li sva -- ki dan, 
  Mo -- li sva -- ki dan, 
  mo -- li sva -- ki dan. __
  _ Či -- taj Bi -- bli -- ju, 
  mo -- li sva -- ki dan, 
  ta -- da ra -- sti ćeš. 
  Ta -- da ra -- sti ćeš, 
  ta -- da ra -- sti ćeš. 
  _ Či -- taj Bi -- bli -- ju, 
  mo -- li sva -- ki dan, 
  ta -- da ra -- sti ćeš. 
}

harme = \chordmode  {
  s4 |
  d1 d a1 |
  d1 d d2. a4 |
  a1 d | d1 d g2/h g d1 |
  d1 d2. a4 a1 d1 |
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
