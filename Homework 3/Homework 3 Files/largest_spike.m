function [spike_freq,spike_power] = largest_spike(power,freq_range)

position = find(power==max(power));
spike_freq = freq_range(position);
spike_power = power(position); %same as max(power)