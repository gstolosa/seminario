const btnDelete= document.querySelectorAll('.btn-delete');
if(btnDelete) {
  const btnArray = Array.from(btnDelete);
  btnArray.forEach((btn) => {
    btn.addEventListener('click', (e) => {
      if(!confirm('Desea eliminar al proveedor?')){
        e.preventDefault();
      }
    });
  })
}

$(document).ready(function () {
  $("#search").on("keyup", function () {
    value = $(this).val().toLowerCase();
    $("#table tr").filter(function () {
      $(this).toggle($(this).text()
        .toLowerCase().indexOf(value) > -1)
    });
  });
});

(function () {
  'use strict'
  var forms = document.querySelectorAll('.needs-validation')
  Array.prototype.slice.call(forms)
    .forEach(function (form) {
      form.addEventListener('submit', function (event) {
        if (!form.checkValidity()) {
          event.preventDefault()
          event.stopPropagation()
        }
        form.classList.add('was-validated')
      }, false)
    })
})()