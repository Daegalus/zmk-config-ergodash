#!/bin/bash
cd ../zmk/app
west build -d build/left -p -b nice_nano -- -DSHIELD=ergodash_left -DZMK_CONFIG="/home/yulian/build/zmk-config/config"
west build -d build/right -p -b nice_nano -- -DSHIELD=ergodash_right -DZMK_CONFIG="/home/yulian/build/zmk-config/config"

cp build/left/zephyr/zmk.uf2 ../../zmk-config/ergodash_left.uf2
cp build/right/zephyr/zmk.uf2 ../../zmk-config/ergodash_right.uf2
cp build/left/zephyr/zmk.uf2 /mnt/c/Users/Threadripper/Desktop/ergodash_left.uf2
cp build/right/zephyr/zmk.uf2 /mnt/c/Users/Threadripper/Desktop/ergodash_right.uf2