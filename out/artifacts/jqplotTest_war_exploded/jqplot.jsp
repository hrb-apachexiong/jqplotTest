<%--
  Created by IntelliJ IDEA.
  User: apachexiong
  Date: 12/25/13
  Time: 1:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html>
<head>

    <title>双轴图</title>

    <link class="include" rel="stylesheet" type="text/css" href="jquery.jqplot.min.css" />
    <link rel="stylesheet" type="text/css" href="examples.min.css" />
    <link type="text/css" rel="stylesheet" href="syntaxhighlighter/styles/shCoreDefault.min.css" />
    <link type="text/css" rel="stylesheet" href="syntaxhighlighter/styles/shThemejqPlot.min.css" />

    <!--[if lt IE 9]><script language="javascript" type="text/javascript" src="excanvas.js"></script><![endif]-->
    <script class="include" type="text/javascript" src="jquery.min.js"></script>


</head>
<body>
<div class="colmask leftmenu">
    <div class="colleft">
        <div class="col1" id="example-content">


            <!-- Example scripts go here -->

            <div id="chart1" style="width:700px; height:300px"></div>

            <p>This plot animates the bars bottom to top and the line series left to right upon initial page load.
                Since the <code>animateReplot: true</code> option is set,
                the bars and line will also animate upon calls to <code>plot1.replot( { resetAxes: true } )</code>.</p>

            <pre class="code brush:js"></pre>


            <script class="code" type="text/javascript">

                $(document).ready(function () {
                    var s1 = [['星期一', 112000], ['星期二', 122000], ['星期三', 104000], ['星期四', 99000], ['星期五', 121000],
                        ['星期六', 148000], ['星期天', 114000]];
                    var s2 = [['星期一', 10200], ['星期二', 10800], ['星期三', 11200], ['星期四', 11800], ['星期五', 12400],
                        ['星期六', 12800], ['星期天', 13200]];

                    plot1 = $.jqplot("chart1", [s2], {
                        // Turns on animatino for all series in this plot.
                        animate: true,
                        // Will animate plot on calls to plot1.replot({resetAxes:true})
                        animateReplot: true,
                        cursor: {
                            show: true,
                            zoom: true,
                            looseZoom: true,
                            showTooltip: false
                        },
                        series:[
                            {
                                pointLabels: {
                                    show: true
                                },
                                renderer: $.jqplot.PieRenderer,
                                showHighlight: false,
                                yaxis: 'y2axis',
                                rendererOptions: {
                                    // Speed up the animation a little bit.
                                    // This is a number of milliseconds.
                                    // Default for bar series is 3000.
                                    animation: {
                                        speed: 2500
                                    },
                                    barWidth: 15,
                                    barPadding: -15,
                                    barMargin: 0,
                                    highlightMouseOver: false
                                }
                            },
                            {
                                rendererOptions: {
                                    // speed up the animation a little bit.
                                    // This is a number of milliseconds.
                                    // Default for a line series is 2500.
                                    animation: {
                                        speed: 2000
                                    }
                                }
                            }
                        ],
                        axesDefaults: {
                            pad: 0
                        },
                        axes: {
                            // These options will set up the x axis like a category axis.
                            xaxis: {
                                tickInterval: 1,
                                drawMajorGridlines: false,
                                drawMinorGridlines: true,
                                drawMajorTickMarks: false,
                                rendererOptions: {
                                    tickInset: 0.5,
                                    minorTicks: 1
                                }
                            },
                            yaxis: {
                                tickOptions: {
                                    formatString: "$%'d"
                                },
                                rendererOptions: {
                                    forceTickAt0: true
                                }
                            },
                            y2axis: {
                                tickOptions: {
                                    formatString: "$%'d"
                                },
                                rendererOptions: {
                                    // align the ticks on the y2 axis with the y axis.
                                    alignTicks: true,
                                    forceTickAt0: true
                                }
                            }
                        },
                        highlighter: {
                            show: true,
                            showLabel: true,
                            tooltipAxes: 'y',
                            sizeAdjust: 7.5 , tooltipLocation : 'ne'
                        }
                    });

                });


            </script>
            <!-- End example scripts -->

            <!-- Don't touch this! -->


            <script class="include" type="text/javascript" src="jquery.jqplot.min.js"></script>
            <script type="text/javascript" src="syntaxhighlighter/scripts/shCore.min.js"></script>
            <script type="text/javascript" src="syntaxhighlighter/scripts/shBrushJScript.min.js"></script>
            <script type="text/javascript" src="syntaxhighlighter/scripts/shBrushXml.min.js"></script>
            <!-- Additional plugins go here -->

            <script class="include" type="text/javascript" src="plugins/jqplot.barRenderer.min.js"></script>
            <script class="include" type="text/javascript" src="plugins/jqplot.highlighter.min.js"></script>
            <script class="include" type="text/javascript" src="plugins/jqplot.cursor.min.js"></script>
            <script class="include" type="text/javascript" src="plugins/jqplot.pointLabels.min.js"></script>

            <!-- End additional plugins -->

        </div>
    </div>
</div>
<script type="text/javascript" src="example.min.js"></script>

</body>


</html>

