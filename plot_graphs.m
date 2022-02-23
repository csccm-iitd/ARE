
%% Periodic mthd__snsr
legends = {'ARE', 'PDS', 'SD'};
lgnd_loc = 'NE';
name = project_dir() + "periodic\mthd__snsr\error_periodic_mthd__snsr.pdf";
x_label = 'No. of sensors'; y_label = 'Prediction error';
path = project_dir() + "periodic\mthd__snsr\error_lstm.csv";

x_tick = [1, 2, 5, 10]; y_tick = logspace(log10(0.006), log10(0.5), 10);
axis_value = [0 11 0.006 0.5]; x_tick_lables = {'1','2','5','10'}; yscale_log = 1;

plot_graph(load(path), legends, lgnd_loc, x_tick, y_tick, name, x_label, y_label, axis_value, x_tick_lables, yscale_log);

%% Periodic mthd__snr
legends = {'ARE-1', 'PDS-1', 'SD-1', 'ARE-2', 'PDS-2', 'SD-2'};
lgnd_loc = 'NE';
name = project_dir() + "periodic\mthd__snr\error_periodic_mthd__snr.pdf";
x_label = 'SNR'; y_label = 'Prediction error';
path1 = project_dir() + "periodic\mthd__snr\error_lstm_1.csv";
path2 = project_dir() + "periodic\mthd__snr\error_lstm_2.csv";
data = [load(path1); load(path2)];

x_tick = 16:4:80; y_tick = 0;
axis_value = [0 11 0.006 0.5]; x_tick_lables = 0; yscale_log = 0;

plot_graph(data, legends, lgnd_loc, x_tick, y_tick, name, x_label, y_label, axis_value, x_tick_lables, yscale_log,1);

%% Transient mthd__snsr
legends = {'ARE', 'PDS', 'SD'};
lgnd_loc = 'NE';
name = project_dir() + "transient\mthd__snsr\error_transient_mthd__snsr.pdf";
x_label = 'No. of sensors'; y_label = 'Prediction error';
path = project_dir() + "transient\mthd__snsr\error_lstm.csv";

x_tick = [1, 2, 5, 10]; y_tick = 0;
axis_value = [0 11 0 0.6]; x_tick_lables = {'1','2','5','10'}; yscale_log = 0;

plot_graph(load(path), legends, lgnd_loc, x_tick, y_tick, name, x_label, y_label, axis_value, x_tick_lables, yscale_log);

%% Transient mthd__snr
legends = {'ARE-1', 'PDS-1', 'SD-1', 'ARE-2', 'PDS-2', 'SD-2'};
lgnd_loc = 'SE';
name = project_dir() + "transient\mthd__snr\error_transient_mthd__snr.pdf";
x_label = 'SNR'; y_label = 'Prediction error';
path1 = project_dir() + "transient\mthd__snr\error_lstm_1.csv";
path2 = project_dir() + "transient\mthd__snr\error_lstm_2.csv";
data = [load(path1); load(path2)];

x_tick = 20:4:80; y_tick = 0;
axis_value = [0 11 0.006 0.5]; x_tick_lables = 0; yscale_log = 0;

plot_graph(data, legends, lgnd_loc, x_tick, y_tick, name, x_label, y_label, axis_value, x_tick_lables, yscale_log, 1);

% x_tick = 4:4:80; y_tick = 0;
% name = project_dir() + "transient\mthd__snr\test_run\error_transient_mthd__snsr1.pdf";
% path1 = project_dir() + "transient\mthd__snr\test_run\error_lstm_1.csv";
% path2 = project_dir() + "transient\mthd__snr\test_run\error_lstm_2.csv";
% data = [load(path1); load(path2)];
% plot_graph(data, legends, lgnd_loc, x_tick, y_tick, name, x_label, y_label, axis_value, x_tick_lables, yscale_log);

%% SST mthd__snsr_with_noise
legends = {'ARE', 'PDS', 'SD'};
lgnd_loc = 'NE';
% name = project_dir() + "sea_temp\mthd__snsr_with_noise\error_sst_mthd__snsr_with_noise_SNR20.pdf";
x_label = 'No. of sensors'; y_label = 'Prediction error';
% path = project_dir() + "sea_temp\mthd__snsr_with_noise\error_lstm_seq_len7_SNR20.csv";

