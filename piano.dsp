import("stdfaust.lib");

declare options "[midi:on][nvoices:16]";
declare soundfiles "https://raw.githubusercontent.com/sletz/faust-sampler/main";

piano = soundfile("files[url:{'piano-C5.ogg';'piano-G5.ogg';'piano-C6.ogg';'piano-G6.ogg'}]",2);

sample = so.sound(piano, nentry("sample", 0, 0, 3, 1));

process = sample.play_interp(440.0, freq, gain, gate, it.cubic)
with {
    freq = hslider("freq", 440, 440, 440*2, 1);
    gain = hslider("gain", 0.5, 0, 1, 0.01);
    gate = button("gate");
};

effect = dm.freeverb_demo;

