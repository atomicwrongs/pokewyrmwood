;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.2.0 (16-Nov-2022)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_Whaauh:
	musicheader 4, 1, Music_Whaauh_Ch1
	musicheader 1, 2, Music_Whaauh_Ch2
	musicheader 1, 3, Music_Whaauh_Ch3
	musicheader 1, 4, Music_Whaauh_Ch4

Music_Whaauh_Ch1:
	volume $77
	dutycycle $2
	notetype 12, $a7
	tempo 152
;Bar 1
	octave 2
	note E_, 16
;Bar 2
	note D_, 16
;Bar 3
	note C_, 16
;Bar 4
	octave 1
	note B_, 16
;Bar 5
	octave 2
	note E_, 16
;Bar 6
	note D_, 16
;Bar 7
	note C_, 16
;Bar 8
	octave 1
	note B_, 16
;Bar 9
	octave 2
	note E_, 16
;Bar 10
	note D_, 16
;Bar 11
	note C_, 16
;Bar 12
	octave 1
	note B_, 16
;Bar 13
	octave 2
	note E_, 16
;Bar 14
	note D_, 16
;Bar 15
	note C_, 16
;Bar 16
	octave 1 ;WARNING: Octave 0 isn't supported, won't work correctly
	note B_, 16
;Bar 17
	octave 2
	note E_, 16
;Bar 18
	note D_, 16
;Bar 19
	note C_, 16
;Bar 20
	octave 1 ;WARNING: Octave 0 isn't supported, won't work correctly
	note B_, 16
	endchannel

; ============================================================================================================

Music_Whaauh_Ch2:
	dutycycle $1
	notetype 12, $a7
;Bar 1
	note __, 8
	octave 3
	note B_, 4
	note G_, 4
;Bar 2
	note F#, 8
	note D_, 8
;Bar 3
	note E_, 8
	note __, 8
;Bar 4
	note E_, 8
	note F#, 1
	note E_, 1
	note D#, 6
;Bar 5
	note G_, 4
	note __, 4
	note B_, 4
	note G_, 4
;Bar 6
	note F#, 8
	note D_, 8
;Bar 7
	note E_, 8
	note __, 8
;Bar 8
	note E_, 6
	note D#, 1
	note E_, 1
	note F#, 4
	note A_, 4
;Bar 9
	note G_, 3
	note F#, 1
	note E_, 4
	note __, 10
;Bar 10
	octave 2
	note B_, 2
	octave 3
	note E_, 2
	note G_, 2
	note B_, 4
	note __, 4
;Bar 11
	note A_, 6
	note __, 10
;Bar 12
	note G_, 8
	note F#, 8
;Bar 13
	note G_, 3
	note F#, 1
	note E_, 4
	note __, 10
;Bar 14
	octave 2
	note B_, 2
	octave 3
	note E_, 2
	note G_, 2
	note B_, 4
	note __, 4
;Bar 15
	note A_, 6
	note __, 10
;Bar 16
	note G_, 8
	note F#, 4
	note __, 4
;Bar 17
	note G_, 3
	note F#, 1
	note E_, 4
	endchannel

; ============================================================================================================

Music_Whaauh_Ch3:
	notetype 12, $10
;Bar 1
	intensity $20
	note __, 16
	note __, 16
	note __, 16
	note __, 16
;Bar 5
	octave 4
	note E_, 4
	octave 3
	note B_, 4
	note G_, 4
	note B_, 4
;Bar 6
	octave 4
	note D_, 4
	octave 3
	note B_, 4
	note F#, 4
	note B_, 4
;Bar 7
	octave 4
	note C_, 4
	octave 3
	note G_, 4
	note E_, 4
	note G_, 4
;Bar 8
	note B_, 4
	note F#, 4
	note D#, 4
	note F#, 4
;Bar 9
	octave 4
	note E_, 4
	octave 3
	note B_, 4
	note G_, 4
	note B_, 4
;Bar 10
	octave 4
	note D_, 4
	octave 3
	note B_, 4
	note F#, 4
	note B_, 4
;Bar 11
	octave 4
	note C_, 4
	octave 3
	note G_, 4
	note E_, 4
	note G_, 4
