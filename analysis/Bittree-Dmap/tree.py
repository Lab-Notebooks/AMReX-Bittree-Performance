import numpy

nprocs = 10

class Block:
    def __init__(self, level, leaf, myid):
        self.level = level
        self.leaf = leaf
        self.id = myid


tree = [
    Block(0, 1, 0),
    Block(0, 1, 1),
    Block(0, 1, 2),
    Block(0, 0, 3),
    Block(1, 1, 4),
    Block(1, 1, 5),
    Block(1, 1, 6),
    Block(1, 0, 7),
    Block(2, 1, 8),
    Block(2, 1, 9),
    Block(2, 1, 10),
    Block(2, 0, 11),
    Block(3, 1, 12),
    Block(3, 1, 13),
    Block(3, 1, 14),
    Block(3, 0, 15),
]

div = int(len(tree)/nprocs)
mod = len(tree)%nprocs

dmap = numpy.array([-1]*len(tree))

for proc in range(nprocs):
    dmap[proc*div+min(proc, mod):(proc+1)*div+min(proc+1, mod)] = proc

print(dmap)
