% add prolog modules that you want to load when starting the prolog package

:- use_module(library('my_module')).

% load library to handle any RDFS database (e.g. an OWL ontology)
:- use_module(library('semweb/rdfs')).
:- use_module(library('semweb/rdf_db')).

% load example ontology 
rdf_load('../owl/example.owl').

% set a shorter prefix to access elements in the ontology
rdf_register_prefix(eqpo, 'http://ro47014/ontologies/2021/course-project-example#', [keep(true)]).