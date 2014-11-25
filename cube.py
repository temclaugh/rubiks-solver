
WHITE = 0
YELLOW = 1
RED = 2
ORANGE = 3
GREEN = 4
BLUE = 5



colors = [WHITE, YELLOW, RED, ORANGE, GREEN, BLUE]

colorCodes = {
    WHITE: 'W',
    YELLOW: 'Y',
    RED: 'R',
    ORANGE: 'O',
    GREEN: 'G',
    BLUE: 'B',
}

class Cube(object):

    def __init__(self):
        print "initializing cube"
        self.faces = 6 * [None]
        for i in xrange(len(self.faces)):
            self.faces[i] = 3 * [3 * [colors[i]]]

    def display(self):
        for i in xrange(3):
            print "     ",
            for j in xrange(3):
                print colorCodes[self.faces[0][i][j]],
            print

        for i in xrange(3):
            for face in xrange(1, 5):
                for j in xrange(3):
                    print colorCodes[self.faces[face][i][j]],
            print

        for i in xrange(3):
            print "     ",
            for j in xrange(3):
                print colorCodes[self.faces[5][i][j]],
            print



    def solved(self):
        for face in self.faces:
            faceColor = face[0][0]
            for i in xrange(3):
                for j in xrange(3):
                    if face[i][j] != faceColor:
                        return False
        return True

c = Cube()
print c.solved()
c.display()
