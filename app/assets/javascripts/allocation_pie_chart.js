const script = document.createElement("script");
script.src = "https://cdn.jsdelivr.net/npm/chart.js";
script.onload = function() {
  document.addEventListener("DOMContentLoaded", function() {
    const allocationLabels = window.allocationLabels;
    const allocationValues = window.allocationValues;

    const ctx = document.getElementById('allocationPieChart').getContext('2d');
    const allocationPieChart = new Chart(ctx, {
      type: 'pie',
      data: {
        labels: allocationLabels,
        datasets: [{
          label: '% of total donation',
          data: allocationValues,
          backgroundColor: ['#FF6384', '#36A2EB', '#FFCE56', '#4BC0C0', '#9966FF'],
          hoverBackgroundColor: ['#FF6384', '#36A2EB', '#FFCE56', '#4BC0C0', '#9966FF']
        }]
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
          legend: {
            display: true,
            position: 'top',
            labels: {
              boxWidth: 20, 
              padding: 0 
            }
          },
          tooltip: {
            callbacks: {
              label: function(tooltipItem) {
                return tooltipItem.label + ': ' + tooltipItem.raw.toFixed(2) + '%';
              }
            }
          }
        },
        layout: {
          padding: {
            top: 0 
          }
        },
        
      }
    });
  });
};
document.head.appendChild(script);