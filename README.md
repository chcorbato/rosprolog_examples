# rosprolog_examples

Examples using rosprolog for the course RO47014 of the MSc. Robotics of the Delft University of Technology.

## Installation
- If you have a **native ROS installation**, you will need to install [`rosprolog`](https://github.com/knowrob/rosprolog) (see [KnowRob](https://github.com/knowrob/knowrob) for instructions).
- If you are using the **Singularity image** of the course RO47014
  - Make sure you have built your course ws with the singularity image `ro47014-22-3.simg`
  - Install KnowRob following the instructions in [knowrob_intro](https://github.com/kas-lab/knowrob_intro) [step](https://github.com/kas-lab/knowrob_intro#using-the-singularity-image-ro4714-22-3simg).
- Clone this repository on your workspace and build it (do not forget to source your workspace after building it!).

## Usage
You can test the examples by using the available launch files.

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
