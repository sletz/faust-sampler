import("stdfaust.lib");

declare soundfiles "https://raw.githubusercontent.com/sletz/faust-sampler/main";

process = so.loop_speed(soundfile("sound[url:{'violon.wav'}]", 1), 0, 1);
   