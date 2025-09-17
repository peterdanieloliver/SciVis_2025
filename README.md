# SciVis 2025

A C++ project for CS 453 Scientific Visualization homework assignments and in-class demos.

## Building the Project

CMake is used as the build system. A version of 3.5 or higher is required.

The general steps to build any CMake project are as follows:

1. Make a build directory (e.g. `build`)
2. `cd` into the build directory and run `cmake ..`, which will generate the build system
3. You may then use the generated build system to build the project, or perform a platform-agnostic build with `cmake --build .` (note the `.`, which specifies the *build* directory, not the *source* directory as in **step 2**)

You may specify a specific build system by naming one with the `-G` switch when running `cmake ..`. The syntax is as follows:

```bash
cmake -G <generator> ..
```

**Note:** You may see a list of supported generators by running `cmake -G`.

The project requires an installation of [GLFW](https://www.glfw.org/). See the below subsections for help.

### Windows

The newest version of Visual Studio installed on your computer is usually the default build system. A Visual Studio solution file (`SciVis_2025.sln`) will be created in your build directory.

If using Visual Studio, you may build by right-clicking the `SciVis_2025` project in the solution explorer and selecting **Build**.

An 32-bit Windows installation of GLFW is included in this repository and is located in the `glfw-3.4` subdirectory. If you are using Windows, you should not need to install any additional libraries, but you may download the 64-bit binaries [here](https://www.glfw.org/download.html).

### Mac/Linux

Unix Makefiles are usually the default build system. If using this generator, you may build the project by running `make` from within the build directory.

You may use `gdb` or `lldb` to debug the program on Linux and Mac, respectively. Alternatively, you may use another build system with a built-in debugger, such as Xcode on Mac.

If using Xcode, the `.xcodeproj` will be created in the build directory.

Installation for GLFW installation varies per platform, see below.

#### Mac

GLFW can be installed using [Homebrew](https://brew.sh/). Once installed, run:

```
brew install glfw
```

and you should be good to go. You can also download pre-compiled binaries [here](https://www.glfw.org/download.html) and specify the appropriate include and library paths in `CMakeLists.txt`.

#### Linux

On Ubuntu GLFW can be installed with

```
sudo apt-get install libglfw3
sudo apt-get install libglfw3-dev
```



## Running the Program

The program expects a single command line argument specifying the file to display.

### Windows

In Visual Studio, you must first set the project to be run on startup. Do this by right-clicking the `SciVis_2025` project and clicking **Set as Startup Project**.

You may now run the project by pressing **F5** or clicking the **Start** button.

### Mac/Linux

If you used Unix Makefiles as the CMake generator, the executable will be created in your build directory. From inside the build directory, all you need to do is run

```bash
./learnply
```

### Xcode

If using Xcode, you must set the scheme you want to run. The current scheme is displayed at the top of the window, near the center. It will likely say `SciVis_2025`, `ZERO_CHECK`, or `ALL_BUILD`. Click on that text, then select `SciVis_2025`.