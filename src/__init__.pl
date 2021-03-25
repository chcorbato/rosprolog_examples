% add prolog modules that you want to load when starting the prolog package
:- use_module(library('my_module')).

% load library to use the mongoDB to load and access OWL ontologies from prolog
:- use_module(library('db/tripledb'),
    [ tripledb_load/2 ]).
