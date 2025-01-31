#!/bin/bash

set -e  # Hata olursa scripti durdur

echo "NVIDIA sürücülerini kaldırıyorum..."
sudo modprobe -r nvidia_uvm 
sudo modprobe -r nvidia_drm
sudo modprobe -r nvidia_modeset
sudo modprobe -r nvidia

echo "VBIOS yedeği alınıyor..."
sudo ./nvflash --save vbios.rom

echo "NVIDIA sürücülerini geri yüklüyorum..."
sudo modprobe nvidia
sudo modprobe nvidia_uvm
sudo modprobe nvidia
sudo modprobe nvidia_modeset

echo "İşlem tamamlandı!"
