﻿package {	import flash.display.MovieClip;	import flash.events.Event;	import flash.display.StageAlign;	import flash.display.StageScaleMode;	import com.indiemaps.charting.TimeSeriesGraph;	public class Charting extends MovieClip {		var valueArray:Array = new Array();		var dateArray:Array = new Array();		var startDate = new Date(2005, 1, 1);		var milliPerDay = 1000 * 60 * 60 * 24;		var myGraph:TimeSeriesGraph;		function Charting() {			//first, I'm going to randomly create two arrays			//the first is an array of values (random numbers between 0 & 100)			//the second is an array of the dates/times (date objects) that these values supposedly took place on			//the values could be anything -- streamflow, approval ratings, net worth, etc.			//and the dates can also be anything -- yearly, daily, every few seconds, etc.			//BUT, they should both be in chronological order -- so dateArray[0] is the first and dateArray[dateArray.length-1] is the last			var randNum = 50;			for (var a=0; a<100; a++) {				randNum = randNum + (15-Math.round(Math.random() * 30));				if (randNum < 0) { randNum = 0; }				valueArray.push(randNum);				dateArray.push(new Date(startDate.valueOf() + (milliPerDay * a) + (Math.random() * milliPerDay)));			}									//create a new instance of the TimeSeriesGraph class			myGraph = new TimeSeriesGraph(this);			//set its position			myGraph.x = 25;			myGraph.y = 25;			//set the size of the time series graph			myGraph.setGraphSize(stage.stageWidth - myGraph.x*2, stage.stageHeight-myGraph.y*2);			//send it some arrays -- the first array is the values, the second is an array of date objects ( so...the value at valueArray[15] should have taken place/been measured on the date at dateArray[15] )						myGraph.drawGraphs(valueArray, dateArray);			myGraph.applySecondGraph(valueArray,dateArray);			//and attach it to the stage			addChild(myGraph);			stage.scaleMode = StageScaleMode.NO_SCALE;			stage.align = StageAlign.TOP_LEFT;			stage.addEventListener(Event.RESIZE, onResize);		}		function onResize(e:Event) {			myGraph.setGraphSize(stage.stageWidth - myGraph.x*2, stage.stageHeight-myGraph.y*2);					}	}}