mkdir core50
cd core50
echo "Starting CORe50-mini download..."
wget http://vps.continualai.org/data/core50_32x32.zip
wget https://vlomonaco.github.io/core50/data/batches_filelists.zip
wget https://vlomonaco.github.io/core50/data/batches_filelists_NICv2.zip
wget https://vlomonaco.github.io/core50/data/paths.pkl
wget https://vlomonaco.github.io/core50/data/LUP.pkl
wget https://vlomonaco.github.io/core50/data/labels.pkl
wget https://vlomonaco.github.io/core50/data/labels2names.pkl
echo "Starting to extract CORe50-mini zip file..."
unzip core50_32x32.zip
unzip batches_filelists.zip
unzip batches_filelists_NICv2.zip
echo "Done."
