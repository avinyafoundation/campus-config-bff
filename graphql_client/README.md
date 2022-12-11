Fetch shema in json format and save to shema.json file 

If not already done, install:
https://github.com/potatosalad/graphql-introspection-json-to-sdl

graphql-introspection-json-to-sdl schema.json > schema.graphql

copy queries and mutatons to relavant files pointed by graphql.config.yaml

bal graphql -i graphql.config.yaml -o graphql_client_cg_src
