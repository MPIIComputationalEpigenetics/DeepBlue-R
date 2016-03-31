# Accessing Deepblue trough R
# For DeepBlue version 1.6.13

# We include a modified version of the XML-RPC library (http://bioconductor.org/packages/release/extra/html/XMLRPC.html) for R in this file.

deepblue.URL = "http://deepblue.mpi-inf.mpg.de/xmlrpc"
deepblue.USER_KEY = "anonymous_key"

deepblue.debug.VERBOSE = FALSE



#' 
#'@export 
#' 
#'@title Annotations 
#' Inserts a new annotation with the given parameters.
#' 
#' @param name - A string (annotation name)
#' @param genome - A string (the target genome)
#' @param description - A string (description of the annotation)
#' @param data - A string (the BED formatted data)
#' @param format - A string (format of the provided data)
#' @param extra_metadata - A struct (additional metadata)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', id of the newly inserted annotation) or ('error', error_message) 
deepblue.add_annotation <- function(name= NULL, genome= NULL, description= NULL, data= NULL, format= NULL, extra_metadata=NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'add_annotation', name, genome, description, data, format, extra_metadata, user_key)
}


#' 
#'@export 
#' 
#'@title BioSources 
#' Inserts a new biosource with the given parameters.
#' 
#' @param name - A string (biosource name)
#' @param description - A string (description of the biosource)
#' @param extra_metadata - A struct (additional metadata)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', id of the newly inserted biosource) or ('error', error_message) 
deepblue.add_biosource <- function(name= NULL, description= NULL, extra_metadata=NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'add_biosource', name, description, extra_metadata, user_key)
}


#' 
#'@export 
#' 
#'@title Epigenetic marks 
#' Inserts a new epigenetic mark with the given parameters.
#' 
#' @param name - A string (name of the epigenetic mark)
#' @param description - A string (description of the epigenetic mark)
#' @param extra_metadata - A struct (additional metadata)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', id of the newly inserted epigenetic mark) or ('error', error_message) 
deepblue.add_epigenetic_mark <- function(name= NULL, description= NULL, extra_metadata=NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'add_epigenetic_mark', name, description, extra_metadata, user_key)
}


#' 
#'@export 
#' 
#'@title Experiments 
#' Inserts a new experiment with the given parameters.
#' 
#' @param name - A string (experiment name)
#' @param genome - A string (the target genome)
#' @param epigenetic_mark - A string (epigenetic mark of the experiment)
#' @param sample - A string (id of the used sample)
#' @param technique - A string (technique used by this experiment)
#' @param project - A string (the project name)
#' @param description - A string (description of the experiment)
#' @param data - A string (the BED formated data)
#' @param format - A string (format of the provided data)
#' @param extra_metadata - A struct (additional metadata)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', id of the newly inserted experiment) or ('error', error_message) 
deepblue.add_experiment <- function(name= NULL, genome= NULL, epigenetic_mark= NULL, sample= NULL, technique= NULL, project= NULL, description= NULL, data= NULL, format= NULL, extra_metadata=NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'add_experiment', name, genome, epigenetic_mark, sample, technique, project, description, data, format, extra_metadata, user_key)
}


#' 
#'@export 
#' 
#'@title Genes 
#' Inserts a new set of genes in the GTF format. Important: It will only include the rows that have 'gene' as feature.
#' 
#' @param name - A string (gene set name)
#' @param description - A string (description of the annotation)
#' @param data - A string (the BED formatted data)
#' @param format - A string (Currently, it is only supported GTF.)
#' @param extra_metadata - A struct (additional metadata)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', id of the newly inserted annotation) or ('error', error_message) 
deepblue.add_gene_set <- function(name= NULL, description= NULL, data= NULL, format= NULL, extra_metadata=NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'add_gene_set', name, description, data, format, extra_metadata, user_key)
}


#' 
#'@export 
#' 
#'@title Genomes 
#' Inserts a new genome with the given parameters.
#' 
#' @param name - A string (genome name)
#' @param description - A string (description of the genome)
#' @param data - A string (genome data)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', id of the newly inserted genome) or ('error', error_message) 
deepblue.add_genome <- function(name= NULL, description= NULL, data= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'add_genome', name, description, data, user_key)
}


#' 
#'@export 
#' 
#'@title Projects 
#' Inserts a new project with the given parameters.
#' 
#' @param name - A string (projectname)
#' @param description - A string (description of the project)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', id of the newly inserted project) or ('error', error_message) 
deepblue.add_project <- function(name= NULL, description= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'add_project', name, description, user_key)
}


#' 
#'@export 
#' 
#'@title Samples 
#' Inserts a new sample of a given biosourcea.
#' 
#' @param biosource_name - A string (biosource name)
#' @param extra_metadata - A struct (sample extra metadata. You can include any key-value collection here.)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', id of the newly inserted sample) or ('error', error_message) 
deepblue.add_sample <- function(biosource_name= NULL, extra_metadata=NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'add_sample', biosource_name, extra_metadata, user_key)
}


#' 
#'@export 
#' 
#'@title Samples 
#' Import sample from an existing GSM identifier.
#' 
#' @param name - A string (biosource name)
#' @param gsm_id - A string (GSM ID)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', id of the newly inserted sample) or ('error', error_message) 
deepblue.add_sample_from_gsm <- function(name= NULL, gsm_id= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'add_sample_from_gsm', name, gsm_id, user_key)
}


#' 
#'@export 
#' 
#'@title Techniques 
#' Inserts a technique with the given parameters.
#' 
#' @param name - A string (technique name)
#' @param description - A string (description of technique)
#' @param extra_metadata - A struct (additional metadata)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', id of the newly inserted technique) or ('error', error_message) 
deepblue.add_technique <- function(name= NULL, description= NULL, extra_metadata=NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'add_technique', name, description, extra_metadata, user_key)
}


