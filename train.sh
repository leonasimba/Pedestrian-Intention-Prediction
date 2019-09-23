CUDA_VISIBLE_DEVICES="1" python3 -m openpifpaf.train \
  --pre-lr=1e-5 \
  --lr=1e-5 \
  --momentum=0.95 \
  --epochs=20 \
  --lr-decay 60 70 \
  --jaad_batch_size=3 \
  --batch-size=6 \
  --basenet=resnet50block5 \
  --head-quad=1 \
  --headnets pif paf crm \
  --square-edge=401 \
  --regression-loss=laplace \
  --lambdas 30 2 2 50 3 3 \
  --freeze-base=1 \
  --jaad_train "singletxt_train_3s" --jaad_val "singletxt_val_3s" --jaad_pre_train "singletxt_pre_train_3s"