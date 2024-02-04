# Pythonのベースイメージを使用
FROM python:3.8

# 作業ディレクトリを設定
WORKDIR /app

# 必要なPythonライブラリをインストール
RUN pip install --no-cache-dir numpy
# scipy pandas scikit-learn seaborn torch torchvision torchaudio