#' 
#'@export 
#' 
#'@title Projects 
#' Include or exclude an user from a project
#' 
#' @param user - A string (User name or ID)
#' @param project - A string (Project name or ID)
#' @param set - A boolean (True to include the user or false to remove)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', id of the user) or ('error', error_message) 
deepblue.add_user_to_project <- function(user= NULL, project= NULL, set= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'add_user_to_project', user, project, set, user_key)
}


#' 
#'@export 
#' 
#'@title Regions Operations 
#' Summarize the data regions content in range regions. Use the fields @AGG.MIN, @AGG.MAX, @AGG.MEDIAN, @AGG.MEAN, @AGG.VAR, @AGG.SD, @AGG.COUNT in the get_regions command format parameter for retrieving the computed values.
#' 
#' @param data_id - A string (id of the query with the data)
#' @param ranges_id - A string (id of the query with the regions range)
#' @param column - A string (name of the column that will be used in the aggregation)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', query id of this aggregation operation) or ('error', error_message) 
deepblue.aggregate <- function(data_id= NULL, ranges_id= NULL, column= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'aggregate', data_id, ranges_id, column, user_key)
}


#' 
#'@export 
#' 
#'@title General Information 
#' Stop, cancel, and remove request data. Its data will be remove if the request did finish.
#' 
#' @param id - A string (Request ID to be canceled, stopped or removed.)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', ID of the canceled request) or ('error', error_message) 
deepblue.cancel_request <- function(id= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'cancel_request', id, user_key)
}


#' 
#'@export 
#' 
#'@title Data Modification 
#' Change the extra metadata content for experiments, annotations, biosources, and samples.
#' 
#' @param id - A string (id of the data)
#' @param extra_metadata_key - A string (extra_metadata key)
#' @param extra_metadata_value - A string (extra_metadata key (empty for delete this key))
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', id of the modified data) or ('error', error_message) 
deepblue.change_extra_metadata <- function(id= NULL, extra_metadata_key= NULL, extra_metadata_value= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'change_extra_metadata', id, extra_metadata_key, extra_metadata_value, user_key)
}


#' 
#'@export 
#' 
#'@title Genomes 
#' List all chromosomes of a given genome.
#' 
#' @param genome - A string (the target genome)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', A list containing all chromosomes, with theirs names and sizes) or ('error', error_message) 
deepblue.chromosomes <- function(genome= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'chromosomes', genome, user_key)
}


#' 
#'@export 
#' 
#'@title Data Modification 
#' Clone the dataset, allowing to change the description, column format (restrictively), and extra_metadata.
#' 
#' @param dataset_id - A string (ID of the dataset (experiment or annotation ID))
#' @param new_name - A string (New dataset name)
#' @param new_epigenetic_mark - A string (New epigenetic mark)
#' @param new_sample - A string (New sample ID)
#' @param new_technique - A string (New technique)
#' @param new_project - A string (New project)
#' @param description - A string (description of the experiment - empty to copy from the cloned dataset)
#' @param format - A string (format of the provided data - empty to copy from the cloned dataset)
#' @param extra_metadata - A struct (additional metadata - empty to copy from the cloned dataset)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', id of the new dataset) or ('error', error_message) 
deepblue.clone_dataset <- function(dataset_id= NULL, new_name= NULL, new_epigenetic_mark= NULL, new_sample= NULL, new_technique= NULL, new_project= NULL, description= NULL, format= NULL, extra_metadata=NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'clone_dataset', dataset_id, new_name, new_epigenetic_mark, new_sample, new_technique, new_project, description, format, extra_metadata, user_key)
}


#' 
#'@export 
#' 
#'@title Status 
#' Lists all existing commands.
#' 
#'
#' @return a vector with  ('okay', command descriptions) or ('error', error_message) 
deepblue.commands <- function() {
    xml.rpc(deepblue.URL, 'commands')
}


#' 
#'@export 
#' 
#'@title Regions Operations 
#' Send a request to count the number of regions in the result of the given query.
#' 
#' @param query_id - A string (Query ID)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', Request ID - Use it to retrieve the result with info() and get_request_data()) or ('error', error_message) 
deepblue.count_regions <- function(query_id= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'count_regions', query_id, user_key)
}


#' 
#'@export 
#' 
#'@title Column Types 
#' Create a calculated column
#' 
#' @param name - A string (column type name)
#' @param description - A string (description of the column type)
#' @param code - A string (Lua code that will be executed)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', id of the newly created column type) or ('error', error_message) 
deepblue.create_column_type_calculated <- function(name= NULL, description= NULL, code= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'create_column_type_calculated', name, description, code, user_key)
}


#' 
#'@export 
#' 
#'@title Column Types 
#' Create a column type from a category set.
#' 
#' @param name - A string (column type name)
#' @param description - A string (description of the column type)
#' @param items - A string or a vector of string (items that are accepted for this category set)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', id of the newly created column type) or ('error', error_message) 
deepblue.create_column_type_category <- function(name= NULL, description= NULL, items= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'create_column_type_category', name, description, items, user_key)
}


#' 
#'@export 
#' 
#'@title Column Types 
#' Create a column type from a category set.
#' 
#' @param name - A string (column type name)
#' @param description - A string (description of the column type)
#' @param minimum - A double (minimum value for this range (inclusive))
#' @param maximum - A double (maximum value for this range (inclusive))
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', id of the newly created column type) or ('error', error_message) 
deepblue.create_column_type_range <- function(name= NULL, description= NULL, minimum= NULL, maximum= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'create_column_type_range', name, description, minimum, maximum, user_key)
}