x_tick = [4, 8, 16, 32]; y_tick = 0;
axis_value = [0 11 0.006 0.5]; x_tick_lables = 0; yscale_log = 0;

% plot_graph(load(path), legends, lgnd_loc, x_tick, y_tick, name, x_label, y_label, axis_value, x_tick_lables, yscale_log);

name = project_dir() + "sea_temp\mthd__snsr_with_noise\error_sst_mthd__snsr_with_noise_SNR10.pdf";
path = project_dir() + "sea_temp\mthd__snsr_with_noise\error_lstm_seq_len7_SNR10.csv";
plot_graph(load(path), legends, lgnd_loc, x_tick, y_tick, name, x_label, y_label, axis_value, x_tick_lables, yscale_log);

name = project_dir() + "sea_temp\mthd__snsr_with_noise\error_sst_mthd__snsr_with_noise_SNR20.pdf";
path = project_dir() + "sea_temp\mthd__snsr_with_noise\error_lstm_seq_len7_SNR20.csv";
plot_graph(load(path), legends, lgnd_loc, x_tick, y_tick, name, x_label, y_label, axis_value, x_tick_lables, yscale_log);

name = project_dir() + "sea_temp\mthd__snsr_with_noise\error_sst_mthd__snsr_with_noise_SNR30.pdf";
path = project_dir() + "sea_temp\mthd__snsr_with_noise\error_lstm_seq_len7_SNR30.csv";
plot_graph(load(path), legends, lgnd_loc, x_tick, y_tick, name, x_label, y_label, axis_value, x_tick_lables, yscale_log);

%% SST mthd__snr
% legends = {'ARE-4', 'PDS-4', 'SD-4', 'ARE-8', 'PDS-8', 'SD-8'};
lgnd_loc = 'NW';
% name = project_dir() + "sea_temp\mthd__snr\error_sst_mthd__snr.pdf";
x_label = 'SNR'; y_label = 'Prediction error';
% path1 = project_dir() + "sea_temp\mthd__snr\error_lstm_4.csv";
% path2 = project_dir() + "sea_temp\mthd__snr\error_lstm_8.csv";
% data = load(path1);  % [load(path1); load(path2)];

x_tick = 0:5:75; y_tick = 0;
axis_value = [0 11 0.006 0.5]; x_tick_lables = 0; yscale_log = 0;

% plot_graph(data, legends, lgnd_loc, x_tick, y_tick, name, x_label, y_label, axis_value, x_tick_lables, yscale_log);

name = project_dir() + "sea_temp\mthd__snr\error_sst_mthd__snr_s1.pdf";
path = project_dir() + "sea_temp\mthd__snr\error_lstm_1.csv";
legends = {'ARE-1', 'PDS-1', 'SD-1'};
plot_graph(load(path), legends, lgnd_loc, x_tick, y_tick, name, x_label, y_label, axis_value, x_tick_lables, yscale_log);

name = project_dir() + "sea_temp\mthd__snr\error_sst_mthd__snr_s2.pdf";
path = project_dir() + "sea_temp\mthd__snr\error_lstm_2.csv";
legends = {'ARE-2', 'PDS-2', 'SD-2'};
plot_graph(load(path), legends, lgnd_loc, x_tick, y_tick, name, x_label, y_label, axis_value, x_tick_lables, yscale_log);

name = project_dir() + "sea_temp\mthd__snr\error_sst_mthd__snr_s4.pdf";
path = project_dir() + "sea_temp\mthd__snr\error_lstm_4.csv";
legends = {'ARE-4', 'PDS-4', 'SD-4'};
plot_graph(load(path), legends, lgnd_loc, x_tick, y_tick, name, x_label, y_label, axis_value, x_tick_lables, yscale_log);

%% SST mthd__bn
% legends = {'ARE-4', 'PDS-4', 'SD-4', 'ARE-8', 'PDS-8', 'SD-8'};
lgnd_loc = 'NW';
% name = project_dir() + "sea_temp\mthd__snr\error_sst_mthd__snr.pdf";
x_label = 'bottleneck'; y_label = 'Prediction error';
% path1 = project_dir() + "sea_temp\mthd__snr\error_lstm_4.csv";
% path2 = project_dir() + "sea_temp\mthd__snr\error_lstm_8.csv";
% data = load(path1);  % [load(path1); load(path2)];

