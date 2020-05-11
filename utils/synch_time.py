import os
import glob
import argparse
import open3d as o3d

def load_args():
    """
    load cli args 
    """
    parser = argparse.ArgumentParser()
    parser.add_argument('--x',type=str,nargs=1,help="input directory name")
    parser.add_argument('--y',type=str,nargs=1,help="input directory name")
    parser.add_argument('--o',type=str,nargs=1,help="output directory name")
    parser.add_argument('--t',type=float,nargs='+',help="MAX time lag (s)",default="0.0")
    args = parser.parse_args()
    return args
        
def main():
    args = load_args()
    input_x = sorted(os.listdir(args.x))
    input_y = sorted(os.listdir(args.y))
    for x in input_x:
        x = split(x,'.')[0]
        for y in input_y:
            y = split(y,'.')[0]
            if x == y:
                o3d.write_point_cloud(args.o + x,x)
                o3d.write_point_cloud(args.o + y,y)
    
main()
