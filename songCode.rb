amp_up=0.25
use_bpm 101
define :thatonebeat_bg do
  play :B1, release: 0.75, amp: 0.7
  play :B0, release: 0.75, amp: 0.7
  sleep 0.75
  play :B1, release: 0.75, amp: 0.7
  play :B0, release: 0.75, amp: 0.7
  sleep 0.75
  play :B1, release: 2.5, amp: 0.7
  play :B0, release: 2.5, amp: 0.7
  sleep 2.5
end
define :thatonebeat_bg2 do
  play :B1, release: 0.75, amp: 0.7
  play :B0, release: 0.75, amp: 0.7
  sleep 0.75
  play :B1, release: 0.75, amp: 0.7
  play :B0, release: 0.75, amp: 0.7
  sleep 0.75
  play :B1, release: 2, amp: 0.7
  play :B0, release: 2, amp: 0.7
  sleep 2
end
define :thatonebeat do
  play :B4, sustain: 0.5
  play :D5, sustain: 0.5
  play :Fs5, sustain: 0.5
  sleep 0.5
  play :B4, sustain: 0.5
  play :D5, sustain: 0.5
  play :Fs5, sustain: 0.5
  sleep 0.5
  play :B4, sustain: 0.5
  play :E5, sustain: 0.5
  play :G5, sustain: 0.5
  sleep 0.5
  play :B4, sustain: 0.5
  play :D5, sustain: 0.5
  play :Fs5, sustain: 0.5
  sleep 2.5
end
define :thatonebeat2 do
  play :B4, sustain: 0.5
  play :D5, sustain: 0.5
  play :Fs5, sustain: 0.5
  sleep 0.5
  play :B4, sustain: 0.5
  play :D5, sustain: 0.5
  play :Fs5, sustain: 0.5
  sleep 0.5
end
define :firstPart do
  play :G4, release: 0.5
  play :E5, release: 0.5
  sleep 0.5
  play :G4, sustain: 0.5
  play :E5, sustain: 0.5
  sleep 0.5
  play :G4, sustain: 0.5
  play :E5, sustain: 0.5
  sleep 0.5
  play :E5, sustain: 0.3
  sleep 0.3
  play :G4, sustain: 0.5
  play :E5, sustain: 0.5
  sleep 0.5
  play :G4, sustain: 0.5
  play :D5, sustain: 0.5
  sleep 0.5
  play :G4, sustain: 0.7
  play :B4, sustain: 0.7
  sleep 0.7
  play :Fs4, sustain: 1
  play :D5, sustain: 1
  sleep 1
  play :B4, sustain: 0.5
  sleep 0.5
  play :Bb4, sustain: 1
  play :Fs5, sustain: 1
  sleep 1
  play :E5, sustain: 0.5
  sleep 0.5
  play :D5, sustain: 0.5
  sleep 0.5
end

define :firstPart_bg do
  play :G3, release: 3.5
  play :G2, release: 3.5
  sleep 3.5
  play :Fs3, release: 1.5, amp: 0.8
  play :Fs2, release: 1.5, amp: 0.8
  sleep 1.5
  play :Fs3, release: 2, amp: 0.8
  play :Fs2, release: 2, amp: 0.8
  sleep 2
end

live_loop :foo do
  use_synth :piano
  2.times do
    firstPart_bg
    
    thatonebeat_bg
    
    thatonebeat_bg2
    
    play :Fs3, release: 2, amp: 0.7
    play :Fs2, release: 2, amp: 0.7
    sleep 0.5
    thatonebeat_bg
    
    thatonebeat_bg
    
    thatonebeat_bg2
    play :Fs3, release: 2, amp: 0.7
    play :Fs2, release: 2, amp: 0.7
    sleep 0.5
  end
  thatonebeat_bg2
  play :Fs3, release: 2, amp: 0.25
  play :Fs2, release: 2, amp: 0.25
  sleep 0.5
  sleep 68
end

live_loop :cool do
  use_synth :piano
  2.times do
    firstPart
    
    thatonebeat
    
    thatonebeat2
    play :B4, sustain: 0.5
    play :E5, sustain: 0.5
    play :G5, sustain: 0.5
    sleep 0.5
    play :B4, release: 4.5
    sleep 0.75
    play :D5, release: 3.5
    sleep 0.75
    play :Fs5, release: 2.5
    sleep 1
    thatonebeat
    
    thatonebeat
    
    thatonebeat2
    play :B4, sustain: 0.5
    play :E5, sustain: 0.5
    play :G5, sustain: 0.5
    sleep 0.5
    play :B4, release: 4.5
    sleep 0.75
    play :D5, release: 3.5
    sleep 0.75
    play :Fs5, release: 2.5
    sleep 1
  end
  thatonebeat2
  play :B4, sustain: 0.5, amp: 0.75
  play :E5, sustain: 0.5, amp: 0.75
  play :G5, sustain: 0.5, amp: 0.75
  sleep 0.5
  play :B4, release: 4.5, amp: 0.75
  sleep 0.75
  play :D5, release: 3.5, amp: 0.50
  sleep 0.75
  play :Fs5, release: 2.5, amp: 0.25
  sleep 4
  amp_up=0.25
  use_synth :pulse
  play :Fs5, release: 2, amp: amp_up
  sleep 2
  amp_up = amp_up+0.25
  play :Fs5, release: 2, amp: amp_up
  sleep 2
  play :Fs5, release: 1, amp: amp_up
  sleep 1
  play :Fs5, release: 1, amp: amp_up
  sleep 1
  4.times do
    play :Fs5, release: 0.25, amp: amp_up
    sleep 0.25
    amp_up+0.0625
  end
  play :Ab5, release: 0.5
  sleep 58
end
sleep 68.5

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
  play :F5, release: 1
  sleep 1
  play :F5
  sleep 1
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
  play :Eb5, release: 3.25
  sleep 3.25
end

live_loop :sizzle2 do
  sample "C:/Users/achay/Downloads/Saturn.mp3"
  melody
  use_synth :pulse
  play :F5
  sleep 1
  play :F5
  sleep 1
  play :Bb4, amp: 0.8
  sleep 0.5
  play :Ab4, amp: 0.6
  sleep 0.5
  play :Bb4, amp: 0.4
  sleep 0.5
  play :Ab4, amp: 0.2
  sleep 1
  melody
  play :Eb5
  sleep 1
  play :F5
  sleep 1
  play :C5
  sleep 1
  play :C5
  sleep 2
  play :C5
  sleep 2
  play :C5
  sleep 2
  play :C5
  sleep 1
  play :Db5
  sleep 1
  play :Eb5
  sleep 1
  play :Eb5, release: 2
  sleep 2
  play :Eb5
  sleep 2
  play :C5
  sleep 2
  play :Db5
  sleep 1
  play :Eb5
  sleep 2
  play :Eb5
  sleep 2
  play :Eb5
  sleep 2
  play :Db5
  sleep 1
  play :Db5
  sleep 1
  play :Bb4
  sleep 1
  play :F5
  sleep 1
  play :C5
  sleep 2
  play :Bb4
  sleep 1
  with_fx :echo do
    play :Ab4, amp: 0.4, release: 4
  end
  sleep 130.75
end
