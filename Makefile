.PHONY: build

build:
	west build -s zmk/app -d build/left -b eyelash_corne_left -- -DZMK_CONFIG=${PWD}/config -DSHIELD=nice_view # -DZMK_EXTRA_MODULES=${PWD}/modules
	cp build/left/zephyr/zmk.uf2 build/eyelash_corne_left.uf2
	west build -s zmk/app -d build/right -b eyelash_corne_right -- -DZMK_CONFIG=${PWD}/config -DSHIELD=nice_view # -DZMK_EXTRA_MODULES=${PWD}/modules
	cp build/right/zephyr/zmk.uf2 build/eyelash_corne_right.uf2