#' 
#'@export 
#' 
#'@title Column Types 
#' Create a column type from a category set.
#' 
#' @param name - A string (column type name)
#' @param description - A string (description of the column type)
#' @param type - A string (type of the column type)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', id of the newly created column type) or ('error', error_message) 
deepblue.create_column_type_simple <- function(name= NULL, description= NULL, type= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'create_column_type_simple', name, description, type, user_key)
}


#' 
#'@export 
#' 
#'@title Status 
#' Echos the server's version.
#' 
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', echo message including version) or ('error', error_message) 
deepblue.echo <- function(user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'echo', user_key)
}


#' 
#'@export 
#' 
#'@title Utilities 
#' Extract the names from a list of ID and Names.
#' 
#' @param list - A array (list of lists of IDs and Names)
#'
#' @return a vector with  ('okay', list containing the extracted IDs) or ('error', error_message) 
deepblue.extract_ids <- function(list= NULL) {
    xml.rpc(deepblue.URL, 'extract_ids', list)
}


#' 
#'@export 
#' 
#'@title Utilities 
#' Extract the names from a list of ID and Names.
#' 
#' @param list - A array (list of lists of IDs and Names)
#'
#' @return a vector with  ('okay', list containing the extracted names) or ('error', error_message) 
deepblue.extract_names <- function(list= NULL) {
    xml.rpc(deepblue.URL, 'extract_names', list)
}


#' 
#'@export 
#' 
#'@title Experiments 
#' Experiments faceting.
#' 
#' @param genome - A string or a vector of string (the target genome)
#' @param type - A string or a vector of string (type of the experiment: peaks or signal)
#' @param epigenetic_mark - A string or a vector of string (name(s) of selected epigenetic mark(s))
#' @param biosource - A string or a vector of string (name(s) of selected biosource(s))
#' @param sample - A string or a vector of string (id(s) of selected sample(s))
#' @param technique - A string or a vector of string (name(s) of selected technique(s))
#' @param project - A string or a vector of string (name(s) of selected projects)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', Map with the mandatory fields of the experiments metadata, where each contains a list of terms that appears.) or ('error', error_message) 
deepblue.faceting_experiments <- function(genome= NULL, type= NULL, epigenetic_mark= NULL, biosource= NULL, sample= NULL, technique= NULL, project= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'faceting_experiments', genome, type, epigenetic_mark, biosource, sample, technique, project, user_key)
}


#' 
#'@export 
#' 
#'@title Regions Operations 
#' Filters the result of the given query by the given restrictions.
#' 
#' @param query_id - A string (id of the query to be filtered)
#' @param field - A string (field that is filtered by)
#' @param operation - A string (operation used for filtering. For 'string' must be '==' or '!=' and for 'number' must be one of these: ==,!=,>,>=,<,<=)
#' @param value - A string (value the operator is applied to)
#' @param type - A string (type of the value: 'number' or 'string' )
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', id of filtered query) or ('error', error_message) 
deepblue.filter_regions <- function(query_id= NULL, field= NULL, operation= NULL, value= NULL, type= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'filter_regions', query_id, field, operation, value, type, user_key)
}


#' 
#'@export 
#' 
#'@title Annotations 
#' Process an annotation that will contain all genomic positions from the given pattern.
#' 
#' @param pattern - A string (pattern (regular expression))
#' @param genome - A string (the target genome)
#' @param overlap - A boolean (if the matching should do overlap search)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', id of the annotation that contains the positions of the given pattern) or ('error', error_message) 
deepblue.find_pattern <- function(pattern= NULL, genome= NULL, overlap= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'find_pattern', pattern, genome, overlap, user_key)
}


#' 
#'@export 
#' 
#'@title Regions Operations 
#' Generate flanking regions for the given regions.
#' 
#' @param query_id - A string (id of the query that contains the regions)
#' @param start - A int (Number of base pairs after the end of the region. Use a negative number to denote the number of base pairs before the start of the region.)
#' @param length - A int (The new region length)
#' @param use_strand - A boolean (Use the region column STRAND to define the region direction)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', id of the new query) or ('error', error_message) 
deepblue.flank <- function(query_id= NULL, start= NULL, length= NULL, use_strand= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'flank', query_id, if (is.null(start)) NULL else as.integer(start), if (is.null(length)) NULL else as.integer(length), use_strand, user_key)
}


#' 
#'@export 
#' 
#'@title BioSources relationship 
#' Gets the scope for the biosource.
#' 
#' @param biosource - A string (name of the biosource)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', related biosources) or ('error', error_message) 
deepblue.get_biosource_children <- function(biosource= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'get_biosource_children', biosource, user_key)
}


#' 
#'@export 
#' 
#'@title BioSources relationship 
#' Gets the biosources that are parents of the given biosource.
#' 
#' @param biosource - A string (name of the biosource)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', parents biosources) or ('error', error_message) 
deepblue.get_biosource_parents <- function(biosource= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'get_biosource_parents', biosource, user_key)
}


#' 
#'@export 
#' 
#'@title BioSources relationship 
#' Gets biosources related to the given one. e.g. the children terms and theirs synonyms.
#' 
#' @param biosource - A string (name of the biosource)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', related biosources) or ('error', error_message) 
deepblue.get_biosource_related <- function(biosource= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'get_biosource_related', biosource, user_key)
}


