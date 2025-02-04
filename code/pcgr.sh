# test that it works
pcgr --version

sample_vcf=$(find -L ../data/ -name "*_somatic.vcf.gz" -o -name "*.somatic.vcf.gz" )
refdata_dir=$(find -L ../data/ -type d -name "Reference_Bundle")
vep_dir=$(find -L ../data/ -type d -name "VEP_Cache")

echo User settings:
echo Input VCF:- "$sample_vcf"
echo Sample ID:- "$1"
echo Tumour Site:- "$2"
echo Tumour Purity:- "$3"
echo Tumour Ploidy:- "$4"
echo Assay:- "$5"

echo Launching PCGR...


pcgr \
    --refdata_dir "$refdata_dir"    \
    --vep_dir "$vep_dir"    \
    --output_dir ../results     \
    --input_vcf "$sample_vcf" \
    --sample_id "$1"    \
    --genome_assembly grch38 \
    --tumor_site "$2" \
    --tumor_purity "$3" \
    --tumor_ploidy "$4" \
    --estimate_signatures \
    --estimate_msi \
    --estimate_tmb \
    --assay "$5"


