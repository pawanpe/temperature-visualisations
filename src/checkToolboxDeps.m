function checkToolboxDeps
% CHECKTOOLBOXDEPS used to run at project startup and check for dependent
% toolboxes. Also print if any toolboxes required.

    toolboxes = ["finance"];
    
    for i =1:size(toolboxes,1)
        a = ver(toolboxes(i));
        if isempty(a)
            fprintf("This project requires the %s toolbox, it doesn't seem to be installed. Please install it.\n", toolboxes(i))
            doc 'plot'
        end
    end

end
