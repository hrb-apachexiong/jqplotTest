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

    <!--[if lt IE 9]>
    <script language="javascript" type="text/javascript" src="excanvas.js"></script><![endif]-->
    <script language="javascript" type="text/javascript" src="jquery.min.js"></script>
    <script language="javascript" type="text/javascript" src="jquery.jqplot.min.js"></script>
    <link rel="stylesheet" type="text/css" href="jquery.jqplot.min.css"/>


</head>
<body>
<div class="colmask leftmenu">
    <div class="colleft">
        <div class="col1" id="example-content">


            <!-- Example scripts go here -->

            <div id="chartdiv" style="height:500px;width:700px; "></div>


            <script class="code" type="text/javascript">
                $(document).ready(function () {
                    $.jqplot.config.enablePlugins = true;
                    var s1 = [2973,1671,1210,1138,1086,1038,840,816,637,615];
                    var s2 = [498, 792, 126, 664, 830, 112, 54, 610,481,512];
                    var ticks = ['急诊科', '皮肤科', '妇科', '消化内科', '门诊部', '四病区（骨四）','烧整科','耳、鼻、喉','神经内科','心血管内科'];

                    var bar = [['急诊科', 2973], ['皮肤科', 1671], ['妇科', 1210],['消化内科', 1138], ['门诊部', 1086],['四病区（骨四）', 1038], ['烧整科', 840],
                            ['耳、鼻、喉', 816], ['神经内科', 637], ['心血管内科', 615]
                    ];
                    var line = [['急诊科', 498], ['皮肤科', 792], ['妇科', 126],['消化内科', 664], ['门诊部', 830],['四病区（骨四）', 112], ['烧整科', 54],
                        ['耳、鼻、喉', 610], ['神经内科', 481], ['心血管内科', 512]
                    ];


                    $.jqplot("chartdiv", [bar,line], {
                        title:'2013年8月处方数前十科室不合格处方数占科室处方总数比',
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
                                label:'处方数',
                                pointLabels:{ show:true, location:'s',ypadding:-15 },
                                renderer: $.jqplot.BarRenderer,
                                showHighlight: false,
                                rendererOptions: {
                                    // Speed up the animation a little bit.
                                    // This is a number of milliseconds.
                                    // Default for bar series is 3000.
                                    animation: {
                                        speed: 2500
                                    },
                                    barWidth: 40,
                                    barPadding: -15,
                                    barMargin: 0,
                                    highlightMouseOver: false
                                }
                            },
                            {
                                label:'不合格处方数',
                                pointLabels:{ show:true, location:'s',ypadding:-10 },
                                showHighlight: false,
                                rendererOptions: {
                                    animation: {
                                        speed: 2500
                                    }
                                }
                            }

                        ],
                        legend: {
                            show: true,
                            placement: 'outsideGrid'
                        },
                        axesDefaults: {

                        },
                        axes: {
                            // These options will set up the x axis like a category axis.
                            xaxis: {
                                renderer: $.jqplot.CategoryAxisRenderer,
                                tickRenderer: $.jqplot.CanvasAxisTickRenderer,
                                tickOptions: {
                                    angle:30
                                }
                            },
                            yaxis: {
                                rendererOptions: {
                                    forceTickAt0: true
                                }
                            }
                        }

                    });

                });
            </script>

        </div>
    </div>
</div>
<script type="text/javascript" src="example1.min.js"></script>
<script type="text/javascript" src="plugins/jqplot.categoryAxisRenderer.min.js"></script>
<script type="text/javascript" src="plugins/jqplot.canvasAxisLabelRenderer.min.js"></script>
<script type="text/javascript" src="plugins/jqplot.barRenderer.min.js"></script>
<script type="text/javascript" src="plugins/jqplot.pointLabels.min.js"></script>
<script type="text/javascript" src="plugins/jqplot.dateAxisRenderer.min.js"></script>
<script type="text/javascript" src="plugins/jqplot.canvasTextRenderer.min.js"></script>
<script type="text/javascript" src="plugins/jqplot.canvasAxisTickRenderer.min.js"></script>


</body>


</html>

