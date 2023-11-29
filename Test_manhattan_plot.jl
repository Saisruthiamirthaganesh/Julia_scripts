using GeneticsMakie, CairoMakie, DataFrames, CSV, Arrow
summary_stats= CSV.read("iPSYCH-PGC_ASD_Nov2017",  DataFrame)
GeneticsMakie.mungesumstats!(summary_stats)
loci = GeneticsMakie.findgwasloci(summary_stats)
Arrow.write("/Users/admin/asd_analysis/test_analysis_manplot/summary_stats.arrow", summary_stats)
