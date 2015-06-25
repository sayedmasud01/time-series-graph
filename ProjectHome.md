Google Finance includes a very nice, flexible chart of stock values and volume, allowing the user to quickly look at different date ranges and retrieve specific values.  Inspired by this, I coded a very similar graph/chart for a project.  I then decided to create an AS3 class for the chart so that I and others could quickly add it to any project with just a few lines of code for configuration.  The initial class was just over 200 lines, but with additional features the class has ballooned to over 850 lines of code.

For an online example, check out http://indiemaps.com/blog/2007/11/timeseriesgraph-now-with-flags/


This was one of my first AS3 projects, so there is likely room for optimization and recoding.  And of course, there's plenty of room for additional features and public methods.
The time\_series\_graph is not a component, but rather one (1) .FLA file with some movie clips and two (2) .AS files with the charting and flagging code.

By Zachary Forest Johnson (http://indiemaps.com/blog)

Download the latest version, and run examples/charting.fla for an example of the class.

![http://indiemaps.com/images/time-series-graph.png](http://indiemaps.com/images/time-series-graph.png)