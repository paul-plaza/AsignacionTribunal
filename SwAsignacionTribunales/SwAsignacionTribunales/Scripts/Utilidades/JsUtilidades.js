$(document).ready(function () {
    CrearEventos();
});

function CrearEventos() {
    //Funcion para limpiar todas las cajas de texto con el boton cancelar
    $("#MainContent_btnCancelar").on("click", function () {
        $('input[type=text]').each(function () {
            $(this).val('');
        });
        $('input[type=number]').each(function () {
            $(this).val('');
        });
        $('input[type=email]').each(function () {
            $(this).val('');
        });
        $('#MainContent_hfCodigo').attr('value', "0");
        $('#MainContent_hfCodigoUsuario').attr('value', "0");
        return false;
    });

    $('#myModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget) // Button that triggered the modal
        var recipient = button.data('whatever') // Extract info from data-* attributes
        $('#ifra').attr('src', "Tribunal.aspx?data=" + recipient);
        var modal = $(this)
        modal.find('.modal-title').text(recipient)
        modal.find('.modal-body input').val(recipient)
    })

}

var prm = Sys.WebForms.PageRequestManager.getInstance();

prm.add_endRequest(function () {
    CrearEventos();
});