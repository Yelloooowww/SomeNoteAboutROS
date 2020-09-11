import math
import random
import sys
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import cm
from matplotlib.colors import ListedColormap, LinearSegmentedColormap


color_now= -3
color_end= -3.5
color_node=0
color_have_searched=-0.5
color_search=-1
color_obstacle=-5


class node:
	def __init__(self,x,y):
		self.x=x
		self.y=y
		self.father=None
		self.G=0
		self.H=0
		self.F=0


class Astar_animation():
	def __init__(self,map):
		self.map_size=np.shape(map)
		print(self.map_size)
		self.clicktime=0
		self.start=None
		self.end=None
		self.map=map
		self.path=[]
		self.data_animation=[]
		self.last_search=[]

		for i in range(self.map_size[0]):
			for j in range(self.map_size[1]):
				if not self.map[i][j]==1 :self.map[i][j]=node(i,j)

		frame=np.zeros(self.map_size)#color_obstacle
		for i in range(self.map_size[0]):
			for j in range(self.map_size[1]):
				if self.map[i][j]==1:frame[i][j]=color_obstacle
		self.data_animation.append(frame)
		fig, self.axs = plt.subplots()
		self.axs.set_xticks(np.arange(-0.5,self.map_size[1]))
		self.axs.set_yticks(np.arange(-0.5,self.map_size[0]))
		self.psm=self.axs.imshow(self.data_animation[0],cmap='bone')
		self.cid = self.psm.figure.canvas.mpl_connect('button_press_event', self)
		plt.xlim(-0.5,self.map_size[1]-0.5)
		plt.ylim(self.map_size[0]-0.5,-0.5)
		plt.grid()
		plt.show()

	def __call__(self, event):
		if self.clicktime==0:
			print('start at:',(round(event.ydata),round(event.xdata)))
			self.start=node(round(event.ydata),round(event.xdata))
			self.map[self.start.x][self.start.y]=self.start
			self.clicktime+=1
		elif self.clicktime==1:
			print('end at:',(round(event.ydata),round(event.xdata)))
			self.end=node(round(event.ydata),round(event.xdata))
			self.map[self.end.x][self.end.y]=self.end
			self.clicktime+=1
			frame=self.data_animation[-1]
			frame[self.end.x][self.end.y]=color_end
			self.run_astar()


	def run_astar(self):
		search=[[-1,-1,14],[-1,0,10],[-1,1,14],[0,-1,10],[0,1,10],[1,-1,14],[1,0,10],[1,1,14]]
		self.path.append(self.start)

		for step in range(99999):
			now=self.path[-1]

			frame=self.data_animation[-1].copy()
			for (x,y) in self.last_search:frame[x][y]=color_have_searched
			frame[now.x][now.y]=color_now
			self.data_animation.append(frame)

			F_min=99999
			next_x=None
			next_y=None

			if now.x==self.end.x and now.y==self.end.y:
				print('FINISH')
				self.play()
				return

			self.last_search=[]
			for (x,y,w) in search:
				if (now.x+x)>=0 and (now.x+x)<self.map_size[0] and (now.y+y)>=0 and (now.y+y)<self.map_size[1] and self.map[now.x+x][now.y+y]!=1: #is node

					neighbor=self.map[now.x+x][now.y+y]
					if neighbor in self.path:continue

					self.last_search.append((now.x+x , now.y+y))
					frame[now.x+x][now.y+y]=color_search

					if neighbor.G>now.G+w:neighbor.G=now.G+w
					neighbor.H=abs(self.end.x-neighbor.x)+abs(self.end.y-neighbor.y)
					neighbor.F=neighbor.H+neighbor.G
					if neighbor.F < F_min:
						F_min=neighbor.F
						next_x=x
						next_y=y
						neighbor.father=now

					self.map[now.x+x][now.y+y]=neighbor
			if next_x!=None and next_y!=None:
				now=self.map[now.x+next_x][now.y+next_y]
				self.path.append(now)
			else:
				print('Fail')
				self.play()
				return


	def play(self):
		for i in range(len(self.data_animation)):
			self.psm=self.axs.imshow(self.data_animation[i],cmap='bone')
			self.axs.set_title("frame {}".format(i))
			plt.pause(0.1) # Note that using time.sleep does *not* work here!
		plt.show()

map=[
	[1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
	[1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
	[1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
	[0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
	[0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
	[0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
	[0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
	[0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
	[0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
	[0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0],
	[0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0],
	[0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0],
	[0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0],
	[0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0],
	[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
	# [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
	# [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
	# [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
	# [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
	# [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
]

Astar_animation(map)