;Bar 12
	note B_, 4
	note F#, 4
	note D#, 4
	note F#, 4
;Bar 13
	octave 4
	note E_, 4
	octave 3
	note B_, 4
	note G_, 4
	note B_, 4
;Bar 14
	octave 4
	note D_, 4
	octave 3
	note B_, 4
	note F#, 4
	note B_, 4
;Bar 15
	octave 4
	note C_, 4
	octave 3
	note G_, 4
	note E_, 4
	note G_, 4
;Bar 16
	note B_, 4
	note F#, 4
	note D#, 4
	note F#, 4
;Bar 17
	octave 4
	note E_, 4
	octave 3
	note B_, 4
	note G_, 4
	note B_, 4
;Bar 18
	octave 4
	note D_, 4
	octave 3
	note B_, 4
	note F#, 4
	note B_, 4
;Bar 19
	octave 4
	note C_, 4
	octave 3
	note G_, 4
	note E_, 4
	note G_, 4
;Bar 20
	note B_, 4
	note A_, 5 ; WARNING: Auto-Sync says: Rounded up!
	note G_, 6 ; WARNING: Auto-Sync says: Rounded up!
	note F_, 8 ; WARNING: Auto-Sync says: Rounded up!
;Bar 21
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	note E_, 1
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	note E_, 1
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	note E_, 1
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	note E_, 1
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	note E_, 1
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	note E_, 1
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	note E_, 1
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	note E_, 1
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	note E_, 1
;Bar 22
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	note E_, 1
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	note E_, 1
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	note E_, 1
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	note E_, 1
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	note E_, 1
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	note E_, 1
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	note E_, 1
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	note E_, 1
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	octave 3
	intensity $20
	;note E_, 0 | WARNING: Rounded down to 0
	octave 4
	intensity $10
	;note E_, 0 | WARNING: Rounded down to 0
	endchannel

; ============================================================================================================

Music_Whaauh_Ch4:
	togglenoise 1 ; WARNING: this might sound bad.
	notetype 12
;Bar 1
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
;Bar 9
	note C_, 2
	note C_, 4
	note C_, 1
	note C_, 1
	note C_, 2 ; WARNING: Auto-Sync says: Rounded up!
	note C_, 6
;Bar 10
	note C_, 2
	note C_, 4
	note C_, 2
	note C_, 2 ; WARNING: Auto-Sync says: Rounded up!
	note C_, 2
	note C_, 1
	note C_, 2
	note C_, 1
;Bar 11
	note C_, 2 ; WARNING: Auto-Sync says: Rounded up!
	note C_, 4
	note C_, 1
	note C_, 1
	note C_, 2
	note C_, 6 ; WARNING: Auto-Sync says: Rounded up!
;Bar 12
	note C_, 2
	note C_, 4
	note C_, 2
	note C_, 2
	note C_, 2 ; WARNING: Auto-Sync says: Rounded up!
	note C_, 1
	note C_, 2
	note C_, 1
;Bar 13
	note C_, 2
	note C_, 4
	note C_, 1
	note C_, 1
	note C_, 2
	note C_, 6
;Bar 14
	note C_, 2
	note C_, 4
	note C_, 2
	note C_, 2
	note C_, 2
	note C_, 1
	note C_, 2
	note C_, 1
;Bar 15
	note C_, 2
	note C_, 4
	note C_, 1
	note C_, 1
	note C_, 2
	note C_, 6
;Bar 16
	note C_, 2
	note C_, 4
	note C_, 2
	note C_, 2
	note C_, 2
	note C_, 1
	note C_, 2
	note C_, 1
;Bar 17
	note C_, 2
	note C_, 4
	note C_, 1
	note C_, 1
	note C_, 2
	note C_, 6
;Bar 18
	note C_, 2
	note C_, 4
	note C_, 2
	note C_, 2
	note C_, 2
	note C_, 1
	note C_, 2
	note C_, 1
;Bar 19
	note C_, 2
	note C_, 4
	note C_, 2
	note C_, 2
	note C_, 6
;Bar 20
	note C_, 2
	note C_, 4
	note C_, 3
	note C_, 3
	note C_, 11
;Bar 21
	note C_, 16
	note C_, 1
	endchannel

; ============================================================================================================

