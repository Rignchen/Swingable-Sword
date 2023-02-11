from os import listdir, system

maxi = 0
bigest = ""
bad = []
mt = []
system("cls")

def surch(extension:list[str],path:str,function = None):
	out = 0
	if path[-1] != "/": path += "/"
	try:liste = listdir(path)
	except FileNotFoundError:return 0
	for a in liste:
		try:
			open(path + a).close()
			b = a.split(".")
			if b[-1] in extension:
				out += 1
				if function:function(path + a)
		except:
			out += surch(extension,path + a,function)
	return out

def max_linie(mcfunction):
	global maxi, bigest, bad
	out = 0
	a = open(mcfunction,"r")
	b = a.readlines()
	a.close()
	try:
		if b[0][0:2] != "##":
			bad.append(mcfunction)
	except IndexError:bad.append(mcfunction)
	for a in b:
		if a[0] != "#" and a != "\n" and a != "":
			out += 1
	if out == 0:
		mt.append(mcfunction)
	if out >= maxi:
		maxi = out
		bigest = mcfunction

print("advancements:" + str(surch(["json"],"data/swing/advancements")) + " (display: " + str(surch(["json"],"data/swing/advancements/display")) + ")")
print("functions:" + str(surch(["mcfunction"],"data/swing/functions",max_linie)) + " (bigest: " + str(maxi) + " (" + bigest + "))")
print("predicates:" + str(surch(["json"],"data/swing/predicates")))
print("recipes:" + str(surch(["json"],"data/swing/recipes")))
print("loot_tables:" + str(surch(["json"],"data/swing/loot_tables")))
print("plugin:" + str(surch(["json"],"data/swing/tags/functions")))
if bad != []:print("/!\ " + str(len(bad)) + " fonctions aren't comment: " + str(bad))
if mt != []:print("/!\ " + str(len(mt)) + " fonctions aren't comment: " + str(mt))
input()