#' 
#'@export 
#' 
#'@title BioSources relationship 
#' Gets the synonyms for the biosource.
#' 
#' @param biosource - A string (name of the biosource)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', synonyms of the biosource) or ('error', error_message) 
deepblue.get_biosource_synonyms <- function(biosource= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'get_biosource_synonyms', biosource, user_key)
}


#' 
#'@export 
#' 
#'@title Regions Operations 
#' Return a list of experiments and annotations that have at least one region in the data set represented by the query.
#' 
#' @param query_id - A string (id of the query)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', List containing experiments names and ids) or ('error', error_message) 
deepblue.get_experiments_by_query <- function(query_id= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'get_experiments_by_query', query_id, user_key)
}


#' 
#'@export 
#' 
#'@title Regions Operations 
#' Send a request  to retrieve the regions for the given query in the requested BED format.
#' 
#' @param query_id - A string (Query ID)
#' @param output_format - A string (Output format)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', Request ID - Use it to retrieve the result with info() and get_request_data()) or ('error', error_message) 
deepblue.get_regions <- function(query_id= NULL, output_format= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'get_regions', query_id, output_format, user_key)
}


#' 
#'@export 
#' 
#'@title Requests 
#' Get the request data.
#' 
#' @param request_id - A string (ID of the request)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', The output can be (i) a string (get_regions, score_matrix, and count_regions), or (ii) a list of ID and names (get_experiments_by_query).) or ('error', error_message) 
deepblue.get_request_data <- function(request_id= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'get_request_data', request_id, user_key)
}


#' 
#'@export 
#' 
#'@title General Information 
#' Returns the current state of specific data.
#' 
#' @param data_name - A string (Name of the data to lookup the state for)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', State of the data) or ('error', error_message) 
deepblue.get_state <- function(data_name= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'get_state', data_name, user_key)
}


#' 
#'@export 
#' 
#'@title General Information 
#' Return information for the given ID (or IDs).
#' 
#' @param id - A string or a vector of string (ID or an array of IDs)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', List of Maps, where each map contains the info of an object.) or ('error', error_message) 
deepblue.info <- function(id= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'info', id, user_key)
}


#' 
#'@export 
#' 
#'@title Regions Operations 
#' Include a region set that will be used by the follow ups operations.
#' 
#' @param genome - A string (the target genome)
#' @param region_set - A string (Regions in CHROMOSOME	START	END format)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', query id) or ('error', error_message) 
deepblue.input_regions <- function(genome= NULL, region_set= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'input_regions', genome, region_set, user_key)
}


#' 
#'@export 
#' 
#'@title Regions Operations 
#' Select regions from the first query that does intersect with at least one second query region.
#' 
#' @param query_a_id - A string (id of the first query)
#' @param query_b_id - A string (id of the second query)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', id of the new query) or ('error', error_message) 
deepblue.intersection <- function(query_a_id= NULL, query_b_id= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'intersection', query_a_id, query_b_id, user_key)
}


#' 
#'@export 
#' 
#'@title General Information 
#' Return information for the given biosource name.
#' 
#' @param biosource_name - A string (Name of the biosource)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', A string containing the biosource name) or ('error', error_message) 
deepblue.is_biosource <- function(biosource_name= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'is_biosource', biosource_name, user_key)
}


#' 
#'@export 
#' 
#'@title Annotations 
#' Lists all existing annotations.
#' 
#' @param genome - A string or a vector of string (the target genome)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', annotation ids) or ('error', error_message) 
deepblue.list_annotations <- function(genome= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'list_annotations', genome, user_key)
}


#' 
#'@export 
#' 
#'@title BioSources 
#' Lists all existing biosources.
#' 
#' @param extra_metadata - A struct (Key-value that must match the biosource extra_metadata.)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', biosources) or ('error', error_message) 
deepblue.list_biosources <- function(extra_metadata=NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'list_biosources', extra_metadata, user_key)
}


#' 
#'@export 
#' 
#'@title Column Types 
#' Lists all available column types.
#' 
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', column types) or ('error', error_message) 
deepblue.list_column_types <- function(user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'list_column_types', user_key)
}


#' 
#'@export 
#' 
#'@title Epigenetic marks 
#' Lists all existing epigenetic marks.
#' 
#' @param extra_metadata - A struct (Key-value that must match the biosource extra_metadata.)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', epigenetic mark names) or ('error', error_message) 
deepblue.list_epigenetic_marks <- function(extra_metadata=NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'list_epigenetic_marks', extra_metadata, user_key)
}


#' 
#'@export 
#' 
#'@title Experiments 
#' Lists all existing experiments.
#' 
#' @param genome - A string or a vector of string (the target genome)
#' @param type - A string or a vector of string (type of the experiment: peaks or signal)
#' @param epigenetic_mark - A string or a vector of string (name(s) of selected epigenetic mark(s))
#' @param biosource - A string or a vector of string (name(s) of selected biosource(s))
#' @param sample - A string or a vector of string (id(s) of selected sample(s))
#' @param technique - A string or a vector of string (name(s) of selected technique(s))
#' @param project - A string or a vector of string (name(s) of selected projects)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', experiment names) or ('error', error_message) 
deepblue.list_experiments <- function(genome= NULL, type= NULL, epigenetic_mark= NULL, biosource= NULL, sample= NULL, technique= NULL, project= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'list_experiments', genome, type, epigenetic_mark, biosource, sample, technique, project, user_key)
}


#' 
#'@export 
#' 
#'@title Genomes 
#' Lists all existing genomes.
#' 
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', genome names) or ('error', error_message) 
deepblue.list_genomes <- function(user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'list_genomes', user_key)
}


