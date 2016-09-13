\version "2.18.2"
\score {
  \new Staff <<
    \new Voice \relative c' {
      \set midiInstrument = #"acoustic guitar (steel)"
      \voiceOne
      \key d \major
      \time 4/4
	  \partial 8
      cis8 e4 % mercha
	  e8 fis a e4 % tipcha
	  cis8 e4 % mercha
	  e8 e fis d4 % sof pasuk
	  \bar "|"
	}
	\addlyrics {
		Mer -- cha
		Tip -- cha __ _ _
		Mer -- cha
		Sof pa -- suk __ _
	}
  >>
  \layout {
  \context {
    \Score
      \override SpacingSpanner
        #'spacing-increment = 3
  }
 }
  \midi {
    \context {
      \Staff
      \remove "Staff_performer"
    }
    \context {
      \Voice
      \consists "Staff_performer"
    }
    \tempo 4 = 80
  }
}
%{
Mer -- cha
Tip -- cha
Mu -- nach
Et -- nach -- ta
Sof pa -- suk
Se -- gol
Shal -- she -- let
Za -- kef ka -- ton
Za -- kef ga -- dol
re -- vi -- i (re -- vi -- a)
Tip -- cha
Pash -- ta
Ye -- tiv
Zar -- ka
(Mu -- nach) le -- gar -- me -- ah
Te -- vir
Ge -- resh
Az -- la
Pa -- zer
Te -- li -- sha ge -- do -- lah
Te -- li -- sha ke -- ta -- nah
Kar -- nei pa -- rah
Ma -- pach
Dar -- ga
(Mer -- cha) ke -- fu -- la
%}
