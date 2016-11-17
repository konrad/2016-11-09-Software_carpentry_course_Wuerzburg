import sys

input_file = sys.argv[1]

counter = 0
for line in open(input_file):
	if line.startswith(">"):
                counter += 1

print("The file {} contains {} sequences".format(input_file, counter))
print("The current counter:" + str(counter))
