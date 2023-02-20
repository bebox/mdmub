\version "2.23.82"
\include "../config/include.ily"

\header {
  title = "JA POZNAJEM BOGA"
  titlex = "I Can Know God"
  composer = "James L. Swindle"
  style = "Shirley Person"
  broj = "4"
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
  \key b \major
  \time 6/8
  \tempo 4 = 66
  \partial 8

  \mark \markup { \box \bold A }
  f16 \( f16 \) |
  f8 d8 c8 b8 b8 b8 |
  b8 \( c8 \) d8 es4 es8 |
  es8 es8 d8 c8 \( c8 \) f16 \( f16 \) |
  f8 g8 f8 d4 f16 \( f16 \) |
  f8 d8 c8 b8 b8 b8 |
  b8 \( c8 \) d8 es4 es8 | \break
  es8 d8 c8 f8 \( f8 \) c16 c16 |
  c8 d8 c8 b4 b8 \bar "||" |
  
  \mark \markup { \box \bold B }
  g'8 g8 g8 a8 a8 g8 | \break
  f8 f8 f8 d4 d8 |
  es8 es8 es8 f8 f8 es8 |
  d8 d8 es8 f4 b,8 |
  g'8 g8 g8 a8 a8 g8 | \break
  f8 f8 f8 d4 d8 |
  es8 d8 c8 f8 f8 c8 |
  c8 \( d8 \) c8 b4. | \bar "|."
}

lyricOneZero = \lyricmode {
  Ja __ _ ni -- sam baš ve -- lik k'o pla _ -- ni -- ne
  Al' znam tko je Bog __ _ ko -- ji stvo -- ri ih sve
  Ja __ _ ni -- sam baš si -- lan k'o rije _ -- ke sve
  Al znam tko je Bog __ _ ko -- ji ih po -- kre -- će. 
  Ja po -- zna -- jem Bo -- ga, 
  On ve -- lik je, jak. 
  Ja po -- zna -- jem Bo -- ga i pje -- vam mu sad. 
  Bog sil -- no nas vo -- li i že -- li da mi 
  pri -- pa -- da -- mo Bo -- žjoj o -- bi _ -- te -- lji 
}

lyricOneOne = \lyricmode {
  Ni -- sam bi -- o ja ta -- mo kad u -- mre moj Spas, 
  Al' znam da Bog i -- ma svoj __ _ plan za sve nas. 
  Ni -- sam vi -- sok, 
  ni mu -- dar al' znam da Bog jest. 
  On o -- ži -- vi Kri _ -- sta __ _ po -- slu -- šaj tu vijest. 
}

harme = \chordmode  {
  \semiGermanChords
  s8 |
  b2. b4. c:m c:m f:7 |
  f4.:7 b b2. b4. es |
  es4. f f b | es f/es |
  b2./d c4.:m f:7 b b:7 es f/es |
  b2./d c4.:m f:7 f:7 b |
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
