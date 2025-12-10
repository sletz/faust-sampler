# faust-sampler

Example of samplers using the [soundfile](https://faustdoc.grame.fr/manual/syntax/#soundfile-primitive) primitive, to be played in monophonic (first example) or polyphonic mode (second and third examples):

- a test version to play a sample in loop: https://faustide.grame.fr/?code=https://raw.githubusercontent.com/sletz/faust-sampler/main/mono.dsp.

- a first version with 2 samples that can directly be launched using this link: https://faustide.grame.fr/?code=https://raw.githubusercontent.com/sletz/faust-sampler/main/sampler.dsp.

- another one with 4 piano samples to choose from and interpolated read, that can directly be launched using this link: https://faustide.grame.fr/?code=https://raw.githubusercontent.com/sletz/faust-sampler/main/piano.dsp.

The raw DSP files can also tested in the [test page](https://fausteditor.grame.fr/faustlive-wasm.html) by simply dropping the raw URLs:

- https://raw.githubusercontent.com/sletz/faust-sampler/main/mono.dsp for the mono case

- https://raw.githubusercontent.com/sletz/faust-sampler/main/sampler.dsp to be tested in polyphonic mode 

- https://raw.githubusercontent.com/sletz/faust-sampler/main/piano.dsp to be tested in polyphonic mode 

Soundfiles hosted on GitHub can also be accessed through the jsDelivr CDN, which provides CORS-enabled URLs, starting with https://cdn.jsdelivr.net/gh/. Therefore, the previous files can also be delivered using the following base URL: `declare soundfiles "https://cdn.jsdelivr.net/gh/sletz/faust-sampler/";`. 
