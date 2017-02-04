\version "2.18"

commonMvtOne = {
    \time 4/4
    \key e \minor
    \clef treble
    #(define afterGraceFraction (cons 1 2))
    \override Script #'avoid-slur = #'outside
}

partOneMvtOne = \new Voice {
    \commonMvtOne
    \relative c'' {
        \repeat volta 2 {
%
e8 g16 fis e8 dis e b r4
e8 g16 fis \times 2/3 {e( fis e)} \times 2/3 {dis( e fis)} e8 b r4
e8 g16 fis e8 d c e16 d c8 b
a8 c16 b a8 g fis4.-+ a16( b32 c))
b8 e, e d' cis4. b16( cis32 d)
cis8 fis, fis e' dis4. fis8
fis8( e) e( d) cis b16 ais b8 b'16 a
g16 fis e d cis8.-+ b16 b2 
%
        }
        \repeat volta 2 {
%
fis'8 b16 a b8 fis-+ \once \override Slur #'direction = #UP \stemDown \appoggiatura fis8 g2
e8 a16( g a) g fis e \appoggiatura {e16[ fis]} fis2-+
d8 g16( fis g) fis e d e4~ e16 g fis-+ e
d4~ d16 g( fis g)
c,4~ c16 a'( g a)
b,4. g'16 fis e d c b a8.-+ g16
g4. a16( b32 c) b8 e, e d'
cis4. b16( cis32 d) cis8 fis, fis e'
dis4. dis16( e32 fis) e8 b fis' b,
g'4 r8 dis16( e32 fis) e8 d c b
c8 b a g fis4 g
fis4 fis-+ e4. gis'8
a8 g fis e dis b e4~
e4 dis-+ e2
%
	}
    }
}

partTwoMvtOne = \new Voice {
    \commonMvtOne
    \relative c'' {
        \repeat volta 2 {
%
r2 e8 g16 fis e8 dis
e b r4 e8 g16 fis \times 2/3 {e( fis e)} \times 2/3 {dis( e fis)}
e8 b r4 a8 c16 b a8 g
fis8 a16 g fis8 e8 dis4 r4
r4. gis16( a32 b)
a8 e e gis
a8 ais4 ais16( b32 cis) b8 fis fis b16 a
g8 gis ais b fis16 e' d cis d8 \afterGrace d-+( { \stemDown cis16[ d]) }
e16 d cis b ais8.-+ b16 b2
%
        }
        \repeat volta 2 {
%
r2 b8 e16 d e8 b-+
c2 a8 d16( e d) c b a
b2 g8 c16 b c4~
c8 b16 a b4~ b8 a16 g a4~
a8 g16 fis g8 b c16 b a g fis8.-+ g16
g8 a b fis g4. gis16( a32 b)
a8 e e gis  a ais4 ais16( b32 cis)
b8 fis fis a g4 r8 dis'16( e32 fis)
e8 b fis' b, g'4. gis8
a8 g fis e dis b e4~
e4 dis e8 d c b
c b a g fis4-+ g
fis fis-+ e2
%
	}
    }
}

