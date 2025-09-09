%% Parameters
t = 0:0.0001:0.01;
f = 100;
x_analog = sin(2*pi*f*t);

Fs_values = [150,200,1000];
bit_depths = [3,4,6];

figure;
plot(t, x_analog, 'LineWidth', 1.5);
title('Analog Signal (Sine Wave)');
xlabel('Time (s)'); ylabel('Amplitude');

figure;
subplot_idx = 1;

for Fs = Fs_values
    %% Sampling
    Ts = 1/Fs;
    n = 0:Ts:0.01;
    x_sampled = sin(2*pi*f*n);

    subplot(length(Fs_values), length(bit_depths)+1, subplot_idx);
    plot(t, x_analog, 'k--');
    hold on;
    stem(n, x_sampled, 'filled');
    title(['Sampling @ ' num2str(Fs) ' Hz']);
    xlabel('Time (s)');
    ylabel('Amplitude');
    subplot_idx = subplot_idx + 1;

    %% Quantization
    x_min = min(x_sampled);
    x_max = max(x_sampled);

    for bits = bit_depths
        levels = 2^bits;
        q_step = (x_max - x_min)/levels;
        x_index = round((x_sampled - x_min)/q_step);
        x_quantized = x_index*q_step + x_min;

        subplot(length(Fs_values), length(bit_depths)+1, subplot_idx);
        plot(t, x_analog, 'k--');
        hold on;
        stem(n, x_quantized, 'filled');
        title([num2str(bits) '-bits Quant @ ' num2str(Fs) ' Hz']);
        xlabel('Time (s)');
        ylabel('Amplitude');
        subplot_idx = subplot_idx + 1;

        binary_codes = dec2bin(x_index, bits);
        bitstream = reshape(binary_codes.',1,[]);

        disp([num2str(bits) '-bits Quant @ ' num2str(Fs) ' Hz']);

        if bits == 3
            disp('--- First 8 encoded samples ---');
            disp(binary_codes(1:8));
            disp('--- First 8 bits of the stream ---');
            disp(bitstream(1:8));
        else
            disp('--- First 10 encoded samples ---');
            disp(binary_codes(1:10));
            disp('--- First 10 bits of the stream ---');
            disp(bitstream(1:10));
        end
    end
end