#' 
#'@export 
#' 
#'@title General Information 
#' Lists all terms from the given controlled vocabulary that are used.
#' 
#' @param controlled_vocabulary - A string (id of the data)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', controlled_vocabulary terms with count) or ('error', error_message) 
deepblue.list_in_use <- function(controlled_vocabulary= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'list_in_use', controlled_vocabulary, user_key)
}


#' 
#'@export 
#' 
#'@title Projects 
#' Lists all existing projects.
#' 
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', project names) or ('error', error_message) 
deepblue.list_projects <- function(user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'list_projects', user_key)
}


#' 
#'@export 
#' 
#'@title Experiments 
#' Lists all recent experiments.
#' 
#' @param days - A double (maximum days ago the experiments were added)
#' @param genome - A string or a vector of string (the target genome)
#' @param epigenetic_mark - A string or a vector of string (name(s) of selected epigenetic mark(s))
#' @param sample - A string or a vector of string (id(s) of selected sample(s))
#' @param technique - A string or a vector of string (name(s) of selected technique(es))
#' @param project - A string or a vector of string (name(s) of selected projects)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', names of recent experiments) or ('error', error_message) 
deepblue.list_recent_experiments <- function(days= NULL, genome= NULL, epigenetic_mark= NULL, sample= NULL, technique= NULL, project= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'list_recent_experiments', days, genome, epigenetic_mark, sample, technique, project, user_key)
}


#' 
#'@export 
#' 
#'@title Requests 
#' Lists all requests in given state.
#' 
#' @param request_state - A string (Name of the state to get requests for. The valid states are: new, running, done, and failed.)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', Request-IDs and their state) or ('error', error_message) 
deepblue.list_requests <- function(request_state= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'list_requests', request_state, user_key)
}


#' 
#'@export 
#' 
#'@title Samples 
#' Lists all existing samples that matches the given biosource and metadata.
#' 
#' @param biosource - A string or a vector of string (biosource name)
#' @param extra_metadata - A struct (Key-value that must match the sample extra_metadata.)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', samples id with their content) or ('error', error_message) 
deepblue.list_samples <- function(biosource= NULL, extra_metadata=NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'list_samples', biosource, extra_metadata, user_key)
}


#' 
#'@export 
#' 
#'@title BioSources 
#' Lists all biosources similar to the one provided.
#' 
#' @param name - A string (biosource name)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', similar biosources) or ('error', error_message) 
deepblue.list_similar_biosources <- function(name= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'list_similar_biosources', name, user_key)
}


#' 
#'@export 
#' 
#'@title Epigenetic marks 
#' Lists all epigenetic marks similar to the one provided.
#' 
#' @param name - A string (epigenetic mark name)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', similar epigenetic mark names) or ('error', error_message) 
deepblue.list_similar_epigenetic_marks <- function(name= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'list_similar_epigenetic_marks', name, user_key)
}


#' 
#'@export 
#' 
#'@title Experiments 
#' Lists all experiments similar to the one provided.
#' 
#' @param name - A string (experiment name)
#' @param genome - A string or a vector of string (the target genome)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', similar experiment names) or ('error', error_message) 
deepblue.list_similar_experiments <- function(name= NULL, genome= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'list_similar_experiments', name, genome, user_key)
}


#' 
#'@export 
#' 
#'@title Genomes 
#' Lists all genomes similar to the one provided.
#' 
#' @param name - A string (genome name)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', similar genome names) or ('error', error_message) 
deepblue.list_similar_genomes <- function(name= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'list_similar_genomes', name, user_key)
}


#' 
#'@export 
#' 
#'@title Projects 
#' Lists all projects similar to the one provided.
#' 
#' @param name - A string (project name)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', similar project names) or ('error', error_message) 
deepblue.list_similar_projects <- function(name= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'list_similar_projects', name, user_key)
}


#' 
#'@export 
#' 
#'@title Techniques 
#' Lists all techniques similar to the one provided.
#' 
#' @param name - A string (technique name)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', similar techniques) or ('error', error_message) 
deepblue.list_similar_techniques <- function(name= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'list_similar_techniques', name, user_key)
}


#' 
#'@export 
#' 
#'@title Techniques 
#' Lists all existing techniques.
#' 
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', techniques) or ('error', error_message) 
deepblue.list_techniques <- function(user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'list_techniques', user_key)
}


#' 
#'@export 
#' 
#'@title Regions Operations 
#' Merges the regions of the given queries.
#' 
#' @param query_a_id - A string (id of the first query)
#' @param query_b_id - A string (id of the second query)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', new query id) or ('error', error_message) 
deepblue.merge_queries <- function(query_a_id= NULL, query_b_id= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'merge_queries', query_a_id, query_b_id, user_key)
}


#' 
#'@export 
#' 
#'@title Regions Operations 
#' Return information for the given ID (or IDs).
#' 
#' @param query_id - A string (query ID)
#' @param cache - A boolean (set or unset this query caching)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', New query ID.) or ('error', error_message) 
deepblue.query_cache <- function(query_id= NULL, cache= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'query_cache', query_id, cache, user_key)
}


#' 
#'@export 
#' 
#'@title Regions Operations 
#' Return information for the given ID (or IDs).
#' 
#' @param query_id - A string (query ID)
#' @param type - A string (experiment type (peaks or signal))
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', New query ID.) or ('error', error_message) 
deepblue.query_experiment_type <- function(query_id= NULL, type= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'query_experiment_type', query_id, type, user_key)
}


#' 
#'@export 
#' 
#'@title General Information 
#' Remove data from DeepBlue.
#' 
#' @param id - A string (Data ID to be removed.)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', id of the removed data) or ('error', error_message) 
deepblue.remove <- function(id= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'remove', id, user_key)
}