musicMvtOne = {
  <<
    \new Staff { \set Staff.instrumentName = #"Ablfl. " \set Staff.midiInstrument = #"recorder" \transpose c ees \partOneMvtOne }
    \new Staff { \set Staff.instrumentName = #"Ablfl. " \set Staff.midiInstrument = #"recorder" \transpose c ees \partTwoMvtOne }
  >>
}

% Second movement

commonMvtTwo = {
    \time 2/4
    \set Timing.beamExceptions = #'(
           (end . ( ((1 . 8) . (4))  ((1 . 16) . (4 4)) ))
    )
    \key e \minor
    #(define afterGraceFraction (cons 1 2))
    \clef treble
    \override Script #'avoid-slur = #'outside
}

partOneMvtTwo = \new Voice {
    \commonMvtTwo
    \relative c'' {
	\repeat volta 2 {
%
\partial 8 b8
e16( dis e4) fis8
g16( fis g4) a8
b16( a b4) c8
dis,4.-+ e8
a4 g
fis4.-+ g8
fis4 e4-+
dis8 a' g-+ fis
g8 b,16( d) cis( e) dis( fis)
e8 a16( b) g( a) fis( a)
g4 gis-+
a4 ais-+
b8 dis, e a
g4 fis-+
e16( fis g4) fis8
g8 fis e-+ dis
e16( fis g4) fis8
g8 fis e-+ d
cis16( d e4) d8
cis8 d cis b
ais16( b cis4) d8
cis16( d e4) fis8
ais,16( b cis4) d8
cis16( d e4) fis8
d8.-\prall cis16 cis8.-+ b16
b4.
%
	}
	\repeat volta 2 {
%
fis'8
dis16( e fis4) dis8
b16( cis dis4) fis16( g)
a16( b c4) b16( a)
g16( fis e4) b'8
gis16( a b4) gis8
e16( fis gis4) a8
b8 c d c16( b)
c16( b a4) c8
b16( a b) e a,( gis a) d
gis,4.-+ a8
g4 f
%
% page 3
%
e16( d e4) c8
b4 a
gis16( a b4) c8
d16( e f4) e16 d
c16( b c) f b,8.-+ a16
a4 r8 r16 d
d4 r16 e d c
b16( c d4) c16-+ b
a16( g fis) g a( b c) a
b16( c d4) c16 b
a16( g a) b a( b c) a
b16( d g) b, a8.-+ g16
g8 b16 a b g b cis
d16( cis d4) c16-+ b
c8 cis16 b cis a cis dis
e16( dis) e4 dis16-+ cis
dis8 e fis g
b,8 cis dis e
dis8 e fis g
fis16( g a4) g8
fis8 fis fis g
fis16( g a4) g8
g8-+ fis \parenthesize r16 gis16 a gis
fis16( e fis) b e,( dis e) b'
dis,8 a'16( b) g( a) fis( a)
g8 b,16( d) cis( e) dis( fis)
e8 a16( b) g( a) fis( a)
g4 gis-+
a4 ais-+
b8 dis, e a
g4 fis-+
e4.
	}
    }
}

partTwoMvtTwo = \new Voice {
    \commonMvtTwo
    \relative c'' {
	\repeat volta 2 {
%
\partial 8 r8
r4 r8 b
e16( dis e4) fis8
g16( fis g4) a8
b16( a b4) c8
dis,4 e
b4. e8
a4 g
fis8 b,16( d) cis( e) dis( fis)
e8 a g fis
g8 b, cis dis
e16( d e) fis d( cis d) e
cis16( b cis) fis e( dis e) fis
dis8 fis g b,
e4 dis
e4. a,8
b8 a g fis
g16( a b4) a8
b8 a g b
e16( fis g4) fis8
e8 fis e-+ d
cis16( d e4) fis8
ais,16( b cis4) d8
cis16( d e4) fis8
ais,16( b cis4) fis,8
b8 e,8 fis4
b4.
%
	}
	\repeat volta 2 {
%
r8
r4 r8 fis'
dis16( e fis4) b,8
fis'16( g a4) g16( fis)
e8 e, r4
r4 r8 b''
gis16( a b4) a8
gis8 a b a16-+ gis
a8 a, r8 a'
gis8[ g] fis f
e16( d e4) c8
b16( a b) g' a,( gis a) f'
%
% page 3
%
gis,16( fis gis4) a8
g16( f g) e' f,( e f) d'
e,16( fis gis4) a8
b16( c d4) c16-+ b
a8 d, e4
a16 b c8~ c16 b a g 
fis8 e fis d
g16( a b4) a16 g
fis8[ d] fis d
g16( a b4) a16 g
fis8[ d] fis d
g16( a b) g fis8.-+ g16
g4 r
r8 fis16( e fis) d fis gis
a16( gis a4) g16 fis
g8 g16( fis g) e g a
b8 cis dis e
dis8 e fis g
b,8 cis dis e
dis16( e fis4) e8
b8 b b e
dis16( e fis4) e8
ais,8 b r e
dis8[ d] cis[ c]
b[ b] cis[ dis]
e[ a] g[ fis]
g b, cis dis
e16( d e) fis d( cis d) e
cis16( b cis) fis e( dis e) fis
dis8 fis g dis
e8 a, b4
e,4.
	}

    }
}
musicMvtTwo = {
  <<
    \new Staff { \set Staff.midiInstrument = #"recorder" \transpose c ees \partOneMvtTwo }
    \new Staff { \set Staff.midiInstrument = #"recorder" \transpose c ees \partTwoMvtTwo }
  >>
}

% Third movement

commonMvtThree = {
    \override Staff.TimeSignature.style = #'single-digit
    \time 3/4
    \key e \minor
    #(define afterGraceFraction (cons 1 2))
    \clef treble
    \override Script #'avoid-slur = #'outside
}

partOneMvtThree = \new Voice {
    \commonMvtThree
    \relative c'' {
	\repeat volta 2 {
%
b'8( a g4) fis
e8-+( dis e4) a
g8-+( fis g4) fis
e2 b4
g'4. a8 fis[ a]
g8( fis g) a fis a
g8( a) a4.-+( g16 a)
b2.
%
b8( a g4) fis4-+
e8-+( dis e4) a
g8-+( fis g4) fis
e2 b4
g'8( fis g) a fis a
g8( a g) fis e d
e4 cis2-+
b2.
	}
	\repeat volta 2 {
d8( c b4-+) a
b8( a g4) fis
%
d'8( c b4) a
g2 d4
b'8( c d4) c8-+ b
a8( b c4) b8-+ a
b8( c d4) c8-+ b
a2.-+
e'8( d c4) b
c8( b a4) gis
e'8( d c4) b
%
a2 e4
f'8( e f) e( dis e)
e( d e) d( cis d)
d( cis d) c( b c)
c8( d e4) d8 c
b8( c d4) c8 b
c8( d e4) d8 c
b8( c d) f e d
%
c8-+ b b4.-+ a8
a8 e'  a( b c) a
fis( e fis) a b g
e( dis e) g a fis
dis( e dis) e fis g
a8( g fis) g a4
b4 g2-+
fis2.-+
g8 b, fis' b, g' b,
%
a'4 g fis
g8 b, fis' b, g' b,
a'4 g fis
g8 e( d e) gis e
a8 fis( e fis) ais fis
b4 b, a'
g8 fis fis4.-+ e8
e4 b a-+
g8( c) c( b) b( e)
% page 5
dis4 b a-+
g8( c) c( b) b( dis)
e4 fis,4.-+ e8
e4 b' a-+
g8( c) c( b) b( e)
dis4 b a-+
g8( c) c( b) b( dis)
e4 fis,4. e8
e2.
	}
    }
}

partTwoMvtThree = \new Voice {
    \commonMvtThree
    \relative c'' {
	\repeat volta 2 {
%
R2.
b'8( a g4) fis
e8-+( dis e4) a
g8-+( fis g4) fis
e2 b4
e8( dis e4) dis
e c2-+
b8( a b) cis dis b
%
e2 r4
b'8( a g4) fis
e8-+( dis e4) a
g8-+( fis g4) fis
e2 b4
e4. d8 cis[ b]
e,4 fis2
b2.
	}
	\repeat volta 2 {
R2.
d8( c b4-+) a
%
b8( a g4) fis
d'8( c b4) a
g8( a b) d, a' g
fis( g a) d, g fis
g( a b) d, a' g
fis d fis gis a b
c8( b a4) gis-+
e'8( d c4) b
c8( b a4) gis
%
e'8( d c4) b
a8( g) a4 fis-+
g8( fis) g4 e
f8( e) fis4 gis-+
a8( b c) e, b' a
gis( a b) e, a gis
a(b c) e, b' a
gis8( a b4) gis
%
a8 d, e2
a2 a4
d8( c d4) g,
c8( b c4) fis,
b4. cis8 dis e
fis( e dis) e fis4
dis4 e e,
b'8( a b) cis dis b
e4 dis e
%
fis8 b, e b dis b
e4 dis e
fis8 b, e b dis b
e4 e, d'
cis2 e4
dis8( cis dis) e fis dis
e8 a, b2
e,4 g8( e') fis,( dis')
e,8( a) a( g) fis-+( e)
% page 5
b'4 g8( e') fis,( dis')
e,8( a) a( g) g( fis)
g8( fis16 e) dis4.-+ e8
e4 g8( e') fis,( dis')
e,8( a) a( g) fis( e)
b'4 g8( e') fis,( dis')
e,8( a) a( g) g( fis)
g8( fis16 e) dis4.-+ e8
e2.
%
	}
    }
}

musicMvtThree = {
  <<
    \new Staff { \set Staff.midiInstrument = #"recorder" \transpose c ees \partOneMvtThree }
    \new Staff { \set Staff.midiInstrument = #"recorder" \transpose c ees \partTwoMvtThree }
  >>
}

% Fourth movement

commonMvtFour = {
    \time 3/8
    \key e \minor
    #(define afterGraceFraction (cons 1 2))
    \clef treble
    \override Script #'avoid-slur = #'outside
}

partOneMvtFour = \new Voice {
    \commonMvtFour
    \relative c'' {
	\repeat volta 2 {
%
e16 e, g b e, e'
dis8 b r
e16 e, g b e, e'
c8 a r
fis'16 b, dis fis b fis
g16 e g b e b
c8 fis,4-+
e4 b8
c8 b e
%
c8-+( b) \breathe b
c8( b) e
c4-+ \breathe b8
e16( fis32 g) fis8.-+[ e16]
dis4.
	}
	\repeat volta 2 {
fis16 b, dis fis b, b'
g8 e gis-+
a16 a, cis e a, a'
fis8 d fis-+
g16 g, b d g, g'
%
e8-+ d g
e8-+ d g
c4  b8~
b16 a a8.-+ g16
g8 g, r
r16 e gis b e d
c8 a r
r16 fis ais cis fis e
dis16 b dis fis b fis
%
g8 e g
fis16 b, dis fis b fis
g16 e g b e b
c8 fis,8.-+ e16
e4 gis,8
a16 e gis b gis e
a16 e gis b gis e
a16 e gis b gis d'
cis8 dis e
%
ais,8 b4
e,4 b'8
c8( b) e
c8-+( b) \breathe b
c8[ b] e
a4 g8~
g16. fis32 fis8.-+( e16)
e4.
	}
    }
}

partTwoMvtFour = \new Voice {
    \commonMvtFour
    \relative c'' {
	\repeat volta 2 {
%
R4.
b'16 b, dis fis b, b'
g8 g, r
a'16 a, c e a, a'
dis,8 b dis
e4 g,8
a8 b4
e4 gis,8
a16 e gis b gis? e
%
a16 e gis b gis e
a16  e gis b gis e
a8 e' d
c8 \afterGrace a4(-+ { \stemDown g16[ a]) }
b4.
	}
	\repeat volta 2 {
R4.
e16 e, g b e, e'
c8 a cis
d16 d, fis a d, d'
b8 g b
%
c16 g b d b g
c16 g b d b g
fis'16 a fis d g b,
c8 d d,
g16 d g b d b
gis16 b e,8 gis
a16 e a cis e cis
ais16 cis fis,8 ais
b8 fis' dis
%
e16 g b g e g
dis8 b dis
e4 g,8
a8 b4
e,4 b'8
c8( b) e
c8-+( b) \breathe b
c8[ b] e
a4 g8~
g8 fis8.-+( e16)
e4 \breathe gis,8
a16 e gis b gis e
a16 e gis b gis e
a16 e g! b e, e'
dis16 fis b, dis e g,
a8 b4
e,4.
	}
    }
}

musicMvtFour = {
  <<
    \new Staff { \set Staff.midiInstrument = #"recorder" \transpose c ees \partOneMvtFour }
    \new Staff { \set Staff.midiInstrument = #"recorder" \transpose c ees \partTwoMvtFour }
  >>
}

%

\book {
    \paper {
        scoreTitleMarkup = \markup {
            \fontsize #2 \bold \fromproperty #'header:piece
        }
    }


    \header {
        title = "Opera Prima"
        subtitle = "Sonata Prima"
        composer = "Michel Blavet"
        arranger = "arr. S. Yates"
        tagline = ##f
    }


    \bookpart {
        \paper { min-systems-per-page = 6 }
        \score {
            \new GrandStaff \musicMvtOne
                \header { piece = "Adagio" }
	    \layout {}
        }
	\pageBreak
        \score {
            \new GrandStaff \musicMvtTwo
                \header { piece = "Allegro" }
	    \layout {}
        }
	\pageBreak
        \score {
            \new GrandStaff \musicMvtThree
                \header { piece = "Affetuoso" }
	    \layout {}
        }
	\pageBreak
        \score {
            \new GrandStaff \musicMvtFour
                \header { piece = "Allegro assai" }
	    \layout {}
        }
    }
}

% midi output
\book {
    \score {
	\new GrandStaff \musicMvtOne
        \midi {
	    output-suffix = "-m1"
	    \context {
		\Score tempoWholesPerMinute = #(ly:make-moment 72 4)
	    }
	}
    }
}

\book {
    \score {
	\new GrandStaff \musicMvtTwo
        \midi {
	    output-suffix = "-m2"
	    \context {
		\Score tempoWholesPerMinute = #(ly:make-moment 112 4)
	    }
	}
    }
}

\book {
    \score {
	\new GrandStaff \musicMvtThree
        \midi {
	    output-suffix = "-m3"
	    \context {
		\Score tempoWholesPerMinute = #(ly:make-moment 126 4)
	    }
	}
    }
}

\book {
    \score {
	\new GrandStaff \musicMvtFour
        \midi {
	    output-suffix = "-m4"
	    \context {
		\Score tempoWholesPerMinute = #(ly:make-moment 160 8)
	    }
	}
    }
}
