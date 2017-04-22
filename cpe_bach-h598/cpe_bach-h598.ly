\version "2.8.12"

#(set-global-staff-size 18)

upline =
#(let ((m (make-articulation "stopped")))
   (set! (ly:music-property m 'tweaks)
         (acons 'font-size 3
                (acons 'stencil (lambda (grob)
                                  (grob-interpret-markup
                                   grob
                                   (make-draw-line-markup '(0.1 . 0.8))))
                       (ly:music-property m 'tweaks))))
   m)

ficta = { \once \set suggestAccidentals = ##t }

commonMvtOne = {
    \time 3/4
    \key e \minor
    \clef treble
    #(define afterGraceFraction (cons 1 2))
    \override Script #'avoid-slur = #'outside
}

partOneMvtOne = \new Voice {
    \commonMvtOne
    \relative c''' {
	\compressFullBarRests {
% bar 1
R2.*3 | r8 b a( g fis e) | \grace{ dis16 fis16 } e4( dis8) fis a4~ |

% bar 6
a8 c( b a g fis) | g4( b e~) | e8 d( c b a g) | fis4^\prall a( d~) |
d8 c( b a g f) |

% bar 11
e8 g( fis a g) e | d( g f a g e) | d2( c4^\trill) | b2.~ | b8 e( dis fis e c) |

% bar 16
b8( a g fis) \stemUp g[ \stemDown g'] \stemNeutral | e8( c) b4( a^\trill) |
g8 d'( c b a g) | \appoggiatura{ fis16 a} g4 fis8( a) c4~ | c8 e d c b a |

% bar 21
b4 r r | r8 gis( b d e f) | a,4( gis2^\trill) |
\stemUp a8 \stemDown b' a( g f e) | \stemNeutral f4 fis2^\trill |

% bar 26
g8 d' b( g d' f,) | e2. | dis8( fis g a b c) | e,8 dis r4 r4 |

% bar 30
r8 b'8( a g fis e) | \grace{ dis16 fis} e4( dis8) fis( a4~) |
a8 c( b a g fis) | g4( b e) |

% bar 34
r8 fis,( g a b c) | e,4( dis2^\trill) | e8 g( b dis e b) | d4( cis2) |

% bar 38
d,8 fis( a cis d a) | c?4( b2~) | b8 c( b ais) r a~ | a8 gis b a a,4~ |

% bar 42
a4 a a'~ | a8 a( e' dis) e4 | r8 a,8 g4( fis^\trill) | e2 r4 \bar "|."
%
	}
    }
}

partTwoMvtOne = \new Voice {
    \commonMvtOne
    \relative c'' {
	\compressFullBarRests {
% line 1
r8 b( a g fis e) | \appoggiatura { dis16 fis} e4 dis8( fis) a4~ |
a8 c( b a g fis) |

% line 2
g4( b e) | r8 fis, g( a b c) | e,4( dis2^\trill) |
\stemUp e8 \stemNeutral fis'8( e d c b) | c4( a c)~ |

% line 3
c8 e( d c b a) | b4( g b) | c2. | b2. | r8 fis( e g fis a) |

% line 4
d,8 g fis a g b | c,2 c8 e | d8( c b a) b4 | c8( e) g4( fis^\trill) | 

% line 5
g4 d'4.^\trill e8 | a,8( b a g fis e) | fis2.^\trill | g8( d' c b a g) |
f8( e gis b) d4~ |

% line 6
d8 f( e d c b) | c4 cis2^\trill | d8 (e d c? b a) | b2. | c8( g' e c g' b,) |

% line 7
a2. | ais8 (b cis dis e fis) | a,?8( g) r4 r4 | r8 c8( b a g fis) |

% line 8
e4( dis2^\trill) | e8 b' a( g fis e) |
\appoggiatura{ dis16 fis} e4( dis8) fis a4~ | a8 c( b a g fis) | g2 r4 |

% line 9
e8 gis( a cis e) g, | fis2. | d8( fis g? b d) f, |
e4 r8 g(_\p fis? e) |

% line 10
dis4 r8 cis4( b8) | d?8( cis_\markup{\bold\italic for}) e( dis) fis( e) |
g8( fis4) a8 g4 | r8 cis e4( dis^\trill) |

% line 11
e2 r4 \bar "|."
%
        }
    }
}

commonMvtTwo = {
    \time 2/4
    \key e \minor
    \clef treble
    \override Script #'avoid-slur = #'outside
}

partOneMvtTwo = \new Voice {
    \commonMvtTwo
    \relative c''' {
	\compressFullBarRests {
\repeat volta 2 {
% bar 1
g4 b16 a g fis | fis4( g8) r8 | b4 d16 c b a | a4( b8) r8 | d8 d4 e8 |

% bar 6
d4( c8) d8 | c8( b4) \grace{ d8 } c8 | \grace{ b4 } a2 | d,8_\p d4  b'8 |
d,8( cis) r8 a'16 c, | c4( b8) g'16 b, | b8^\trill a r4 |
r16_\f fis16 g a b cis d e

% bar 14
fis16 a, b cis d e fis g | a8 a4 b8 | g8 fis8 r4 | r16 g,16 a b cis dis e fis |
g16 b, cis dis e fis g a |

% bar 19
b8 b4 c8 | a8^\trill g16 b a g fis e d8( cis) a'4 | r8 d,16 a'16 g fis e d |
cis8( b) g'4 |

% bar 24
r16 \stemUp g, g \stemDown g' \stemNeutral fis e d cis | b16 a e' d cis b a g |
fis16 a d fis a8^\upline fis^\upline |
fis8^\trill e r4 | g8^\trill_\p fis r4 | b8^\trill a r4 |

% bar 30
cis8_\f( d4) gis,8 | a8 b4  a16 g? | g16 fis e d e4^\trill |
cis'8_\p( d4) gis,8 | a8 b4 fis8 | g?8 a4 e8 |

% bar 36
fis4 e | b'4( a | g fis)~ | fis16 b16 a g fis e d cis |
d16 d' cis b a g fis e |

% bar 41
fis8. g16 \grace{fis8} e4^\trill |
d8 \tuplet 3/2 {fis16 e d} a'8 \tuplet 3/2 {fis16 e d} | d'8 r8 r4 |
R2
}
%\bar ":..:"
\repeat volta 2 {
d,4 fis16 e d cis |

% bar 46
cis4( d8) r8 | fis4 a16( g fis e) | e4( fis8) r8 |
a8 \tuplet 3/2 { b16( a g )} a8^\upline b^\upline |
c?2~ | c8 \tuplet 3/2 { c16 ( b a) } b8^\upline d^\upline |

% bar 52
b8^\trill a r4 | R2 | cis,8_\f cis4 dis8 | e4. g8 |
e^\trill dis8 r4 | e4 g16 fis e dis |

% bar 58
dis4( e8) r8 | g4 b16 a g fis | fis4( g16) b a c | b8 fis16 g b a g fis |
fis4( g16) b a c |

% bar 63
b8 fis16 g b a g fis | g16 e fis g a b cis dis | \ficta dis8( e4) ais,8 |
b8 c?4 b16 a? | a g fis e fis4^\trill |

% bar 68
dis'8( e4) ais,8 | b8 fis4 gis8 | a8 e4 fis8 | g?16 fis g_\markup{\bold\italic for} b a g fis e |
fis e fis a g fis e dis |

% bar 73
e8 c'16 b a g fis e | dis8[ fis b a] | g8[ e' fis, dis'] |
e8 r8 r4 | r8 a,16_\p e' d cis b a |

% bar 78
g8( fis) d'4 | r8 g,16 d'16 c b a g | f8 e r4 |
r16 e,16_\markup{\bold\italic for} f g a b c d | e16 g, a b c d e f | g8 g4 a8 |

% line 84
f8^\trill e r8 c'16_\p b |
c8^\upline[ e,^\upline e^\upline g^\upline] |
e8^\trill d g16_\markup{\bold\italic for} fis b a |
g fis e d c b a g |  c16^\trill b c4 d16 a |

%line 19
b16 g d' b g'8^\upline d^\upline  | b8^\trill a r16 c a' c, |
c8^\trill b r16 e16_\p c' e, | e16^\trill d g8 r4 |
fis8_\f( g4) cis,8 | d8 e4 d16 c? |

% line 20
c?16 b a g a4^\trill | fis'8( g4) cis8 | d8 e4 b8 | c?8 d4 a8 |
b4( a | c b) | e4( d |

% line 21
c4 b) | b16 e d c b a g fis | g16 b a g fis e d c |
b8. c16 \grace{ b8 } a4^\trill |
g8 \tuplet 3/2 { b16 a g } d'8 \tuplet 3/2 { b16 a g } |
g'8 r8 r4 | R2
}
%\bar ":|."
	}
    }
}

partTwoMvtTwo = \new Voice {
    \commonMvtTwo
    \relative c''' {
	\compressFullBarRests {
\repeat volta 2 {
% line 1
R2*2 | g4 b16 a g fis | fis4( g8) r8 | r8 b a gis | r8 a( g fis) |

% line 2
r8 g( e c) | d8 \tuplet 3/2 { fis,16 g a } d,4 | r8_\p b'8[( a gis)] |
r8 e'[ g,?( fis)] | r8 fis16 d g8 cis,8 |
d16_\markup{\bold\italic for} d e fis g a b cis |

% line 3
d16 d, e fis g a b cis | d16 fis, g a b cis d e | fis8 fis4 g8 |
e8^\trill d  r4 | e,8 fis16 g a b cis dis |

% line 4
e16 g, a b cis dis e fis | g8 g4 a8 | fis8^\trill e r4 |
r8. e16 d cis b a | g8( fis) d'4 | r8 g,16 d' cis b a g |

% line 5
fis8 e cis'4 | r16 cis,16 cis b' a g fis e |
d16 fis a d fis8^\upline d^\upline | d8^\upline cis^\upline r4 |
b8_\p^\trill a r4 | g8^\trill fis r4 |

% line 6
r8 f'8_\markup{\bold\italic for}[( e d)] | cis4 cis | d8 b g a |
r8 f'8_\f[( e d)] | cis4 dis | e4( cis) | a8 d4 cis8( |

% line 7
d8) g4 fis8~ |  fis8 e4 d8 | g,2_\f |
fis16 d e fis g a b cis | d8. e16 \grace{d4} cis^\trill |

% line 8
d8 r8 r4 | r8 \tuplet 3/2 {a16 b cis} d8 \tuplet 3/2 { fis,16 g a } |
d,4 r4
}

% \bar ":..:"
\repeat volta 2 {
R2*2 | d'4 fis16( e d cis) |

% line 9
\ficta cis4( d8) r8 | R2 |
e8 \tuplet 3/2 {g16( fis e)} e8^\upline fis^\upline |
g8 \tuplet 3/2 { a16( g fis) } g8^\upline  b^\upline | g8^\trill fis r4 |

% line 10
fis8_\p fis4 gis8 | a2~ | a8[ fis( g? b)] |
g8^\trill fis16 c b a g fis | g8_\markup{\bold\italic for} e r4 | R2

% line 11
e'4_\f g16 fis e dis | d4( e16 ) g fis a |
g8 dis16 e g fis e dis | d4( e16) g fis a | g8 dis16 e g fis e dis |

% line 12
e4 r4 | r8 g8( fis e) | dis4 dis | e8 c a b |
r8 g'8_\p[( fis e)] | dis4( d |

% line 13
cis c) | b8_\f b4 cis8 | d8 a4 b8 | c8 a16 b c4~ |
c16 c b a g fis e dis |

% line 14 (next page)
e8[ g a b] | e,8 e'16_\p b' a g fis e | d8( cis) a'4 |
r8 d,16 a' g fis e d | c?8( b) g'4 |

% line 15
r16 c,,_\f d e f g a b | c16 c, d e f g a b |
c e, f g a b c d | e8 e4 f8 |

% line 16
d8^\trill c r8 e16_\p d |
e8^\upline[ c^\upline c^\upline e^\upline] | c8^\trill b r4 |
b16_\f a c b a g fis g | e8 a16 e fis4 | g4 r8 cis,8 |

% line 17
d4_\upline dis( | e4_\upline) fis_\f( |
g8_\upline) b r4 | r8 bes_\f[( a g)] |
fis4 fis | g8[ e c d] | r8 bes'_\p[( a g)] |

% line 18
fis 4 gis( | a) fis | g8 g'4 fis8 | e8 a4 g8~ | g8 c4 b8~ |
b8 a4 g8 | c,2_\f |

% line 19
b16 g a b c d e fis | g8. a16 \grace { g8 } fis4 | g8 r8 r4 |
r8 \tuplet 3/2 {d,16 e fis} g8 \tuplet 3/2 { b,16 c d} |
g,4 r4
}
% \bar ":|." |
	}
    }
}

commonMvtThree = {
    \time 3/8
    \key e \minor
    \clef treble
    \override Script #'avoid-slur = #'outside
}

partOneMvtThree = \new Voice {
    \commonMvtThree
    \relative c'' {
	\compressFullBarRests {
\repeat volta 2 {
% line 1
b4_\p \tuplet 3/2 { d16( b d) } | c8^\upline e^\upline r8 |
a,4 \tuplet 3/2 { c16(a c) } | b8^\upline d^\upline r8 |
g32_\f[( a b c]) d16 b a g |

% line 2
fis16 e d c b a | b8 r16 g16_\f a b | c16 d e fis g a |
b8_\f^\trill d16( b) r8 | a8^\trill d16( a) r8 |
g32[_\f a b a] g[ fis e d] cis[ b a g] |

%line 3
fis16[ a] d[ fis] a8^\upline | g32[ a b a] g[ fis e d] cis[ b a g] |
fis16[ a d fis] a d | cis32[( b a g)] fis8 e^\trill | d8 a'16( fis) r8 |

% line 4
r8 g16( e) r8 | r8 fis16( d) r16 a | ais16[( b]) g'[ fis] b,[( cis]) |
e16[( d]) a'[( fis]) r8 | r8 g16( e) r8 | r8 fis16( d) r d' |

% line 5
ais16[( b]) b,[( g']) e[( cis]) | d32[ a b cis] d[ e fis g] a[ d, e fis] |
g32[ a b cis] d[ cis b a] g[ fis e d] |

% line 6
b'8 e,4^\trill | d4 r8
}
%\bar ":..:" |
\repeat volta 2 {
f4_\p \tuplet 3/2 { f16 d f} | e8^\upline a^\upline r |
gis4^\upline \tuplet 3/2 { b16( gis d) } | c16[ a' e c] a8^\trill |
a'32_\markup{\bold\italic for}[ b c d] e16[ c b a]

% line 7
gis16[ f e d c b] | c8^\upline r16 a16 b c |
d16[ e fis gis a b] | c8_\f^\trill e16( c) r8 |
b8^\prall d16( b) r8 | a8[ c16( a)] e16[ a] |

% line 8
g4( fis8^\trill) |
g32_\markup{\bold\italic for}[ a b a] g[ fis e d] cis[ b a g] |
fis16[ a] d[ fis] a8 |
g32_\p[ a bes a] g[ f ees d] cis[ bes' a g] |

% line 9
fis16[ d'] a[ fis] d8^\trill |
c'?32_\markup{\bold\italic for}[ d e d] c[ b a g] fis[ e d c] |
b16[ d] g[ b] d[ d,] | e32( c' b a) a4^\trill | g8^\upline d'16( b) r8 |

% line 10
r8 c16( a) r8 | r8 b16 g  r16 d |
dis16[( e]) c'[( a]) e[( fis]) | a16[( g]) d[( b]) r8 |

% line 11
r8 c16 a r8 | r8 b16( g) r g' | dis16[( e]) e,[( c']) a[( fis]) |
g'32[ g, a b] c[ d e fis] g[ b, c d] |

% line 11
e32[ fis g a ] b[ g fis g ] a[ b c d] |
e8 a,4^\trill |
}
\alternative {
  { g4 r8 }
  { g4 r8 }
}
\bar "|."
	}
    }
}

partTwoMvtThree = \new Voice {
    \commonMvtThree
    \relative c'' {
	\compressFullBarRests {
\repeat volta 2 {

% line 1
g4_\p \tuplet 3/2 { b16( g b) } | \stemUp a8_\upline c_\upline r8 |
\stemNeutral fis,4 \tuplet 3/2 { a16( fis a) } | g8_\upline b_\upline r8 |
r8 r16 g'_\f fis e | d c b a g fis |

% line 2
g32[( a b c]) d16_\f b a g | fis e d c b a | g8 r8 g'16_\p( d') |
r8 r8 fis,16 d' | e,4._\f | d'32[ e fis e] d[ cis b a] g[ fis e d] |

% line 3
e16[ g cis e] g8 | d32[ e fis e ] d[ cis b a] g[ fis e d] | g8 a a, |
d8 r8 fis16_\f( d') | e,16( cis') r8 cis,16( a') | d,16( a') r8 fis8 |

% line 4
g8 e a | d,8 r fis16( d') | e,16( cis') r8 cis,16( a') | d,16( a') r8 fis |g4 a8 |
\stemUp d,32_\markup{\bold\italic for}[ \stemDown fis' e d]
\stemNeutral cis[ b a g] fis[ d' cis b] |

% line 5
a32[ g fis e] d[ e fis g] a[ b cis d] | g,8_\upline a4^\trill |
\stemUp d,8 \stemNeutral d'16 c? b a
}
\repeat volta 2 {
gis4_\p \tuplet 3/2 { d'16( b d) } | c4^\upline r8 |

% line 6
b4 \tuplet 3/2 { gis16( e gis) } | a8 r16 a, c[ e] |
c16 a r16 a'' gis fis | e16[ d c b a gis] |
a32[( b c d)] e16 c b a |

% line 7
gis16[ fis? e d c b] | a8 r8 fis'16_\p d' |
r8 r8 g,16( d') | c,4. | d4. | e4._\f |
d'32[ e fis e] d[ cis b a] g[ fis e d] |

% line 8
ees4._\p | d'32[ e fis e] fis[ g a g] fis[ e d e] | fis4._\f |
g32[ a b a] g[ fis e d] c[ b a g] | c8[ d d,] |

% line 9
g8 r b16( g') | a,16( fis') r8 fis,16( d') | g,16( d') r8 b | c8[ a d] |
g,8 r8 b,16( g') | a,16( fis') r8 fis16( d) |

% line 10
g,16( d') r8 b | c4 d8 | g,32_\f[ b' a g] fis[ e d c] b[ g' fis e] |
d32[ c b a] g[ b a b] c[ d e d] |
r
% line 11
c8^\upline d4 |
}
\alternative {
  { g,8 d''16 c b a }
  { g,4 r8 }
}
\bar "|."
	}
    }
}

musicMvtOne = {
  <<
    \new Staff {
       	\set Staff.midiInstrument = #"Flute"
       	\set Staff.instrumentName = #"Flauto"
	\partOneMvtOne
    }
    \new Staff {
	\set Staff.midiInstrument = #"Violin"
       	\set Staff.instrumentName = #"Violino"
	\partTwoMvtOne
    }
  >>
}

musicMvtTwo = {
  <<
    \new Staff {
       	\set Staff.midiInstrument = #"Flute"
       	\set Staff.instrumentName = #"Flauto"
	\partOneMvtTwo
    }
    \new Staff {
	\set Staff.midiInstrument = #"Violin"
       	\set Staff.instrumentName = #"Violino"
	\partTwoMvtTwo
    }
  >>
}

musicMvtThree = {
  <<
    \new Staff {
       	\set Staff.midiInstrument = #"Flute"
       	\set Staff.instrumentName = #"Flauto"
	\partOneMvtThree
    }
    \new Staff {
	\set Staff.midiInstrument = #"Violin"
       	\set Staff.instrumentName = #"Violino"
	\partTwoMvtThree
    }
  >>
}


\paper {
    scoreTitleMarkup = \markup {
	\fontsize #2 \bold \fromproperty #'header:piece
    }
}

\header {
    title = "Duetto"
    subtitle = "H. 598"
    composer = "C. P. E.  Bach"
    tagline = "[draft 20.11.2016]"
}

\bookpart {
    \paper {
       	annotate-spacing = ##f
        min-systems-per-page = 7
	ragged-bottom = ##f
	ragged-last-bottom = ##f
    }
    \score {
	\new GrandStaff \musicMvtOne
	    \header { piece = "Andante" }
	\layout {}
    }
}

\bookpart {
    \paper {
       	annotate-spacing = ##f
        min-systems-per-page = 7
	ragged-bottom = ##f
	ragged-last-bottom = ##f
    }
    \score {
	\new GrandStaff \musicMvtTwo
	    \header { piece = "Allegro" }
	\layout {}
    }
}

\bookpart {
    \paper {
       	annotate-spacing = ##f
        min-systems-per-page = 7
	ragged-bottom = ##f
	ragged-last-bottom = ##
    }
    \score {
	\new GrandStaff \musicMvtThree
	    \header { piece = "Allegretto" }
	\layout {}
    }
}

% midi output
\score {
    \new GrandStaff \musicMvtOne
    \midi {
	output-suffix = "-m1"
	\context {
	    \Score tempoWholesPerMinute = #(ly:make-moment 72 4)
	}
    }
}

\score {
    \new GrandStaff \musicMvtTwo
    \midi {
	output-suffix = "-m2"
	\context {
	    \Score tempoWholesPerMinute = #(ly:make-moment 120 4)
	}
    }
}

\score {
    \new GrandStaff \musicMvtThree
    \midi {
	output-suffix = "-m3"
	\context {
	    \Score tempoWholesPerMinute = #(ly:make-moment 108 4)
	}
    }
}
