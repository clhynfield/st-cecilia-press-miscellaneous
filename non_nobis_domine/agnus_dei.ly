%score_options { "parts": 3, "verses": 1, "transposed": false }
scDate = "March 19, A.D. 2025"
#(ly:set-option 'midi-extension "mid")

scTempo = #(ly:make-moment 140 4)
scTitle = "Agnus Dei"
scSubtitle = ""
scComposer = "attr. William Byrd (d 1623)"
scArranger = ""
scTagline = ""
scPoet = ""
scMeter=  ""
scCopyright = ""
scStaffSize = 20

\include "english.ly"

scGlobal= {
  \key g \major
  \time 4/4
  \autoBeamOff
}

scMinimumSystemSpacing = #10

scMusicOneName = "cantus"
scMusicOneClef = \clef "treble"
scMusicOne =   \relative g' {
  g2 a4( b) | c2 b4 b4
  \repeat volta 2 {
    a2 g | r4 d'( e c) | g'2. f4 | e2 d |

  }
  \alternative { { r4 a( b) g | d'2. c4 | b2 a | g2 a4( b) | c2 b4 b4 }
                 { r4 a( b) g | d'2. c4 | b2 a | g4 g a b | c2 b } }
  \bar "|."
}

scWordsOneA =  \lyricmode {
  A -- gnus De -- i qui tol -- lis pec -- ca -- ta mun -- di
  mi -- se -- re -- re no -- bis A -- gnus De -- i qui
  do -- na no -- bis pa -- cem do -- na no -- bis pa -- cem
}

\include "./score.ly"

\version "2.24.0"  % necessary for upgrading to future LilyPond versions.
