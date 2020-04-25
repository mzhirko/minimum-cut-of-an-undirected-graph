# Minimum cut of an undirected graph
To run this application in Terminal it's better to use terminal edition of a code.\
So, you're gonna need to use following commands after cloning the repo:
```Terminal
cd ./terminal-edition
./lab02 | dot -Tpng -o $RANDOM.png
```
> Output is visualizesd through [**Graphviz**](https://www.graphviz.org/) tool.\
> Graphviz is a standard package on many linux distributions. You can check if it is installed with a command like 
```Terminal 
dpkg -s graphivz
```
> If it is not installed, you should be able to install it with your system's package manager. i.e. 
```Terminal 
sudo apt-get install graphviz
```
> or search 'graphivz' in the Software Center on Ubuntu.

After that just list all files of the directory
```Terminal
ls
```
You are supposed to see **.png** files, they contain picture of random graph with number of nodes that were cut by a program.\
To remove test images (**.png** files), type
```Terminal
rm *.png
```
You also can view source code in **./src** folder.\
...and execute it in CMake (like, in the main folder)\
*That's about all* :octocat: :two_hearts:

