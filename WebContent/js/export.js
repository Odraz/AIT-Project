function exportReport(shoppingCart) {
  console.log("Starting export...");
  
  $( "#header-menu-cart" ).slideUp("fast");
  // Define IDs of the charts we want to include in the report
  var ids = shoppingCart.map(function(item) {return item.IdCss;});

  // Collect actual chart objects out of the AmCharts.charts array
  var charts = {},
    charts_remaining = ids.length;
  for (var i = 0; i < ids.length; i++) {
    for (var x = 0; x < AmCharts.charts.length; x++) {
      if (AmCharts.charts[x].div.id == ids[i])
        charts[ids[i]] = AmCharts.charts[x];
    }
  }

  // Trigger export of each chart
  for (var x in charts) {
    if (charts.hasOwnProperty(x)) {
      var chart = charts[x];
      chart["export"].capture({}, function() {
        this.toJPG({}, function(data) {

          this.setup.chart.exportedImage = data;

          charts_remaining--;

          // Check if we got all of the charts
          if (charts_remaining == 0) {
            // Let's proceed to putting PDF together
            generatePDF();
          }

        });
      });
    }
  }

  function generatePDF() {

    // Log
    console.log("Generating PDF...");

    // Initiliaze a PDF layout
    var layout = {
      "content": []
    };

    
    for (var item in charts) {
        if (charts.hasOwnProperty(item)) {
        	layout.content.push({
        	  "width": "100%",
      	      "image": charts[item].exportedImage,
      	      "fit": [500, 300]
      	    }); 
        }
    }   

    // Trigger the generation and download of the PDF
    chart["export"].toPDF(layout, function(data) {
      this.download(data, "application/pdf", "amCharts.pdf");
      console.log("Done!");
    });
  }
}