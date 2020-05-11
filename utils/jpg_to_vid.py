import cv2
import numpy as np
import glob
import os

def convert(files,outpath):
    """
    files: list object of file names
    outpath: str of path to save video

    converts image sequence to .avi video, saves into outpath
    """
    
    for fname in files:
        img = cv2.imread(fname)
        height, width, layers = img.shape
        size = (width,height)
        img_array.append(img) 
        out = cv2.VideoWriter(outpath,cv2.VideoWriter_fourcc(*'DIVX'), 7, size)
        for i in range(len(img_array)):
            out.write(img_array[i])
        out.release()
        print("saved ", fname, " to ", outpath)
        
def loag_args():
    """
    loads command line arguments for flexibility 
    """
    parser = argparse.ArgumentParser()
    parser.add_argument('--d',type=str,help="directory of jpeg files")
    parser.add_argument('--out',type=str,help="outpath directory")
    args = parser.parse_args()
    return args

def main():
    """
    driver of function
    """
    args = load_args()
    files = glob.glob(args.d + "*.jpeg")
    files.extend(glob.glob(args.d + "*.jpg"))
    files.extend(glob.glob(args.d + "*.png"))
    convert(files,args.out)


