image_name=viral-fusion-seq

cmd="perl 2.run.example.dataset.pl"

set -e

# folder for example run
data_folder=`realpath data`
references_folder=`realpath references`
annotation_folder=`realpath annotation`
output_folder=`realpath vfs_dev.data`

opt="${opt} -v ${data_folder}:/usr/src/app/data"
opt="${opt} -v ${references_folder}:/usr/src/app/references"
opt="${opt} -v ${annotation_folder}:/usr/src/app/annotation"
opt="${opt} -v ${output_folder}:/usr/src/app/vfs_dev.data"

# adhoc fix to run example
adhoc_folder="${adhoc_folder} vfs_dev.data/HKCI5a_gz.log/vfs_dev.data/"
adhoc_folder="${adhoc_folder} vfs_dev.data/HKCI5a_gz.log/map2genome.vfs_dev.data/"
adhoc_folder="${adhoc_folder} vfs_dev.data/HKCI5a_gz.log/blastn.vfs_dev.data/"
adhoc_folder="${adhoc_folder} vfs_dev.data/HKCI5a_gz_temp/"
mkdir -p ${adhoc_folder}

docker run $opt -i ${image_name} ${cmd}
