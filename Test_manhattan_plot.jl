using GeneticsMakie, CairoMakie, DataFrames, CSV
summary_stats= CSV.read("iPSYCH-PGC_ASD_Nov2017",  DataFrame)
GeneticsMakie.mungesumstats!(summary_stats)
loci = GeneticsMakie.findgwasloci(summary_stats)
