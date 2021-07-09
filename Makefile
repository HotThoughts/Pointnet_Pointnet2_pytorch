data: modelnet shapenet

modelnet: install-modelnet prepare-modelnet clean-modelnet
install-modelnet:
  wget --no-check-certificate https://shapenet.cs.stanford.edu/media/modelnet40_normal_resampled.zip
prepare-modelnet:
  unzip modelnet40_normal_resampled
  mkdir -p data/
  mv modelnet40_normal_resampled/ data/
clean-modelnet:
  rm -rf modelnet40_normal_resampled.zip


shapenet: install-shapenet prepare-shapenet clean-shapenet
install-shapenet:
  wget --no-check-certificate https://shapenet.cs.stanford.edu/media/shapenetcore_partanno_segmentation_benchmark_v0_normal.zip
prepare-shapenet:
  unzip shapenetcore_partanno_segmentation_benchmark_v0_normal.zip
  mkdir -p data/
  mv shapenetcore_partanno_segmentation_benchmark_v0_normal/ data/
clean-shapenet:
  rm -rf shapenetcore_partanno_segmentation_benchmark_v0_normal.zip
