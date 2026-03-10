| COMMAND   | ACTION |
| -------- | ------- |
| npm -v / --version | show version |
| npm / npm help | show help |
| npm init / init -y / --yes | create package.json |
| npm config set init-author-name "YOUR NAME" | set author |
| npm config get init-author-name | show author |
| npm config delete init-author-name | remove author |
| npm set init-license "MIT" | set license |
| npm get init-license | show license |
| npm delete init-license | remove license |
| npm init | set up new npm package <br> (with basic project info and type of project) |
| npm install | install local node_modules dependencies |
| npm upadate | update local node_modules dependencies |
| npm search TERM | search packages in npm registry |
| npm install PACKAGE-NAME | install package with dependencies |
| npm install PACKAGE-NAME --save-dev | install package with dependencies<br> and add it as development enviornment dependecy | 
| npm upate PACKAGE-NAME | update package with dependecies |
| npm uninstall PACKAGE-NAME | uninstall package with dependencies |
| npm install -g nodemon | install nodemon (live node development) |
| npm ls | show list of installed packages and dependencies |
| npm start | run commands defined by start property in package.json <br> (if not defined it will run the node server) |
| npm run build | run scripts defined by build property in package.json |
| npm -- watch FILE-PATH | run watch mode - live refresh on changes |
| npm ci | clean install - installs dependencies directly from a package-lock.json file. It is faster than npm install and ensures consistent, reproducible builds by deleting existing node_modules and avoiding package-lock.json updates |
| npm audit | scans project's package.json and package-lock.json for known security vulnerabilities in dependencies. It compares dependency tree against the GitHub Advisory Database, providing reports, severity levels, and automated fix suggestions. |

