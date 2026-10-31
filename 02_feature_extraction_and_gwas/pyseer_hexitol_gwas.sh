python phylogeny_distance.py \
  250_strains.nwk \
  > phylogeny_dists.tsv

pyseer \
  --phenotypes phenotype_hexitol.tsv \
  --phenotype-column hexitol_metabolism \
  --pres ko_presence_absence.Rtab \
  --distances phylogeny_dists.tsv \
  --max-dimensions 3 \
  --cpu 5 \
  > ../output/hexitol.assoc 2> ../output/hexitol.log