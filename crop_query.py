import glob
import cv2

for query_fn in glob.glob('lab/*_query.txt'):
    query_fn = query_fn.strip()
    print(query_fn)
    with open(query_fn, 'rt') as fin:
        l = fin.readline().strip()
        img_fn = 'jpg/%s.jpg' % l.split()[0][len('oxc1_'):]
        print(img_fn)
        img = cv2.imread(img_fn)
        print(img_fn, img.shape)

        rect = [int(float(x)) for x in l.split()[1:]]
        print(rect)

        qimg = img[rect[1]:rect[3], rect[0]:rect[2]]
        qimg_fn = query_fn[:-len('.txt')] + '.jpg'
        print(qimg_fn)
        cv2.imwrite(qimg_fn, qimg)
