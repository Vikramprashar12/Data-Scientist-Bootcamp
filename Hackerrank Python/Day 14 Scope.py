class Difference:
    def __init__(self, a):
        self.__elements = a
        self.maximumDifference = 0
        # Add your code here

    def computeDifference(self):
        self.__elements.sort()
        self.maximumDifference = self.__elements[len(
            self.__elements)-1]-self.__elements[0]


d = Difference([1, 2, 5])
d.computeDifference()
print(d.maximumDifference)
