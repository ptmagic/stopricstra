
function makefun(){
        var baseprice = $("#baseprice").val();
        var holdprice = $("#holdprice").val();
        var baseprices =String(baseprice);
        var holdprices =String(holdprice);
        Highcharts.setOptions({
            global: {
                useUTC: false
            }
        });
    
        var chart;
        var linecscsc = "http://0.0.0.0:4567/dog/"+baseprices+holdprices+"?jsoncallback=?";
        alert(linecscsc);
        chart = new Highcharts.Chart({
            chart: {
                renderTo: 'container_by',
                type: 'line',
                marginRight: 10,
                events: {
                    load: function() {
                        $.ajaxSettings.async = false;
                        $.ajaxSetup({
                          async: true // 使用同步方式执行AJAX
                        });
                        // set up the updating of the chart each second
                        var series = this.series[0];
                        setInterval(function() {
                        $.ajax({
                            url: linecscsc,
                            dataType: 'json',
                            async: false,
                            data: {
                                    tags: "mount rainier",
                                    tagmode: "any",
                                    format: "json"
                                  },
                            success: function(data) {
                              var x = (new Date()).getTime();
                              var y = Number(data);
                              series.addPoint([x, y], true, true);
                            }
                          });
                           
                        }, 15000);
                    }
                }
            },
            title: {
                text: baseprices+holdprices
            },
            xAxis: {
                type: 'datetime',
                tickPixelInterval: 150
            },
            yAxis: {
                title: {
                    text: 'Value'
                },
                plotLines: [{
                    value: 0,
                    width: 1,
                    color: '#808080'
                }]
            },
            tooltip: {
                formatter: function() {
                        return '<b>'+ this.series.name +'</b><br/>'+
                        Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', this.x) +'<br/>'+
                        Highcharts.numberFormat(this.y, 2);
                }
            },
            legend: {
                enabled: false
            },
            exporting: {
                enabled: false
            },
            series: [{
                name: 'exchange rate By '+baseprices+holdprices,
                data: (function() {
                    // generate an array of random data
                    var data = [],
                        time = (new Date()).getTime(),
                        i;
    
                    for (i = -19; i <= 0; i++) {
                        data.push({
                            x: time + i * 15000,
                            y: 0
                        });
                    }
                    return data;
                })()
            }]
        });
}
