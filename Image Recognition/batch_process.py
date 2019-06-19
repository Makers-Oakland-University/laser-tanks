# import the necessary packages
import argparse
import imutils
import cv2
from os import listdir
from os.path import isfile, join
import random

# construct the argument parser and parse the arguments
ap = argparse.ArgumentParser()
ap.add_argument("-i", "--input", required=True,	help="path to image input folder")
ap.add_argument("-o", "--output", required=True, help="path to image output folder")
args = vars(ap.parse_args())

print(args)

cvNames = []
cvImages = []
cvGS = []
cvThresh = []
cvCont = []


onlyfiles = [f for f in listdir(args["input"]) if isfile(join(args["input"], f))]


for f in onlyfiles:
	cvNames.append(f)
	print(args["input"] +"\\" + f)
	cvImages.append(cv2.imread(args["input"] +"\\" + f))
	cv2.imshow(f, cvImages[-1])
cv2.waitKey(0)

for f in cvImages:
	cvGS.append(cv2.cvtColor(f, cv2.COLOR_BGR2GRAY))
	# cv2.imshow(str(random.randint(1,100000000000)), cvGS[-1])
# cv2.waitKey(0)

for f in cvGS:
	cvThresh.append(cv2.threshold(f, 225, 255, cv2.THRESH_BINARY_INV)[1])
	# cv2.imshow(str(random.randint(1,100000000000)), cvThresh[-1])
# cv2.waitKey(0)

for f in cvThresh:
	cvCont.append(cv2.findContours(f.copy(), cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE))
	cvCont[-1] = imutils.grab_contours(cvCont[-1])
# cv2.waitKey(0)

counter = 0
for f in cvImages:
	for c in cvCont[counter]:
		cv2.drawContours(f, [c], -1, (255, 0, 255), 5)
		cv2.imshow(str(random.randint(1,100000000000)), f)
		cv2.imwrite(args["output"] +"\\" + cvNames[counter], f)
	counter += 1
cv2.waitKey(0)