%MATPOWER Power Flow Analysis with runpf

tic;                                                % starts a stopwatch timer to measure the execution time of the code block.
clc;                                                % clears the command window for a clean output.
%Gauss Seidel Power Flow
mpopt = mpoption('pf.alg', 'GS', 'verbose', 3);    % sets the MATPOWER options for the power flow analysis. 'pf.alg', 'GS' specifies
                                                   % the Gauss-Seidel algorithm, and 'verbose', 3 sets the verbosity level to 3 (providing detailed output).

runpf('case9', mpopt);                             % runs the power flow analysis using the 'case9' system data and the specified options.

%Newton Raphson Power Flow
 mpopt = mpoption('pf.alg', 'NR', 'verbose', 3);   % sets the algorithm to Newton-Raphson and adjusts verbosity level.
 runpf('case9', mpopt);                            % runs the power flow analysis using the Newton-Raphson algorithm.

%Fast Decoupled Power Flow
 mpopt = mpoption('pf.alg', 'FDXB', 'verbose', 3); % sets the algorithm to Fast Decoupled and adjusts verbosity level.
 runpf('case9', mpopt);                            % runs the power flow analysis using the Fast Decoupled algorithm.

 toc;                                              %toc; stops the stopwatch timer and displays the elapsed time since the tic command was executed. 
                                                   %This provides the total execution time of the code block.
