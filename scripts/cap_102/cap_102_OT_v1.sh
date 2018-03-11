#!/bin/bash

start=`date +%s`

# train and test
DEVICE_ID=0
CUDA_VISIBLE_DEVICES=$DEVICE_ID python holly_capsule.py \
--device_id=$DEVICE_ID \
--experiment_name=cap_102_OT_v1_loss_fac20 \
--cap_model=v2 \
--net_config=set_OT \
--ot_loss \
--ot_loss_fac=20 \
--schedule 350 450 550 \
--debug_mode=False \
--less_data_aug \


end=`date +%s`
runtime=$((end-start))

echo "Completed in" $runtime "seconds"