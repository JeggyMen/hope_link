import "@hotwired/turbo-rails"
import "controllers"
import $ from 'jquery';
import 'datatables.net-dt';
import Rails from "@rails/ujs";
Rails.start();


document.addEventListener("turbo:load", () => {
  $('#donations-table').DataTable({
    paging: true,
    searching: true,
    ordering: true,
    lengthMenu: [10, 25, 50],
    language: {
      search: "Search Donations:"
    }
  });
});