// Hide full path 

code $PROFILE // open terminal profile file 

function prompt { "$PWD  " -replace '^.*\\', '' } // paste in profile file and save
