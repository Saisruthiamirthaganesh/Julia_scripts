using GeneticsMakie, CairoMakie, DataFrames, CSV, Arrow
summary_stats= CSV.read("iPSYCH-PGC_ASD_Nov2017",  DataFrame)
GeneticsMakie.mungesumstats!(summary_stats)
loci = GeneticsMakie.findgwasloci(summary_stats)
### Arrow.write("/Users/admin/asd_analysis/test_analysis_manplot/summary_stats.arrow", summary_stats)
GeneticsMakie.plotgwas!(Axis(1,1), summary_stats) ## ERROR: MethodError: no method matching _block(::Type{Axis}, ::Tuple{Int64, Int64})
GeneticsMakie.plotgwas!(summary_stats) ## MethodError: no method matching plotgwas!(::DataFrame)
