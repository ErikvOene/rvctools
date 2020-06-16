function restart_rvc()
% this function must be located above all available rvctools folders

%% remove any existing rvctools already on the path
tmp = path; % using path directly belov doe not work
currentPath = strsplit(tmp,';'); 
a = contains(currentPath,'rvctools'); %logical index of all paths containing 'rvctools'

if sum(a) >0
    questionStr = sprintf(['rvctools already installed. If you which to ',...
    'continue the following folders will be removed from the path before ',...
    'added the ''new'' one:\n',repmat('\n%s',1,sum(a))],currentPath{a});
    answer = questdlg(questionStr,'Title','continue','cancel','cancel');
    if strcmp(answer,'cancel')
        return
    end
    % Remove these from the path
    rmpath(currentPath{a})
end


%% Add rvctools
rvctoolspath = fileparts(mfilename('fullpath' ));   % path of this function
list = dir([rvctoolspath,'\rvctools*']);            % find all possible rvctools folders
foldernames = {list.name};                          % extract the foldernames

if isempty(foldernames)
    error('no rvctools folder found')
elseif length(foldernames)==1
else
    [choice,tf] = listdlg('ListString',foldernames);
    if tf>1
        error('please select only one')
    end
    try
        run([rvctoolspath,filesep,foldernames{choice},filesep,'startup_rvc'])
    catch ME
        run([rvctoolspath,filesep,foldernames{choice},filesep,'common',filesep,'startup_rvc'])
    end
end
