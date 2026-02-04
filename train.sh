# 小妖怪头
SHAPE_ID="003fe719725150960b14cdd6644afe5533743ef63d3767c495ab76a6384a9b2f"
# 女人上半身
SHAPE_ID="017c6e8b81a17c298baf2aba24fd62fa5a992ba8346bc86b2b5008caf1478873"
# 长发男人头
SHAPE_ID="0228c5cdba8393cd4d947ac2e915f769f684c73b87e6939c129611ba665cafcb"

DATA_PATH="${HOME}/chLi/Dataset/pixel_align/${SHAPE_ID}"

CUDA_VISIBLE_DEVICES=1 \
  python train.py \
  -s ${DATA_PATH}/colmap_v2 \
  -m ${DATA_PATH}/imls_splatting \
  --white_background \
  --resolution 2 \
  --expname test

exit

CUDA_VISIBLE_DEVICES=1 \
  python train.py \
  -s ${DATA_PATH}/colmap_v2 \
  -m ${DATA_PATH}/imls_splatting \
  --white_background \
  --SSAA 1 \
  --resolution 1 \
  --expname test \
  --meshscale 2.1 \
  --start_checkpoint_ply ${DATA_PATH}/imls_splatting/output/test/point_cloud/iteration_7000/point_cloud.ply
