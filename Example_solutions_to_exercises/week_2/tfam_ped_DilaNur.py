import sys

# Python_file.py ped_file tfam_file new_tfam_file

ped = open(sys.argv[1], "r")
ped_data = ped.read()
ped_data = ped_data.splitlines()

ped_ind = []
for i in range(len(ped_data)):
  x = ped_data[i].split(" ")[0:6]
  ped_ind.append(x)
    
tfam = open(sys.argv[2], "r")
tfam_data = tfam.read()
tfam_data = tfam_data.splitlines()

liste = []
for i in range(len(tfam_data)):
  temp = tfam_data[i].split(" ")
  if temp[1] == ped_ind[i][1]:
    temp[5] = ped_ind[i][5]
    x = " ".join(temp)
    liste.append(x)

with open(sys.argv[3], "w") as file:
    for data in liste:
        file.write(str(data)+"\n")

