# Setup an R dev environment

There are two different types of R packages you can install, **binary**
packages and **source** packages. When you install released packages from CRAN
using `install.packages()` you are installing **binary** packages ^[On Linux
there are no binary packages, so `install.packages()` will instead install
source packages.]. When you install development packages using
`devtools::install_github()` you are installing **source** packages.

We recommend the `devtools` package to install source packages from GitHub and
elsewhere, and also to install (and develop) packages you may write yourself.

`devtools` can be installed from CRAN like any other package.

```r
install.packages("devtools")
library(devtools)
```

Once a **binary** or **source** package is installed they are identical,
however **source** packages which include C/C++ or Fortran code require
additional tools to install, so there is additional system preparation needed.

## Windows: system prep

On Windows the compiler collection needed for installing packages from source
is called Rtools.

Rtools is **NOT an R package**, so it is not installed with
`install.packages()`. Instead download it from
<http://cran.r-project.org/bin/windows/Rtools/> and run the installer.

During the Rtools installation you will see a window asking you to “Select
Additional Tasks”.

- Do _not_ select the box for
“Edit the system PATH”, `devtools` and RStudio should put Rtools on the PATH
automatically when it is needed.
- Do select the box for "Save version information to registry" (it should be selected by default).

## macOS: system prep

On macOS you will need to install the Xcode Command Line Tools, which may
already be installed. You can check if they are by running

```r
devtools::has_devel()
```

If they are not installed you have a few options.

- Minimalist approach (what I do): Install Xcode Command Line Tools.
  In the shell:
  ```shell
  xcode-select --install
  ```
- Install the current release of full [Xcode from the Mac App Store](macappstore://itunes.apple.com/us/app/xcode/id497799835). WAY more
  stuff than you need but the advantage is App Store convenience.

## Verify system prep

```r
devtools::has_devel()
```

If this function runs without error then congratulations, your R installation
is properly setup!

## What about Homebrew?

Users on macOS often install R with [homebrew](https://brew.sh/) via

```r
brew install r
```

Unfortunately, when R is installed in this way it is not compatible with the
CRAN package binaries, which means you must build and install all packages from
source. This takes additional time during installation and can lead to more
time spent dealing with installation issues if a package fails to compile.

Instead if you prefer the convenience of homebrew we recommend installing the
`r-app` cask.

```r
brew cask install r-app
```

This will install the CRAN R distribution, so all package binaries will be
available just like they would be from installing R manually.

## What about Conda?

Some users use [conda](https://conda.io) in python contexts and
notice that conda now also provides (some) R package binaries.

However we would suggest avoiding conda at this time, only a limited number of
all CRAN packages are available ^[~1,500 out of ~13,000 as of this writing] and
many users run into installation problems trying to use `install.packages()`
inside conda environments. Using `install.packages()` also means you no longer
declare all dependencies in the same location. Which means your work is less
reproducible than if you always install only conda packages.

For these reasons we suggest you either restrict yourself only to packages
available as official conda packages, or avoid using conda for R.
