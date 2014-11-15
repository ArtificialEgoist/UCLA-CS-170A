function notes = musical_notes(frequencies)

n=length(frequencies);
notes = [n,1];
octaves = [n,1];

C = 261.63; %frequency of C

    function c0 = c(z)
        c0 = 2^(z/12);
    end

for i=1:n
    freq=frequencies(i);
    octave_diff=0;
    
    while(freq>508.56) %this value is between B and a high C
        freq=freq/2; %check for lower octave
        octave_diff=octave_diff+1; %increment octave difference
    end

    while(freq<254.29) %this value is between C and a low B
        freq=freq*2; %check for higher octave
        octave_diff=octave_diff+1; %increment octave difference
    end
    
    %By now, freq is somewhere in range of first octave
    
    k=0;
    while(freq>c(k)*C)
        k=k+1;
    end
    
    %freq is between the note represented by k and (k-1)
    
    if(k==0 || k==11)
        notes(i)=k;
    else
        small=freq-C*c(k-1);
        large=C*c(k)-freq;
        
        if(small<large)
            notes(i)=k-1;
        else
            notes(i)=k;
        end
    end
    
    octaves(i)=octave_diff;
end

octaves %print out the octave difference for each note

end