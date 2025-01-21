# test that it works
pcgr --version

sample_vcf=$(find -L ../data/Sample_VCF/ -name "*.somatic.vcf.gz")

echo User settings:
echo Input VCF:- "$sample_vcf"
echo Sample ID:- "$1"
echo Tumour Site:- "$2"
echo Tumour Purity:- "$3"
echo Tumour Ploidy:- "$4"
echo Assay:- "$5"

echo Launching PCGR...

pcgr \
    --refdata_dir ../data/Reference_Bundle/    \
    --vep_dir ../data/VEP_Cache/    \
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


