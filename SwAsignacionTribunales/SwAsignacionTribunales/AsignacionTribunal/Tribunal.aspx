<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tribunal.aspx.cs" Inherits="SwAsignacionTribunales.AsignacionTribunal.Tribunal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Tribunal</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.js"></script>
    <style type="text/css">
        .GridView1 th {
            text-align: center !important;
            background-color: #337AB7;
            color: White;
        }
    </style>
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel runat="server" class="panel panel-default" DefaultButton="btnGuardar">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-md-12 text-right">
                        <asp:Panel ID="pnl_defbotonbuscar" runat="server" CssClass="form-inline col-md-12"
                            DefaultButton="btnBuscar">
                            <div class="input-group">
                                <span class="input-group-addon" id="basic-addon3">Ingrese identificacion Docente</span>
                                <asp:TextBox ID="txt_BuscarActivo" placeholder="(Texto a buscar)" runat="server"
                                    class="form-control"></asp:TextBox>
                            </div>
                            <asp:Button Text="Buscar" ID="btnBuscar" CssClass="btn btn-outline-success"
                                CausesValidation="false" runat="server" />
                            <asp:Button ID="btn_BuscarTodos" runat="server" CausesValidation="False" class="btn btn-primary"
                                Text="Todos" ToolTip="Mostrar Todos" />
                        </asp:Panel>
                    </div>
                </div>
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon" id="basic-addon4">Descripción</span>
                        <asp:TextBox runat="server" ID="txtDescripcion" CssClass="form-control" placeholder="Ingrese Modelo"
                            MaxLength="50" aria-describedby="basic-addon2" />
                    </div>
                    <asp:RequiredFieldValidator ID="rfDescripcion" runat="server"
                        ControlToValidate="txtDescripcion" Display="None"
                        SetFocusOnError="true" ErrorMessage="Campo Requerido">*</asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon" id="basic-addon5">Marcas</span>
                        <asp:DropDownList ID="ddlMarcas" CssClass="btn btn-default dropdown-toggle col-md-12"
                            aria-describedby="basic-addon1" runat="server">
                        </asp:DropDownList>
                        <span class="input-group-addon" id="basic-addon6">
                            <asp:LinkButton ID="lkRefrescar" class="glyphicon glyphicon-refresh" Style="text-decoration: none"
                                runat="server" CausesValidation="false" /></span>


                    </div>
                </div>
            </div>
            <div class="panel-footer text-right">
                <asp:Button Text="Guardar" ID="btnGuardar" runat="server"
                    CssClass="btn btn-default" />
                <asp:Button Text="Cancelar" ID="btnCancelar" runat="server" CausesValidation="false"
                    CssClass="btn btn-primary" />
            </div>
        </asp:Panel>
    </form>
</body>
</html>
