<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
google.charts.load("current", {packages:['corechart']});
google.charts.setOnLoadCallback(drawChart);
function drawChart() {
var data = google.visualization.arrayToDataTable([
["Element", "Density", { role: "style" } ],
["칼로리(kcal)", ${f.calory } , "#FF00BF"],//
["탄수화물", ${f.carbo }, "#DF0101"],//
["단백질", ${f.protein }, "#82FA58"],//
["지방", ${f.fat }, "#58FAF4"], //
["나트륨", ${f.natrium }, "#7401DF"], 
["트랜스지방", ${f.transfat },"#6b2bcc"]//
]);

var view = new google.visualization.DataView(data);
view.setColumns([0, 1,
{ calc: "stringify",
sourceColumn: 1,
type: "string",
role: "annotation" },
2]);

var options = {
title: "중요 영양소 비율",
width: 600,
height: 400,
bar: {groupWidth: "95%"},
legend: { position: "none" },
};
var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
chart.draw(view, options);
}
</script>
<div id="columnchart_values" style="width: 600px; height: 400px;"></div>
</body>
</html>