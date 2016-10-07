conda-recipes
=============

Anaconda Build Recipes

To install a package 

```bash
$ conda build recipe
```
This builds the package and places it in the conda-bld directory, to then install the local build

```bash
$ conda install --use-local $HOME/anaconda/conda-bld/ARCH/recipe.tar.bz2
```

To upload to anaconda cloud for others
```bash
anaconda upload $HOME/anaconda/conda-bld/ARCH/recipe.tar.bz2
```

## Builds

### modelrunner

Build for Python 3

```bash
conda build --python 3.5 modelrunner
```

### networker

Requires conda-forge channel for rtree >= v0.8

```bash
conda build -c conda-forge networker 
```

### infrastructure-planning

Requires sel channel for networker, sequencer

```bash
conda build -c conda-forge -c sel infrastructure-planning
```