x_tick = [5, 15, 25, 50]; y_tick = 0;
axis_value = [0 11 0.006 0.5]; x_tick_lables = 0; yscale_log = 0;

% plot_graph(data, legends, lgnd_loc, x_tick, y_tick, name, x_label, y_label, axis_value, x_tick_lables, yscale_log);

name = project_dir() + "sea_temp\mthd__bn\error_sst_mthd__bn_s2.pdf";
path = project_dir() + "sea_temp\mthd__bn\error_lstm_2.csv";
legends = {'ARE-2', 'PDS-2', 'SD-2'};
plot_graph(load(path), legends, lgnd_loc, x_tick, y_tick, name, x_label, y_label, axis_value, x_tick_lables, yscale_log);

name = project_dir() + "sea_temp\mthd__bn\error_sst_mthd__bn_s4.pdf";
path = project_dir() + "sea_temp\mthd__bn\error_lstm_4.csv";
legends = {'ARE-4', 'PDS-4', 'SD-4'};
plot_graph(load(path), legends, lgnd_loc, x_tick, y_tick, name, x_label, y_label, axis_value, x_tick_lables, yscale_log);

name = project_dir() + "sea_temp\mthd__bn\error_sst_mthd__bn_s8.pdf";
path = project_dir() + "sea_temp\mthd__bn\error_lstm_8.csv";
legends = {'ARE-8', 'PDS-8', 'SD-8'};
plot_graph(load(path), legends, lgnd_loc, x_tick, y_tick, name, x_label, y_label, axis_value, x_tick_lables, yscale_log);

%%

function project_dir = project_dir()
project_dir = "G:\My Drive\Colab Notebooks\are\weights_results\";
end


function plot_graph(data, legends, lgnd_loc, x_tick, y_tick, name, x_label, y_label, axis_value, x_tick_lables, yscale_log, m_legend)

disp(data);
clr = {'b','m','g','r','c','y'};
shapes = {'-o', '-s', '-*', '-p', '-+', '-d'};
figure;
% n_x_ticks = length(data);
n_line_graph = length(data(:, 1));
t = x_tick;

for i=1:n_line_graph
        
y_ = data(i,:); c_ = [shapes{i}, clr{i}];
p(i) = plot(t, y_, c_, 'MarkerSize',12, 'LineWidth',2);
hold on;
end
hold off

set(gcf,'color','w')
if yscale_log == 1
set(gca, 'YScale', 'log');
end
set(gca,'LineWidth',2/2,'FontSize',28/2,'FontWeight','normal','FontName','Times')
set(get(gca,'xlabel'),'String', x_label,'FontSize',32/2','FontWeight',...
'bold','FontName','Times','Interpreter','tex')
set(get(gca,'ylabel'),'String',y_label,'FontSize',32/2','FontWeight',...
'bold','FontName','Times','Interpreter','tex')
set(gcf,'Position',[1 1 round(1000/2) round(1000/2)])

if exist('m_legend','var')
    h1 = legend(p(1:3),legends(1:3),'FontSize',28/3,'FontWeight','normal','FontName','Times','Orientation','Horizontal');
    set(h1, 'Position', [0.4,0.87,0.5,0.035]);
    a=axes('position',get(gca,'position'),'visible','off');
    h2 = legend(a, p(4:6),legends(4:6),'FontWeight','normal','FontName','Times','Orientation','Horizontal');
    set(h2, 'Position', [0.4,0.87-0.038,0.5,0.035]);
else 
    h = legend(legends,'location',lgnd_loc,'FontSize',28/3,'FontWeight','normal','FontName','Times','Orientation','Vertical');
end

% export_fig(gcf,'scatter1.eps','-eps','-r300')
export_fig(gcf,name,'-pdf','-r300')

if axis_value ~= 0
    axis(axis_value)
end
if y_tick ~= 0
    yticks(y_tick)
end
if ~isnumeric(x_tick_lables)
    xticklabels(x_tick_lables)
end
xticks(t)

end
