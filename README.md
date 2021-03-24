# rosprolog_examples

Examples using rosprolog.

## Installation
- If you have a native ROS installation, you will need to install [`rosprolog`](https://github.com/knowrob/rosprolog) (see [KnowRob](https://github.com/knowrob/knowrob) for instructions).
- If you are using the Singularity image of the course RO47014, you will need to use this [version](https://surfdrive.surf.nl/files/index.php/s/jGh6kn9oZnObRyV), which includes SWI-Prolog and other KnowRob dependencies, and then install KnowRob too.

Once you have completed the installation of KnowRob, you will need to clone this repository on your workspace and build it (do not forget to source your workspace after building it!).

## Usage
You can test the examples by using the available launchfiles.

```
roslaunch rosprolog_examples example_query_prolog_db.launch
```
