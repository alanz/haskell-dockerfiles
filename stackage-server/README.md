Dockerised version of [stackage-server](https://github.com/fpco/stackage-server)


To run

First start up a Postgresql instance

    docker run --name my-postgres -e POSTGRES_USER=stackage_server -e POSTGRES_PASSWORD=password -d postgres


Then run the stackage server

    docker run --name stackage --link my-postgres:postgres -p 3000:3000 -i -t alanz/stackage-server

Point your browser at http://localhost:3000

Log in with persona.
