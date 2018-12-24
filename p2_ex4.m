% Plot markers

disp('2D plot, Example 4:')

marker='*.+soph<>v^xd';
for i=1:length(marker)
    x=1:20;
    switch marker(i)
    case '*'
        c = 'Asterisk';
    case '.'
        c = 'Point';
    case '+'
        c = 'Plus';
    case 's'
        c = 'Square';
    case 'o'
        c = 'Circle';
    case 'p'
        c = 'Pentagram';
    case 'h'
        c = 'Hexagram';
    case '<'
        c = 'Left triangle';
    case '>'
        c = 'Right triangle';
    case '^'
        c = 'Up triangle';
    case 'v'
        c = 'Down triangle';
    case 'x'
        c = 'Cross';
    case 'd'
        c = 'Diamond';
    otherwise
        c = 'Line';
    end
    plot(x,i*ones(size(x)),'Marker',marker(i),'DisplayName',c)
    hold('on')
end
hold('off')
title('Marker styles');
legend('show')
grid('off')
ylim([0 length(marker)+1])
xlim([0 21])