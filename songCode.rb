use_bpm 101
define :thatonebeat_bg do
  play :B1, release: 0.675, amp: 0.7
  play :B0, release: 0.675, amp: 0.7
  sleep 0.675
  play :B1, release: 0.675, amp: 0.7
  play :B0, release: 0.675, amp: 0.7
  sleep 0.675
end
define :thatonebeat do
  play :B4, sustain: 0.45
  play :D5, sustain: 0.45
  play :Fs5, sustain: 0.45
  sleep 0.45
  play :B4, sustain: 0.45
  play :D5, sustain: 0.45
  play :Fs5, sustain: 0.45
  sleep 0.45
  play :B4, sustain: 0.45
  play :E5, sustain: 0.45
  play :G5, sustain: 0.45
  sleep 0.45
end
live_loop :foo do
  use_synth :piano
  play :G3, release: 3.6
  play :G2, release: 3.6
  sleep 3.6
  play :Fs3, release: 1.5, amp: 0.8
  play :Fs2, release: 1.5, amp: 0.8
  sleep 1.5
  play :Fs3, release: 1.8, amp: 0.8
  play :Fs2, release: 1.8, amp: 0.8
  sleep 1.8
  thatonebeat_bg
  play :B1, release: 2, amp: 0.7
  play :B0, release: 2, amp: 0.7
  sleep 2
  thatonebeat_bg
  play :B1, release: 1.4, amp: 0.7
  play :B0, release: 1.4, amp: 0.7
  sleep 1.4
  play :Fs3, release: 1.1, amp: 0.7
  play :Fs2, release: 1.1, amp: 0.7
  sleep 1.1
  thatonebeat_bg
  play :B1, release: 2, amp: 0.7
  play :B0, release: 2, amp: 0.7
  sleep 2
  thatonebeat_bg
  play :B1, release: 1.3, amp: 0.5
  play :B0, release: 1.3, amp: 0.5
  sleep 4.3
end

live_loop :cool do
  use_synth :piano
  play :G4, sustain: 0.4
  play :E5, sustain: 0.4
  sleep 0.4
  play :G4, sustain: 0.5
  play :E5, sustain: 0.5
  sleep 0.5
  play :G4, sustain: 0.6
  play :E5, sustain: 0.6
  sleep 0.6
  play :E5, sustain: 0.3
  sleep 0.3
  play :G4, sustain: 0.5
  play :E5, sustain: 0.5
  sleep 0.5
  play :G4, sustain: 0.5
  play :D5, sustain: 0.5
  sleep 0.5
  play :G4, sustain: 0.8
  play :B4, sustain: 0.8
  sleep 0.8
  play :Fs4, sustain: 1
  play :D5, sustain: 1
  sleep 1
  play :B4, sustain: 0.5
  sleep 0.5
  play :Bb4, sustain: 0.9
  play :Fs5, sustain: 0.9
  sleep 0.9
  play :E5, sustain: 0.45
  sleep 0.45
  play :D5, sustain: 0.45
  sleep 0.45
  thatonebeat
  play :B4, sustain: 0.45
  play :D5, sustain: 0.45
  play :Fs5, sustain: 0.45
  sleep 2
  thatonebeat
  play :B4, release: 5.6
  sleep 0.7
  play :D5, release: 4.7
  sleep 0.7
  play :Fs5, release: 3.5
  sleep 1
  thatonebeat
  play :B4, sustain: 0.45
  play :D5, sustain: 0.45
  play :Fs5, sustain: 0.45
  sleep 2
  thatonebeat
  play :B4, release: 5.6
  sleep 0.7
  play :D5, release: 4.7
  sleep 0.7
  sample "C:/Users/jordan_simpson/Downloads/audiomass-output.mp3"
  
  sleep 3
end

use_bpm 179
define :melody do
  use_synth :pulse
  play :Ab5
  sleep 0.5
  play :Bb5
  sleep 0.5
  play :Ab5, release: 3
  sleep 3
  play :C6
  sleep 0.5
  play :Db6
  sleep 0.5
  play :C6, release: 3
  sleep 3
  play :Eb6
  sleep 0.5
  play :F6
  sleep 0.5
  play :Eb6, release: 3
  sleep 3
  play :Ab5
  sleep 1
  play :Ab5
  sleep 1
  play :Fs5
  sleep 1
  play :F5
  sleep 1
  play :F5, release: 2
  sleep 2
  play :F5
  sleep 0.25
  play :Eb5
  sleep 1.75
  play :Ab5
  sleep 1
  play :Ab5
  sleep 1
  play :Fs5
  sleep 1
  play :F5
  sleep 1
  play :F5
  sleep 1
  play :Eb5, release: 1.75
  sleep 1.75
end
