
Welcome to the final homework assignment of the Robot Programming with Lisp course!
In this assignment we want to use TurtleSim to make our turtles draw spirals.

================================================================================

Task 1.

Create a new ROS package called "assignment_7" in the "lisp_course_material" repo.
It should have a valid "package.xml", "CMakeLists.txt", ASDF system definition and
Lisp package definition file "package.lisp". It should not give errors during
compilation with "catkin_make"

================================================================================

Task 2.

We want to extend the functionality of the last REPL call in the roslisp turtlesim
tutorial (http://wiki.ros.org/roslisp/Tutorials/OverviewVersion) to not just
randomly move around like crazy but to draw an Archimedean spiral
(http://en.wikipedia.org/wiki/Archimedean_spiral).
Write a function MOVE (and optionally helper functions for it)
that gets as an argument the name of the turtle and
the parameters "a" and "b" of the spiral and moves the turtle in the spiral.
The equation of the spiral in polar coordinates (r, theta) is:

r(theta) = a + b * theta,

Converting between Polar and Cartesian coordinates is done the following way:

x = r * cos(theta)
y = r * sin(theta)

which means that a point

P = {x, y}

is represented in Polar coordinates by its distance "r" from the origin "O" and
the angle between the X axis and the OP vector.

The angular velocity of a point is defined as:

w = phi / t

The linear velocity is:

v = r * w

You are not forced to use this formulas to solve this task.

If you won't manage to draw an Archimedian spiral, consider drawing a
different spiral, maybe not so strictly mathematically defined.
You will not get full points for that but it will give you the
opportunity to proceed with Task 3.

================================================================================

Task 3.

Now turn the function MOVE from Task 2 into a ROS action.
Write an action server that provides an action of moving a turtle in a spiral,
similar to actions from the shape server of the turtle_actionlib package.

http://wiki.ros.org/actionlib_lisp/Tutorials/actionlibBasicUsage#Writing_a_client_for_the_turtlesim_actions

You will need to define your own action type, including generating
a ".action" file and writing the correct compilation rules in CMakeLists.txt for it.
The naming and the signature of the action is up to you.
The function for starting the server should be SPIRAL-SERVER with an empty lambda list.