#' 
#'@export 
#' 
#'@title Regions Operations 
#' Build a matrix containing the aggregation result of the the experiments data by aggregation regions.
#' 
#' @param experiments_columns - A struct (map with experiments names and columns to be processed. Example : {'wgEncodeBroadHistoneDnd41H3k27acSig.wig':'VALUE', 'wgEncodeBroadHistoneCd20ro01794H3k27acSig.wig':'VALUE'})
#' @param aggregation_function - A string (aggregation function name: min, max, mean, var, sd, median, count, boolean)
#' @param aggregation_regions_id - A string (query ID of the regions that will be used as the aggregation boundaries)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', BED formated regions) or ('error', error_message) 
deepblue.score_matrix <- function(experiments_columns= NULL, aggregation_function= NULL, aggregation_regions_id= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'score_matrix', experiments_columns, aggregation_function, aggregation_regions_id, user_key)
}


#' 
#'@export 
#' 
#'@title General Information 
#' Search all data of all types for the given keyword. A minus (-) character in front of a keyword searches for data without the given keyword. The search can be restricted to the following data types are: annotations,biosources,column_types,epigenetic_marks,experiments,genomes,gene_sets,genes,projects,samples,techniques,tilings
#' 
#' @param keyword - A string (keyword to search by)
#' @param type - A string or a vector of string (type of data to search for)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', search results as [id, name, type]) or ('error', error_message) 
deepblue.search <- function(keyword= NULL, type= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'search', keyword, type, user_key)
}


#' 
#'@export 
#' 
#'@title Regions Operations 
#' Selects annotation regions matching the given parameters.
#' 
#' @param annotation_name - A string or a vector of string (name(s) of selected annotation(s))
#' @param genome - A string or a vector of string (the target genome)
#' @param chromosome - A string or a vector of string (chromosome name(s))
#' @param start - A int (minimum start region)
#' @param end - A int (maximum end region)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', query id) or ('error', error_message) 
deepblue.select_annotations <- function(annotation_name= NULL, genome= NULL, chromosome= NULL, start= NULL, end= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'select_annotations', annotation_name, genome, chromosome, if (is.null(start)) NULL else as.integer(start), if (is.null(end)) NULL else as.integer(end), user_key)
}


#' 
#'@export 
#' 
#'@title Regions Operations 
#' Selects experiments data. It is a simpler version of the select_regions command.
#' 
#' @param experiment_name - A string or a vector of string (name(s) of selected experiment(s))
#' @param chromosome - A string or a vector of string (chromosome name(s))
#' @param start - A int (minimum start region)
#' @param end - A int (maximum end region)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', query id) or ('error', error_message) 
deepblue.select_experiments <- function(experiment_name= NULL, chromosome= NULL, start= NULL, end= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'select_experiments', experiment_name, chromosome, if (is.null(start)) NULL else as.integer(start), if (is.null(end)) NULL else as.integer(end), user_key)
}


#' 
#'@export 
#' 
#'@title Genes 
#' Selects genes as regions.
#' 
#' @param genes_name - A string or a vector of string (genes(s) (ENSB ID or ENSB name))
#' @param gene_set - A string (gene set name)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', query id) or ('error', error_message) 
deepblue.select_genes <- function(genes_name= NULL, gene_set= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'select_genes', genes_name, gene_set, user_key)
}


#' 
#'@export 
#' 
#'@title Regions Operations 
#' Selects experiment regions matching the given parameters.
#' 
#' @param experiment_name - A string or a vector of string (name(s) of selected experiment(s))
#' @param genome - A string or a vector of string (the target genome)
#' @param epigenetic_mark - A string or a vector of string (name(s) of selected epigenetic mark(s))
#' @param sample_id - A string or a vector of string (id(s) of selected sample(s))
#' @param technique - A string or a vector of string (name(s) of selected technique(es))
#' @param project - A string or a vector of string (name(s) of selected projects)
#' @param chromosome - A string or a vector of string (chromosome name(s))
#' @param start - A int (minimum start region)
#' @param end - A int (maximum end region)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', query id) or ('error', error_message) 
deepblue.select_regions <- function(experiment_name= NULL, genome= NULL, epigenetic_mark= NULL, sample_id= NULL, technique= NULL, project= NULL, chromosome= NULL, start= NULL, end= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'select_regions', experiment_name, genome, epigenetic_mark, sample_id, technique, project, chromosome, if (is.null(start)) NULL else as.integer(start), if (is.null(end)) NULL else as.integer(end), user_key)
}


#' 
#'@export 
#' 
#'@title BioSources relationship 
#' Sets a biosource parent.
#' 
#' @param parent - A string (parent)
#' @param child - A string (child)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', ) or ('error', error_message) 
deepblue.set_biosource_parent <- function(parent= NULL, child= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'set_biosource_parent', parent, child, user_key)
}


#' 
#'@export 
#' 
#'@title BioSources relationship 
#' Sets a biosource synonym.
#' 
#' @param biosource - A string (name of the biosource)
#' @param synonym_name - A string (name of the synonym)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', inserted synonym_name) or ('error', error_message) 
deepblue.set_biosource_synonym <- function(biosource= NULL, synonym_name= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'set_biosource_synonym', biosource, synonym_name, user_key)
}


#' 
#'@export 
#' 
#'@title Projects 
#' Set a project as public. You must be the project owner to perform this operation.
#' 
#' @param project - A string (Project name or ID)
#' @param set - A boolean (True to set the project as public of false for unset)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', id of the project) or ('error', error_message) 
deepblue.set_project_public <- function(project= NULL, set= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'set_project_public', project, set, user_key)
}


