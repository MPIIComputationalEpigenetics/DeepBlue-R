annotation_id = deepblue_select_annotations(
    annotation_name="CpG Islands",
    genome="hg19", chromosome="chr1")
data_id = deepblue_select_experiments(
    experiment_name="E002-H3K9ac.narrowPeak.bed")
merged_regions = deepblue_merge_queries(
    query_a_id = annotation_id,
    query_b_id = data_id)
deepblue_query_cache(
    query_id = merged_regions, cache = TRUE)