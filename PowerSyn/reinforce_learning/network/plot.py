import matplotlib.pyplot as plt
from scipy.ndimage.filters import gaussian_filter1d


import numpy as np
# To make things reproducible...

fig, ax = plt.subplots(dpi=3000)

# Twin the x-axis twice to make independent y-axes.
axes = [ax, ax.twinx(), ax.twinx(), ax.twinx()]
# axes = [ax]

# Make some space on the right side for the extra y-axis.
fig.subplots_adjust(right=0.75)
# To make the border of the right-most axis visible, we need to turn the frame
# on. This hides the other plots, however, so we need to turn its fill off.
axes[-1].set_frame_on(True)
axes[-1].patch.set_visible(False)

datas = [[], [], []]
# data_abc = [[], [], []]
with open('../experiments/max_trace.txt', 'r') as file:
    for line in file.readlines():
        line = line.split()
        datas[0].append(float(line[4])/float(line[2]))
        datas[1].append((float(line[6])+float(line[5]))/float(line[2]))
        datas[2].append(float(line[7])/float(line[2]))
    file.close()

#with open('./depth_calculated.txt') as file:
#    for line in file.readlines():
#        line = line.split()
#        datas[3].append(line[1])

# And finally we get to plot things...
colors = ('sandybrown', 'cornflowerblue', 'lightseagreen')
labels = ['Total', 'Switching', 'Leakage']
iter = []
for i in range(194):
    iter.append(i)

iter_ = []
for i in range(116):
    iter_.append(i)

lines = []
for ax, color, label, data in zip(axes, colors, labels, datas):
    y = gaussian_filter1d(data, sigma=2)
    line, = ax.plot(y, color=color)
    lines.append(line)
    ax.set_ylabel(label, fontsize=19)
    ax.tick_params(axis='y', colors=color)
axes[0].set_xlabel('X-axis')

'''
line1, = axes[0].plot(data[2], color=colors[2])
#line2, = axes[0].plot(data_abc[2], color=colors[2], linestyle='dashed')
axes[0].set_ylabel(labels[2], fontsize=19)
axes[0].tick_params(axis='y')


line3, = axes[1].plot(data[1], color=colors[1])
line4, = axes[1].plot(data_abc[1], color=colors[1], linestyle='dashed')
axes[1].set_ylabel(labels[1], fontsize=19)
axes[1].tick_params(axis='y')
'''

axes[0].set_xlabel('Step', fontsize=19)
plt.legend(handles=lines,labels=['total','switch','leakage'],loc="best", fontsize=19)

plt.savefig('./analysis.pdf')