#' 
#'@export 
#' 
#'@title Regions Operations 
#' Creates regions with the tiling size over the chromosomes.
#' 
#' @param size - A int (tiling size)
#' @param genome - A string (the target genome)
#' @param chromosome - A string or a vector of string (chromosome name(s))
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', query id) or ('error', error_message) 
deepblue.tiling_regions <- function(size= NULL, genome= NULL, chromosome= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'tiling_regions', if (is.null(size)) NULL else as.integer(size), genome, chromosome, user_key)
}


#' 
#'@export 
#' 
#'@title Genomes 
#' Uploads the sequence data of the chromosome.
#' 
#' @param genome - A string (the target genome)
#' @param chromosome - A string (chromosome name)
#' @param data - A string (chromosome sequence data)
#' @param user_key - A string (users token key)
#'
#' @return a vector with  ('okay', ) or ('error', error_message) 
deepblue.upload_chromosome <- function(genome= NULL, chromosome= NULL, data= NULL, user_key=deepblue.USER_KEY) {
    xml.rpc(deepblue.URL, 'upload_chromosome', genome, chromosome, data, user_key)
}


library(XML)
library(RCurl)


deepblue.get_request_data_r <-function(request_id, user_key=deepblue.USER_KEY,
        .defaultOpts = list(httpheader = c('Content-Type' = "text/xml"), followlocation = TRUE, useragent = useragent),
        .curl = getCurlHandle())
{
  request_info = deepblue.info(request_id, user_key)[2]
  if (request_info$value$value$state != "done") {
    stop("Processing was not finished. Please, check it status with deepblue.info(request_id)");
  }

  command = request_info$value$value$command
  if (command == "count_regions")  {
    deepblue.get_request_data(request_id, user_key)
  } else if (command == "get_experiments_by_query") {
    deepblue.get_request_data(request_id, user_key)
  } else if (command == "get_regions") {
    url = paste("http://deepblue.mpi-inf.mpg.de/xmlrpc/download/?r=", request_id, "&key=", user_key, sep="")
    temp_download <- tempfile()
    download.file(url, temp_download, mode="wb")
    handle <-  bzfile(temp_download)
    readLines(handle)
  } else if (command == "score_matrix") {
    url = paste("http://deepblue.mpi-inf.mpg.de/xmlrpc/download/?r=", request_id, "&key=", user_key, sep="")
    temp_download <- tempfile()
    download.file(url, temp_download, mode="wb")
    handle <-  bzfile(temp_download)
    readLines(handle)
  } else {
    stop(paste("Unknow command", command));
  }
}

xml.rpc =
function(url, method, ..., .args = list(...),
          .opts = list(),
          .defaultOpts = list(httpheader = c('Content-Type' = "text/xml"), followlocation = TRUE, useragent = useragent),
          .convert = TRUE, .curl = getCurlHandle(), useragent = "DeepBlue-R-XMLRPC", verbose=deepblue.debug.VERBOSE)
{
    # Turn the method and arguments to an RPC body.
  body = createBody(method,  .args)
  if(verbose)
    print(body)

    # merge the .defaultOpts and the .opts into one list.
  .defaultOpts[["postfields"]] = saveXML(body)
  if(length(.opts))
     .defaultOpts[names(.opts)] = .opts

  rdr = dynCurlReader(.curl, baseURL = url)
  .defaultOpts[["headerfunction"]] = rdr$update
  postForm(url, .opts = .defaultOpts, style = "POST", curl = .curl)

  hdr = parseHTTPHeader(rdr$header())
  if(as.integer(hdr[["status"]]) %/% 100 !=  2) {
    print(hdr["status"])
       # call an RCurl error generator function.
     stop("Problems")
  }
  ans = rdr$value()
  if (verbose)
    print(ans)

   # Now either convert using the default converter fnction (convertToR)
   # or return as is or allow the caller to specify a function to use for conversion.
  if(is.logical(.convert)) {
    if(.convert){
      convertToR(ans)
    }

    else
      ans
  } else if(is.function(.convert))
          .convert(ans)
  else
      ans
}

createBody =
function(method, args)
{
  top = newXMLNode("methodCall", newXMLNode("methodName", method))
  params = newXMLNode("params", parent = top)
  sapply(args, function(x) newXMLNode("param", rpc.serialize(x), parent = params))
  top
}

setGeneric("rpc.serialize", function(x, ...) standardGeneric("rpc.serialize"))

setMethod("rpc.serialize", "ANY",
           function(x, ...) {
              if(isS4(x))
                return(rpc.serialize.S4Object(x, ...))

              stop("Not sure how to convert this type of object to XMLRPC format")
           })

rpc.serialize.S4Object =
function(x, ...)
{
  els = slotNames(x)
  rpc.serialize(structure(lapply(els, function(id) slot(x, id)), names = els), ...)
}


basicTypeMap =
  c("integer" = "i4",
    "double" = "double",
    "character" = "string",
    "logical" = "boolean",
    "POSIXt" = "dateTime.iso8601",
    "POSIXct" = "dateTime.iso8601",
    "Date" = "dateTime.iso8601",
    "list" = "array",
    "raw" = "base64")

cast <- function(x) {
  if (is.logical(x))
    as.integer(x)
  else
    x
}

setOldClass("AsIs")

setMethod("rpc.serialize", "AsIs",
           function(x) {
             type = basicTypeMap[typeof(x)]
             vectorArray(x, type)
           })

setMethod("rpc.serialize", "NULL",
           function(x, ...) {
             newXMLNode("value", newXMLNode("nil"))
           })

setMethod("rpc.serialize", "raw",
           function(x, ...) {
#              x = gsub("\\n", "", x)
              val = base64Encode(x)
              newXMLNode("value", newXMLNode("base64", val))
           })


