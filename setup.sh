cd ..
git clone --depth 1 https://github.com/NVlabs/nvdiffrast.git
git clone --depth 1 https://github.com/rahul-goel/fused-ssim.git
git clone --depth 1 https://github.com/camenduru/simple-knn.git

pip install ninja

pip3 install torch torchvision torchaudio \
  --index-url https://download.pytorch.org/whl/cu124

pip install plyfile tqdm opencv-python joblib open3d \
  imageio scikit-image

cd nvdiffrast
python setup.py install

cd ../fused-ssim
python setup.py install

cd ../simple-knn
python setup.py install

cd ../imls-splatting/submodules/diffsplatting
python setup.py install

cd ../dmc
python setup.py install

cd ../diff-gaussian-rasterization
python setup.py install
