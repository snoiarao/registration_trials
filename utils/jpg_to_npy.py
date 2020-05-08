#
# converts jpg file to numpy array
#

import PIL
import os
import numpy as np
import glob
import argparse

def convert(fname,outpath):
    """
    converts image to array, saves into outpath
    """
    img = PIL.Image.open(fname)
    img_arr = np.asarray(img)
    arr_path = outpath + fname
    np.save(arr_path,img_arr)
    print("saved ", fname, "to ", arr_path)

def loag_args():
    """
    loads command line arguments for flexibility 
    """
    parser = argparse.ArgumentParser()
    parser.add_argument('--d',nargs="*",type=str,help="directory of jpeg files")
    parser.add_argument('--f',nargs="*",type=str,help="jpeg file name")
    parser.add_argument('--out',type=str,help="outpath directory")
    args = parser.parse_args()
    return args

def main():
    """
    driver of function
    """
    args = load_args()
    
    if args.d:
        files = glob.glob(args.d[0] + "*.jpeg")
        files.extend(glob.glob(args.d[0] + "*.jpg"))
        files.extend(glob.glob(args.d[0] + "*.png"))
        for fname in files:
            convert(fname,args.out)
        
    if args.f:
        for fname in args.f:
            convert(fname,args.out)