setMethod("rpc.serialize", "Date",
           function(x, ...) {
             val = format(x, "%Y%m%dT%H:%H:%S")
             if(length(x) == 1)
                newXMLNode("value", newXMLNode("dateTime.iso8601", val))
             else
                vectorArray(val, basicTypeMap["Date"])
           })

setMethod("rpc.serialize", "POSIXt",
           function(x, ...) {
             val = format(as.POSIXct(x), "%Y%m%dT%H:%H:%S")
             if(length(x) == 1)
                newXMLNode("value", newXMLNode("dateTime.iso8601", val))
             else
                vectorArray(val, basicTypeMap["POSIXt"])
           })

setMethod("rpc.serialize", "vector",
           function(x, ...) {
              type = basicTypeMap[typeof(x)]
              x = cast(x)

              if(length(names(x))) {
                warning("Skipping names on vector!")
                names(x) = NULL
              }

#              else
              {
                if(length(x) == 1)
                  newXMLNode("value", newXMLNode(type, if(type == "string") newXMLCDataNode(x) else x))
                else {
                  vectorArray(x, type)
                }
              }
           })


FormatStrings = c(numeric = "%f", integer = "%d", logical = "%s",
                   i4 = "%d", double = "%f",
                  string = "%s", Date = "%s",  POSIXt = "%s", POSIXct = "%s")

vectorArray =
function(x, type)
{
  top = newXMLNode("value")
  a = newXMLNode("array", parent = top)
  data = newXMLNode("data", parent = a)
#  sapply(x, function(x) newXMLNode("value", newXMLNode(type, if(type == "string") newXMLCDataNode(x) else x), parent = data))

  tmpl = if(type == "string")  # is.character(x))
            sprintf("<value><%s><![CDATA[%%s]]></%s></value>", type, type)
         else if(type == "dateTime.iso8601") {
            if(is(x, "Date"))
               x = format(x, "%Y%m%dT00:00:00")
            else
               x = format(as.POSIXct(x), "%Y%m%dT%H:%H:%S")
            sprintf("<value><%s>%%s</%s></value>", type, type)
         } else {
           if(type == "double") {
              x = as.character(x)
              pct = "%s"
           } else
             pct = FormatStrings[type]

           if(is.na(pct)) pct = "%s"
           sprintf("<value><%s>%s</%s></value>", type, pct, type)
         }

  txt = sprintf(tmpl, x)
  parseXMLAndAdd(txt, data)

#  sapply(x, function(x)  newXMLNode(type, if(type == "string") newXMLCDataNode(x) else x, parent = data))
  top
}

setMethod("rpc.serialize", "list",
           function(x, ...) {
              if(length(names(x))) {
                  a = newXMLNode("struct")
                  sapply(names(x), function(id) {
                                     newXMLNode("member",
                                        newXMLNode("name", id),
                                        rpc.serialize(x[[id]]), parent = a)
                                   })
                  newXMLNode("value", a)
              } else {
                a = newXMLNode("array")
                data = newXMLNode("data", parent = a)
                v <- sapply(x, function(x) {
                    rpc.serialize(x)
                })
                addChildren(data, v)
                newXMLNode("value", a)
              }
           })


setGeneric('convertToR', function(node) standardGeneric('convertToR'))

setMethod('convertToR', 'XMLInternalDocument', function(node)
{
    fault = getNodeSet(node,path="//methodResponse/fault/value/struct")
    if (length(fault) > 0) {
          fault = xmlRPCToR(fault[[1]])
          e = simpleError(paste("faultCode: ",  fault$faultCode, " faultString: ", fault$faultString))
          class(e) = c("XMLRPCError", class(e))
          stop(e)
    }
    a = xpathApply(node, "//param/value", xmlRPCToR)
    if(length(a) == 1)
      a[[1]]
    else
      a
})

setMethod('convertToR', 'XMLInternalNode',
function(node)
{
   if(length(getNodeSet(node, "./param/value"))) {
     ans = xpathApply(node, "./param/value", xmlRPCToR, simplify = FALSE)
   } else
      xmlToList(node)
})

setMethod('convertToR', 'character',
function(node)
{
  xml = xmlParse(node, asText = TRUE)
  convertToR(xml)
})

xmlRPCToR =
function(node, ...)
{
  if(is.null(node))
    return(NULL)

  if(xmlName(node) == "value") {
    node = node[[1]]
  }

  if(is(node, "XMLInternalTextNode")) {
    return(xmlValue(node))
  }

  type = xmlName(node)
  switch(type,
         'array' = xmlRPCToR.array(node, ...),
         'struct' = xmlRPCToR.struct(node, ...),
         'i4' = as.integer(xmlValue(node)),
         'int' = as.integer(xmlValue(node)),
         'boolean' = if(xmlValue(node) == "1") TRUE else FALSE,
         'double' = as.numeric(xmlValue(node)),
         'string' = xmlValue(node),
         'dateTime.iso8601' = as.POSIXct(strptime(xmlValue(node), "%Y%m%dT%H:%M:%S")),
         'base64' = base64(xmlValue(node), encode = FALSE),
         xmlValue(node)
        )

}

xmlRPCToR.struct =
function(node, ...)
{
  ans = xmlApply(node, function(x) xmlRPCToR(x[["value"]][[1]], ...))
  names(ans) = xmlSApply(node, function(x) xmlValue(x[["name"]]))
  ans
}


xmlRPCToR.array =
function(node, ...)
{
  ans = xmlApply(node[["data"]], function(x) xmlRPCToR(x[[1]]))
}


