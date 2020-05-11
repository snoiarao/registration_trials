import os


nl = [8,10,12,16,20]
hl = [0.75,1.0,1.25,1.5,1.75,2.0,2.25,2.5,2.75]
rl = [.01,.05,.1,.5,.75,1.0,1.5]

File_object = open(r"test_param.sh","a")

for n in nl:
	for h in hl:
		for r in rl:
			cmd = "./3DSmoothNet -f training/down/X_1574105370.315410890.ply training/down/Y_1574105370.376882055.ply -k training/key/X_1574105370.315410890.txt training/key/Y_1574105370.376882055.txt -o ./param_exp/ -r " + str(r) + " -h " + str(h) + " -n " + str(n) + "\n"
			File_object.write(cmd)
File_object.close()
