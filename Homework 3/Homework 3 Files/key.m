function note = key(wavfile)

[y,Fs]=wavread(wavfile);
n=length(y);

Y=fft(y);
power=abs(Y(2:(n/2+1))).^2;
NyquistFrequency = Fs/2;
frequencies=linspace(1, NyquistFrequency, n/2);

freq = frequencies(find(power==max(power)));

C = 261.63; %frequency of C

    function c0 = c(z)
        c0 = 2^(z/12);
    end

while(freq>508.56) %this value is between B and a high C
    freq=freq/2; %check for lower octave
end

while(freq<254.29) %this value is between C and a low B
    freq=freq*2; %check for higher octave
end

%By now, freq is somewhere in range of first octave

k=0;
while(freq>c(k)*C)
    k=k+1;
end

%freq is between the note represented by k and (k-1)

if(k==0 || k==11)
    note=k;
else
    small=freq-C*c(k-1);
    large=C*c(k)-freq;

    if(small<large)
        note=k-1;
    else
        note=k;
    end
end

end