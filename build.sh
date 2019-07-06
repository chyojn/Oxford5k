#!/bin/sh
set -x

if false; then
    curl -o oxbuild_images.tgz http://www.robots.ox.ac.uk/~vgg/data/oxbuildings/oxbuild_images.tgz
    curl -o gt_files_170407.tgz http://www.robots.ox.ac.uk/~vgg/data/oxbuildings/gt_files_170407.tgz

    mkdir jpg lab
    tar xzf oxbuild_images.tgz -C jpg
    tar xzf gt_files_170407.tgz -C lab
fi

if false; then
    python crop_query.py
fi

if false; then
    cd jpg; find *.jpg > ../image_base.txt; cd ..
    cd lab; find *.jpg > ../image_query.txt; cd ..
    wc -l image_*.txt
    head image_*.txt
fi

if false; then
    cd jpg
    cat ../image_base.txt | xargs -P 4 -I fn ${HESAFF} fn 
    cd ..
    cd lab
    cat ../image_query.txt | xargs -P 4 -I fn ${HESAFF} fn 
    cd ..
fi
