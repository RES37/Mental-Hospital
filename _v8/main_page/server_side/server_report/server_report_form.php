<button class="btn" onClick="window.location.href='../server_login/server_login_index.php';"><i class="fa fa-home"></i></button>

<div id="pie_chart" style="border: .1em solid black; margin-top: 1em;"></div>
<div id="tbl_table" style="border: .1em solid black; padding-left: 5em; margin-top: 1em;"></div>

<script>
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawPieChart);

    function drawPieChart() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Name');
        data.addColumn('number', 'Value');
        
        <?php
            foreach($data as $row) {
                echo "data.addRow(['".$row['Names']."', ".$row['Total']."]);";
            }
        ?>
        
        var options = {
            title: 'Booth Report',
            width: '50%',
            height: '50%'
        };
        
        var chart = new google.visualization.PieChart(document.getElementById('pie_chart'));
        chart.draw(data, options);
    }

    google.charts.load('current', {'packages':['table']});
    google.charts.setOnLoadCallback(drawTable);
    
    function drawTable() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Name');
        data.addColumn('number', 'Values');
        
        <?php
            foreach($data as $row) {
                echo "data.addRow(['".$row['Names']."', ".$row['Total']."]);";
            }
        ?>

        var options = {
            showRowNumber: true,
            width: '50%',
            height: '50%',
        }

        var table = new google.visualization.Table(document.getElementById('tbl_table'));
        table.draw(data, options);
    }
</script>