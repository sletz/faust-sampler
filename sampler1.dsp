import("stdfaust.lib");

declare options "[midi:on][nvoices:16]";

process = so.loop_speed(soundfile("sound[url:{'violon.wav';'clarinetg4.wav'}]", 1), sample, speed) 
        * en.adsr(0.1, 0.1, 0.8, release, gate) * gain 
with {
    sample = nentry("sample",0,0,1,1);
    gate = button("gate");
    gain = hslider("gain",0.5,0,1,0.01);
    freq = hslider("freq",440,200,3000,0.1);
    release = hslider("release",0.5,0.1,2,0.01);
    speed = freq/440;
};

effect = dm.zita_light;