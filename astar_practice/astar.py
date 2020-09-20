import math
import random


class node:
	def __init__(self,x,y):
		self.x=x
		self.y=y
		self.father=None
		self.G=0
		self.H=0
		self.F=0


map=[
	[1,0,0,0,0,0,0,0,0,0],
	[1,0,0,0,0,0,0,0,0,0],
	[1,1,1,0,0,0,0,0,0,0],
	[0,0,1,1,0,0,0,0,0,0],
	[0,0,0,1,0,0,0,0,0,0],
	[0,0,0,1,1,1,0,0,0,0],
	[0,0,0,0,0,1,0,0,0,0],
	[0,0,0,0,0,0,0,0,0,0],
	[0,0,0,0,0,0,0,0,0,0],
	[0,0,0,0,0,0,0,0,0,0],
]

start=node(0,1)
end=node(9,0)
start.G=0
start.H=abs(end.x-start.x)+abs(end.y-start.y)
for i in range(10):
	for j in range(10):
		if i==start.x and j==start.y :
			map[i][j]=start
		elif i==end.x and j==end.y :
			map[i][j]=end
		elif map[i][j]==1 :
			continue
		else :
			map[i][j]=node(i,j)

print('START~~~')
search=[[-1,-1,14],[-1,0,10],[-1,1,14],[0,-1,10],[0,1,10],[1,-1,14],[1,0,10],[1,1,14]]
path=[]
path.append(start)

for step in range(100):
	now=path[-1]
	print(now.x,now.y)
	if now.x==end.x and now.y==end.y:
		print('FINISH')
		break

	F_min=99999
	next_x=None
	next_y=None
	random.shuffle(search)

	for (x,y,w) in search:
		if (now.x+x)>=0 and (now.x+x)<10 and (now.y+y)>=0 and (now.y+y)<10 and map[now.x+x][now.y+y]!=1: #is node
			neighbor=map[now.x+x][now.y+y]

			if neighbor in path:
				continue

			if neighbor.G>now.G+w:
				neighbor.G=now.G+w

			neighbor.H=abs(end.x-neighbor.x)+abs(end.y-neighbor.y)
			neighbor.F=neighbor.H+neighbor.G
			if neighbor.F < F_min:
				F_min=neighbor.F
				next_x=x
				next_y=y
				neighbor.father=now

			map[now.x+x][now.y+y]=neighbor

	now=map[now.x+next_x][now.y+next_y]
	path.append(now)

for i in range(10):
	for j in range(10):
		if map[i][j] in path:
			print(' + ',end='')
		elif map[i][j]==1:
			print(' $ ',end='')
		else:
			print('   ',end='')
	print('')
