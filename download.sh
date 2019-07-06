#!/bin/sh
set -x

curl -o oxbuild_images.tgz http://www.robots.ox.ac.uk/~vgg/data/oxbuildings/oxbuild_images.tgz
curl -o gt_files_170407.tgz http://www.robots.ox.ac.uk/~vgg/data/oxbuildings/gt_files_170407.tgz

mkdir jpg lab
tar xzf oxbuild_images.tgz -C jpg
tar xzf gt_files_170407.tgz -C lab

cd jpg; find *.jpg > ../image_list.txt
