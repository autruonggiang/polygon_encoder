

python3 -m polygonembed.dbtopo.train_spa_rel.py  \
--data_dir ./data_processing/dbtopo/output/  \
--model_dir ./model_dir/dbtopo/  \
--log_dir ./model_dir/dbtopo/  \
--pgon_filename pgon_300_gdf_prj.pkl  \
--triple_filename pgon_triples_geom_300_norm_df.pkl \
--geom_type_list norm \
--data_split_num 0 \
--task rel \
--model_type cat \
--pgon_enc nuft_ddsl  \
--pgon_embed_dim 512 \
--nuft_freqXY 32 32 \
--j 2 \
--padding_mode circular \
--do_polygon_random_start T \
--do_data_augment F \
--do_online_data_augment F \
--data_augment_type none \
--num_augment 0 \
--dropout 0.1 \
--spa_enc kdelta \
--spa_embed_dim  26  \
--freq  16  \
--max_radius  2  \
--min_radius   1e-6  \
--spa_f_act   relu  \
--freq_init   geometric  \
--spa_enc_use_postmat F \
--k_delta 12 \
--num_hidden_layer  1  \
--hidden_dim   512  \
--use_layn   T  \
--skip_connection  T  \
--pgon_dec explicit_conv \
--pgon_dec_grid_init circle  \
--pgon_dec_grid_enc_type spa_enc  \
--grt_loss_func LOOPL2 \
--do_weight_norm F \
--weight_decay 0.000 \
--pgon_norm_reg_weight 0.02 \
--task_loss_weight 0.95 \
--grt_epoches 0 \
--cla_epoches 5 \
--log_every 100 \
--val_every 100 \
--batch_size  128 \
--lr   0.01  \
--opt  adam  \
--act relu  \
--balanced_train_loader F \
--device cuda:0 \
--tb F
