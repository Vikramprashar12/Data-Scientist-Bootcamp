from abc import ABC, abstractmethod

class Shape(ABC):
    @abstractmethod
    def area(self):
        pass
    @abstractmethod
    def perimeter(self):
        pass


class Circle(Shape): 
    pi = 3.14
    def __init__(self, radius):
        self.radius=radius
    
    def area(self):
        return self.radius** 2 * self.pi
    
    def perimeter(self):
        return 2*self.pi*self.radius
    
circle_1 = Circle(3)
print(circle_1.area())




