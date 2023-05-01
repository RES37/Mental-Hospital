<button class="btn" onClick="window.location.href='../server_login/server_login_index.php';">
  <i class="fa fa-home"></i>
</button>
<div style="
  margin-top: 2em;
  border: 0.1em solid black;
  background-color: #ccc;
  padding: 0.5em;
">
    <div class="margin" id="pie_chart"></div>
    <div class="margin-border" id="bar_chart"></div>
    <div class="margin-border" id="tbl_table"></div>
</div>

<script type="text/javascript">
  // Load the visualization libraries and set callback functions
  google.charts.load('current', {'packages':['corechart', 'bar', 'table']});
  google.charts.setOnLoadCallback(drawCharts);
  
  function drawCharts() {
// PIE CHART
    // Get the data from PHP and create a DataTable for the PieChart
    var pieData = new google.visualization.DataTable();
    pieData.addColumn('string', 'Name');
    pieData.addColumn('number', 'Value');
    <?php
      foreach($data as $row) {
        echo "pieData.addRow(['".$row['Names']."', ".$row['Total']."]);";
      }
    ?>
    
    // Set options for the PieChart
    var pieOptions = {
      title: 'Booth Report',
    };
    
    // Draw the PieChart
    var pieChart = new google.visualization.PieChart(document.getElementById('pie_chart'));
    pieChart.draw(pieData, pieOptions);

// BAR CHART
    // Get the data from PHP and create a DataTable for the PieChart
    var barData = new google.visualization.DataTable();
    barData.addColumn('string', 'Name');
    barData.addColumn('number', 'Votes');

    <?php
      foreach($data as $row) {
        echo "barData.addRow(['".$row['Names']."', ".$row['Total']."]);";
      }
    ?>
    
    // Set options for the PieChart
    var barOptions = {
      title: 'Booth Report',
      hAxis: {
        ticks: [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
      },
    };
    
    // Draw the PieChart
    var barChart = new google.visualization.BarChart(document.getElementById('bar_chart'));
    barChart.draw(barData, barOptions);

// TABLE
    // Get the data from PHP and create a DataTable for the TableChart
    var tableData = new google.visualization.DataTable();
    tableData.addColumn('string', 'Name');
    tableData.addColumn('number', 'Value');
    <?php
      foreach($data as $row) {
        echo "tableData.addRow(['".$row['Names']."', ".$row['Total']."]);";
      }
    ?>

    // Set options for the TableChart
    var tableOptions = {
      showRowNumber: true,
    width: '100%',
    height: '100%',
    }

    // Draw the TableChart
    var tableChart = new google.visualization.Table(document.getElementById('tbl_table'));
    tableChart.draw(tableData, tableOptions);
  }
</script>
