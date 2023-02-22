\version "2.23.82"
\include "../config/include.ily"

\header {
  title = "VJERUJEM U PISMO"
  titlex = "I Believe the Bible"
  composer = "Hubert Mitchell"
  style = ""
  broj = "3"
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { © 2001 Child Evangelism Fellowship Inc. Sva prava pridržana. } }
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
  \time 4/4
  \tempo 4 = 92
  \partial 8
  h8 |
  e8. e16 e8 e8 cis8 h8 r8 e8 |
  gis8. gis16 gis8 gis8 fis8 e8 r8 gis8 |
  h8. h16 h8 h8 cis8 h8 e,8 fis8 |
  gis4 fis4 e2 | \bar "|."
}

lyricOneZero = \lyricmode {
  _ Vje -- ru -- jem u Pi -- smo, 
  _ vje -- ru -- jem u Pi -- smo. 
  _ Vje -- ru -- jem da Bi -- bli -- ja je Bo -- žja riječ. 
}

lyricOneOne = \lyricmode {
  _ Vje -- ru -- jem u Kri -- sta, 
  _ vje -- ru -- jem u Kri -- sta. 
  _ Vje -- ru -- jem da I -- sus Krist je Bo -- žji Sin. 
}

lyricOneTwo = \lyricmode {
  _ Ti i ja smo gre -- šni, 
  _ ti i ja smo gre -- šni. 
  _ Ti i ja smo Bo -- ga ra -- ža -- lo -- sti -- li. 
}

lyricOneThree = \lyricmode {
  Za gre -- šni -- ke Krist u -- mre, 
  za gre -- šni -- ke Krist u -- mre. 
  Za gre -- šni -- ke Krist u -- mre, 
  u -- mre za me -- ne. 
}

lyricOneFour = \lyricmode {
  _ I -- sus Krist u -- skr -- snu, 
  _ I -- sus Krist u -- skr -- snu. 
  _ I -- sus Krist u -- skr -- snu, 
  za me u -- skr -- snu. 
}

lyricOneFive = \lyricmode {
  _ Ho -- ćeš li Ga pri -- mit? 
  _ Ho -- ćeš li ga pri -- mit? 
  _ Ho -- ćeš li Ga pri -- mit, 
  da -- nas spa -- sit' se? 
}

harme = \chordmode  {
  s8 | e1 e |
  e2 a2 | h2 e2 |
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
    \new Lyrics \lyricsto "lead" { \lyricOneThree }
    \new Lyrics \lyricsto "lead" { \lyricOneFour }
    \new Lyrics \lyricsto "lead" { \lyricOneFive }
    >>
}
