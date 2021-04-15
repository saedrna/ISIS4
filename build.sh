mkdir build
cd build

cmake -GNinja \
    -DbuildTests=OFF \
    -DBUILD_TESTS=OFF \
    -DBUILD_TESTING=OFF \
    -DJP2KFLAG=OFF \
    -Dpybindings=OFF \
    -DCMAKE_INSTALL_PREFIX=$CONDA_PREFIX \
    -DCMAKE_PREFIX_PATH=$CONDA_PREFIX \
    -DOPENCV_INCLUDE_DIR=$CONDA_PREFIX/include/opencv4/opencv2 \
    ../isis

cmake --build . --target install --config Release

