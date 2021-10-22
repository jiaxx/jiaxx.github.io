
%%

repRoot = '/Users/nick/github/Steinmetzlab.github.io/';
q = loadjson(fullfile(repRoot, '_data/oldPubs.json'));

%%

for n = 1:numel(q.papers)
    
    s = q.papers{n}.authors; 
    ss = strsplit(strrep(strrep(s, '<b>', ''), '</b>', ''), ', ');
    
    noInits = cellfun(@(x)strsplit(x,' '), ss, 'uni', false);
    for x = 1:numel(noInits)
        if strcmp(noInits{x}{1}, 'et')
            noInits{x} = 'et al.'; 
        elseif numel(noInits{x})>1 && contains(noInits{x}{2}, '*')
            noInits{x} = [noInits{x}{1} '*'];
        else
            noInits{x} = noInits{x}{1};
        end
    end
%     noInits = cellfun(@(x)x{1}, noInits, 'uni', false);
    
    q.papers{n}.authors = ss; 
    q.papers{n}.authors_short = noInits;
    
    % also fix tags??
    
    q.papers{n}.tags = cellfun(@(x)x{1}, q.papers{n}.tags, 'uni', false);
    
end

%%

j = savejson('', q);

j = strrep(j, '\/', '/'); % wtf

fid = fopen(fullfile(repRoot, '_data/pubs.json'), 'w');
fwrite(fid, j, 'char');