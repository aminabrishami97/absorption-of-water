# Absorption Of Water
This Program will simulate Absorption of Water into a plane from the top to the bottom .
The Algorithm of Depth First Search is also Applied in this program , the concept of doing this simulation is Easy .
First of all , If we consider a water particle as a file of a grid , this Particle cannot move if it's surrounded by the blocks in Four directions
including Left , Right , Up and Down (Not Diagonal) . That's Why DFS algorithm is a good choice for checking this concept. Suppose that 
there's a Plane of grid , and Many of its files are blocked . You're free to inject water from the top of the plane . DFS will start from the 
first file or water Particle and recursively searches for the empty files to fill them also not to pass the blocked files 
within the concept mentioned above . Once this algorithm encounters with a blocked file it will be halted and the goes to the next water particle
# Screenshot
![Absorption Of Water1](https://user-images.githubusercontent.com/62389723/77092843-6c327d00-6a1f-11ea-834d-d49e9cff2f4a.png)
