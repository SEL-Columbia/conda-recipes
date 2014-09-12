conda-recipes
=============

Anaconda Build Recipes

To install a package 

```bash
$ conda build recipe
```
This builds the package and places it in the conda-bld directory, to then install the local build

```bash
$ conda install --use-local HOME/anaconda/conda-bld/ARCH/recipe.tar.bz2
```
