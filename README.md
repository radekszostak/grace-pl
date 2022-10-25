# grace-pl

## Setting up environment
`docker build . -t grace-pl`\
`docker create -p 8888:8888 --name grace-pl-container grace-pl:latest`

## Running environment
`docker start --interactive grace-pl-container`\
Run in browser or attach to IDE: http://localhost:8888/
