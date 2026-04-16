rest_time=[0.5, 0.6, 0.7, 1]
samp=["C:/Users/jordan_simpson/Downloads/audiomass-output-HitoM.mp3", "C:/Users/jordan_simpson/Downloads/Mesm.mp3", "C:/Users/jordan_simpson/Downloads/Rawr.mp3"
      ]
i=0
x=0.5
define :gtof do
  play :Gb5,amp: x
  sleep 0.5
  x=x-0.1
  play :F5, amp: x
  sleep 0.5
end
define :tobitai do |changer|
  play :Cs5
  sleep changer
  play :D5
  sleep changer
  play :Ds5
end
define :ladder do
  i=0
  play :Ab5
  sleep 1
  2.times do
    play :Ab5
    sleep rest_time[i]
    play :Bb5
    sleep rest_time[i]
    play :Ab5
    sleep 1
  end
  play :Gb5
  sleep 1
  play :F5
  sleep 1
  3.times do
    play :Eb5
    sleep rest_time[i]
    play :Db5
    sleep rest_time[i]
  end
  play :Eb5
  sleep rest_time[i]
  2.times do
    play :F5
    sleep 1
  end
  play :Gb5
  sleep rest_time[i]
  play :F5
  sleep rest_time[i]
  play :Gb5
  sleep rest_time[i]
  play :F5
  sleep 1
  play :Eb5
  sleep rest_time[i]
  play :Db5
  sleep rest_time[i]
  play :Ab5
  sleep 1
  2.times do
    play :Ab5
    sleep rest_time[i]
    play :Bb5
    sleep rest_time[i]
    play :Ab5
    sleep 1
  end
  play :Gb5
  sleep 1
  play :F5
  sleep 1
  3.times do
    play :Eb5
    sleep rest_time[i]
    play :Db5
    sleep rest_time[i]
  end
  play :Eb5
  sleep rest_time[i]
  play :Db6
  sleep 1
  play :Bb5
  sleep 1
  play :Bb5
  sleep rest_time[i]
end

amp_up=0.1
live_loop :HitoMesm do
  i=1
  use_bpm 179
  use_synth :sine
  4.times do
    play :Ab4, amp: amp_up, release: rest_time[i]
    sleep rest_time[i]
    amp_up = amp_up+0.2
  end
  3.times do
    play :Fs4, release: 0.6
    sleep rest_time[i]
  end
  play :Fs4, release: 0.6
  sleep 0.7
  play :Fs4, release: 0.6
  sleep rest_time[i]
  play :Fs4, release: 0.3
  sleep 0.3
  play :Fs4, release: 0.6
  sleep 1.6
  play :C3, release: 0.6
  play :G4, release: 0.6
  sleep rest_time[i]
  4.times do
    play :G4, release: 0.6
    sleep rest_time[i]
  end
  2.times do
    play :G4, release: 0.3
    sleep 0.3
  end
  play :G4, release: 0.7
  sleep 0.7
  play :Gs4, release: 0.8
  sleep 0.8
  sample samp[0]
  play :D4, release: 5
  play :F4, release: 5
  play :A4, release: 5
  sleep 5
  play :Bb4, release: 1.2
  play :Ds4, release: 1.2
  sleep 1.2
  play :Fs4, release: 1.2
  sleep 1.2
  play :F4, release: 1.2
  sleep 1.2
  play :Fs4, release: 1.2
  sleep 1.2
  play :Ds4, release: 0.6
  sleep rest_time[i]
  2.times do
    play :Ds5, release: 0.6
    sleep rest_time[i]
  end
  play :As4, release: 0.6
  sleep rest_time[i]
  play :As4, release: 1.2
  sleep 1.2
  play :Gs4
  sleep rest_time[i]
  play :Fs4
  sleep rest_time[i]
  play :Gs4
  sleep rest_time[i]
  3.times do
    play :Gs4
    play :Bb4
    sleep rest_time[i]
  end
  2.times do
    play :Gs1, amp: 10
    sleep rest_time[i]
  end
  play :Fs4
  sleep rest_time[i]
  play :Ds4
  sleep rest_time[i]
  play :As4
  sleep rest_time[i]
  2.times do
    play :Ds4
    sleep 0.35
  end
  play :Ds4
  sleep rest_time[i]
  2.times do
    play :Ds4
    sleep 0.35
  end
  2.times do
    play :Ds4
    sleep rest_time[i]
  end
  play :D4
  sleep rest_time[i]
  play :Ds4
  sleep rest_time[i]
  tobitai 0.6
  sleep 1.2
  2.times do
    tobitai 0.3
    sleep rest_time[i]
  end
  sleep 0.9
  play :Ds5
  sleep rest_time[i]
  4.times do
    play :As4
    sleep rest_time[i]
  end
  play :Gs4
  sleep rest_time[i]
  play :Fs4
  sleep rest_time[i]
  play :Gs4
  sleep rest_time[i]
  play :As4
  sleep rest_time[i]
  play :B4
  sleep rest_time[i]
  play :D5
  sleep rest_time[i]
  play :B4
  sleep rest_time[i]
  play :As4
  sleep 1.2
  play :B4
  sleep rest_time[i]
  play :Bs4
  sleep rest_time[i]
  play :Cs5
  sleep rest_time[i]
  play :Gs4
  sleep rest_time[i]
  play :Fs4
  sleep 1.2
  play :B4
  sleep rest_time[i]
  2.times do
    play :As4
    sleep rest_time[i]
  end
  play :Fs4
  sleep rest_time[i]
  play :D4
  sleep 1.2
  play :Ds4
  sleep 1.2
  i=0
  play :As4
  sleep 1.2
  play :Ds4, sustain: 4.5
  play :Fs4, sustain: 4.5
  play :Ds5, sustain: 4.5
  sleep 5
  sample samp[1]
  sleep 0.5
  use_bpm 185
  use_synth :pretty_bell
  play :Ds4
  play :Fs4
  play :Ds5
  sleep 1
  play :Eb5
  sleep 1
  play :F5
  sleep 0.5
  ladder
  play :Ab5
  sleep 0.5
  2.times do
    gtof
  end
  play :Gb5
  sleep 0.5
  ladder
  2.times do
    play :A5
    sleep rest_time[i]
  end
  x=0.3
  2.times do
    play :Ab5, amp: x
    sleep rest_time[i]
    x=x-0.025
  end
  gtof
  sample samp[2]
  play :Eb5, amp: x
  sleep 2
  stop
end
