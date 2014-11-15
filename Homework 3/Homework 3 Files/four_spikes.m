function four_spikes(power,freq_range)

pos1 = find(power==max(power));
spike_freq1 = freq_range(pos1)
spike_power1 = power(pos1);
power(pos1)=0;

pos2 = find(power==max(power));
spike_freq2 = freq_range(pos2)
spike_power2 = power(pos2);
power(pos2)=0;

pos3 = find(power==max(power));
spike_freq3 = freq_range(pos3)
spike_power3 = power(pos3);
power(pos3)=0;

pos4 = find(power==max(power));
spike_freq4 = freq_range(pos4)
spike_power4 = power(pos4);