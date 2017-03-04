<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Asignacion.aspx.cs" Inherits="SwAsignacionTribunales.AsignacionTribunal.Asignacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <hr />
    <div class="panel panel-info">
        <div class="panel-heading">
            <h2 class="panel-title"><em>Asignación</em></h2>
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-md-12 text-right">
                                    <asp:Panel ID="pnl_defbotonbuscar" runat="server" CssClass="form-inline col-md-12"
                                        DefaultButton="btnBuscar">
                                        <div class="input-group">
                                            <span class="input-group-addon" id="basic-addon2">Periodo</span>
                                            <asp:DropDownList ID="ddlPeriodo" CssClass="btn btn-default dropdown-toggle "
                                                runat="server" aria-describedby="basic-addon2" Width="100px" AutoPostBack="true"
                                                OnSelectedIndexChanged="ddlPeriodo_SelectedIndexChanged">
                                            </asp:DropDownList>
                                        </div>
                                        <div class="input-group">
                                            <span class="input-group-addon" id="basic-addon3">Carrera</span>
                                            <asp:DropDownList ID="ddlCarrera" CssClass="btn btn-default dropdown-toggle "
                                                runat="server" aria-describedby="basic-addon3" AutoPostBack="true"
                                                OnSelectedIndexChanged="ddlCarrera_SelectedIndexChanged">
                                            </asp:DropDownList>
                                        </div>
                                        <div class="input-group">
                                            <span class="input-group-addon" id="basic-addon4">(Criterio)</span>
                                            <asp:DropDownList ID="ddlCriterio" CssClass="btn btn-default dropdown-toggle"
                                                runat="server" aria-describedby="basic-addon4">
                                                <asp:ListItem Selected="True" Text="Identificación" Value="I"></asp:ListItem>
                                                <asp:ListItem Text="Nombres" Value="N"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <asp:TextBox ID="txt_BuscarActivo" placeholder="(Texto a buscar)" runat="server"
                                            class="form-control"></asp:TextBox>
                                        <asp:Button Text="Buscar" ID="btnBuscar" CssClass="btn btn-outline-success"
                                            CausesValidation="false" runat="server" OnClick="btnBuscar_Click" />
                                        <asp:Button ID="btn_BuscarTodos" runat="server" CausesValidation="False" class="btn btn-primary"
                                            Text="Todos" ToolTip="Mostrar Todos"
                                            OnClick="btn_BuscarTodos_Click" />
                                    </asp:Panel>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <asp:GridView AutoGenerateColumns="false" Font-Size="X-Small" runat="server" ID="gvdatos"
                                    CellSpacing="-1" CssClass="table table-condensed table-hover GridView1" AllowPaging="true"
                                    PageSize="20"
                                    OnRowCommand="gvdatos_RowCommand"
                                    OnPageIndexChanging="gvdatos_PageIndexChanging">
                                    <Columns>
                                        <asp:TemplateField>
                                            <HeaderTemplate>
                                                Cédula
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbl1" Text='<%# Bind("CEDULA") %>' Font-Size="XX-Small"
                                                    ToolTip='<%# Bind("CEDULA") %>' runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <HeaderTemplate>
                                                Nombres
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbl2" Text='<%# Eval("NOMBRES") %>' Font-Size="XX-Small"
                                                    ToolTip='<%# Eval("NOMBRES") %>' runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <HeaderTemplate>
                                                Email
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbl3" Text='<%# Eval("MAIL") %>' Font-Size="XX-Small"
                                                    ToolTip='<%# Eval("MAIL") %>' runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <HeaderTemplate>
                                                Modalidad
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbl4" Text='<%# Eval("MODALIDAD") %>' Font-Size="XX-Small"
                                                    ToolTip='<%# Eval("MODALIDAD") %>' runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <HeaderTemplate>
                                                Paralelo
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbl5" Text='<%# Eval("PARALELO") %>' Font-Size="XX-Small"
                                                    ToolTip='<%# Eval("PARALELO") %>' runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <HeaderTemplate>
                                                Celular
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbl6" Text='<%# Eval("CELULAR") %>' Font-Size="XX-Small"
                                                    ToolTip='<%# Eval("CELULAR") %>' runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <%--<asp:LinkButton ID="btnModificar" Text="" CausesValidation="false" runat="server"
                                                    Font-Size="10pt" Style="text-decoration: none; color: yellowgreen"
                                                    CssClass="glyphicon glyphicon-briefcase" ToolTip="Modificar"
                                                    CommandName="M" CommandArgument='<%# Bind("CEDULA") %>' />--%>
                                                <button type="button" class="btn btn-primary" data-whatever='<%# string.Format("{0}-{1}", Eval("CEDULA"),Eval("NOMBRES")) %>'
                                                    data-toggle="modal" data-target="#myModal">
                                                    Asignar
                                                </button>

                                                <asp:LinkButton ID="btnEliminar" Text="" runat="server" CssClass="glyphicon glyphicon-remove"
                                                    ToolTip="Eliminar" Font-Size="10pt" Style="text-decoration: none; color: red"
                                                    CommandName="E" CausesValidation="false" OnClientClick="return confirm('Esta Seguro de Eliminar el registro?')"
                                                    CommandArgument='<%# Bind("CEDULA") %>' />
                                            </ItemTemplate>
                                            <ItemStyle Width="100px" HorizontalAlign="Center"></ItemStyle>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <asp:ValidationSummary runat="server" ID="ValidationSummary1"
                        DisplayMode="BulletList"
                        ShowMessageBox="False" ShowSummary="True" CssClass="alert alert-danger" />
                    <div id="divMensaje" runat="server" style="display: none" class="alert alert-danger">
                        <strong>Advertencia!</strong>
                        <asp:Label ID="lblMensaje" runat="server" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <asp:HiddenField runat="server" ID="hfCodigo" Value="0" />


    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                </div>
                <div class="modal-body">
                    <div class="embed-responsive embed-responsive-4by3">
                        <iframe class="embed-responsive-item" id="ifra" src=""></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
