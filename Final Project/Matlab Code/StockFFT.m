function StockFFT(fileName)

%copy down the information into 'fileName.csv'
s=urlread(strcat('http://ichart.finance.yahoo.com/table.csv?s=',fileName));
fid=fopen(strcat(fileName,'.csv'),'wt');
fprintf(fid,s);

[time, quotes] = read_stock(strcat(fileName,'.csv'));
n = length(quotes);
power_spectrum = abs(fft(quotes)).^2;
frequencies = linspace(0, 1.0, n);
%% 1.0 <=> stock sampling frequency is once per day <=> units are in days
plot(frequencies(2:floor(n/2)), power_spectrum(2:floor(n/2))); % ignore 1st coeff
xlabel('Frequency')
ylabel('Power')
%% zoom in and inspect the power spectrum at the especified frequencies
freqs = linspace(0, 252, length(power_spectrum));
xlabel('Frequency')
ylabel('Power')
%% 252 <=> stock sampling frequency is 252 times per year <=> units are in years
figure; plot( freqs, power_spectrum );