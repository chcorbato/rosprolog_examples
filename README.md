# rosprolog_examples

Examples using rosprolog for the course RO47014 of the MSc. Robotics of the Delft University of Technology.

## Installation
- If you have a **native ROS installation**, you will need to install [`rosprolog`](https://github.com/knowrob/rosprolog) (see [KnowRob](https://github.com/knowrob/knowrob) for instructions).
- If you are using the **Singularity image** of the course RO47014
  - Make sure you have built your course ws with the original image `ro47014-20-10-3.simg`
  - Download this other version of the Singularity image [**ro47014-21-2.simg**](https://surfdrive.surf.nl/files/index.php/s/jGh6kn9oZnObRyV), which includes SWI-Prolog and other KnowRob dependencies, and then install KnowRob too.
  - Install KnowRob starting in this [step](https://github.com/knowrob/knowrob#installation), without installing its requirements (they are included in the new Singularity image).
- Clone this repository on your workspace and build it (do not forget to source your workspace after building it!).

**Note:**
if you run into this error:
```
CMake Error at /usr/share/cmake-3.10/Modules/FindPackageHandleStandardArgs.cmake:137 (message):
Could NOT find BISON (missing: BISON_EXECUTABLE) (Required is at least
version "3.0.4")
```
then proceed as follows:
- clean your workspace: `catkin clean -y`
- delete knowrob, rosprolog, iai_messages and rosprolog_examples form your src folder
- switch to the older singularity image: `singularity shell -p <path to your image>/ro47014-20-10-3.simg`
- build your workspace: `catkin b`
- switch to the new singularity image: `singularity shell -p <path to your image>/ro47014-21-2.simg`
- install KnowRob as explained above in `<your workspace>/src`
- clone this repository in `<your workspace>/src`
- build your workspace: `catkin b`


## Usage
You can test the examples by using the available launchfiles.

### Using prolog in your ROS node in Python
For an example on loading a prolog module and using its predicates form your ROS node in Python, check `src/example_query_prolog.py`.

You can try it executing the following command:

```
roslaunch rosprolog_examples example_query_prolog.launch
```

### Using an OWL ontology in your ROS node in Python
For an example of accessing the content of an OWL ontology from your ROS node in Python, check `src/example_query_owl.py`.
It requires knowrob to load the ontology on the knowrob database, and then uses the `tripledb` library in the prolog queries to access the content of the ontology.

You can try it executing the following command:
```
roslaunch rosprolog_examples example_query_owl.launch
```
