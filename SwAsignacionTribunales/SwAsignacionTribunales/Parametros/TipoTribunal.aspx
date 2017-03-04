<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="TipoTribunal.aspx.cs" Inherits="SwAsignacionTribunales.Parametros.TipoTribunal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <hr />
    <div class="panel panel-info">
        <div class="panel-heading">
            <h2 class="panel-title"><em>Tipo Tribunal</em></h2>
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-md-4">
                    <asp:Panel runat="server" class="panel panel-default" DefaultButton="btnGuardar">
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon" id="basic-addon2">Descripción</span>
                                    <asp:TextBox runat="server" ID="txtDescripcion" CssClass="form-control" placeholder="Ingrese Tipo Tribunal"
                                        MaxLength="50" aria-describedby="basic-addon2" />
                                </div>
                                <asp:RequiredFieldValidator ID="rfDescripcion" runat="server"
                                    ControlToValidate="txtDescripcion" Display="None"
                                    SetFocusOnError="true" ErrorMessage="Campo Requerido">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="form-control" disabled id="basic">Activo</span>
                                    <span class="input-group-addon" id="basic-addon3">
                                        <asp:CheckBox runat="server" ID="ckActivo" aria-describedby="basic-addon3" /></span>
                                </div>
                            </div>
                        </div>
                        <div class="panel-footer text-right">
                            <asp:Button Text="Guardar" ID="btnGuardar" runat="server"
                                CssClass="btn btn-default" OnClick="btnGuardar_Click" />
                            <asp:Button Text="Cancelar" ID="btnCancelar" runat="server" CausesValidation="false"
                                CssClass="btn btn-primary" />
                        </div>
                    </asp:Panel>
                </div>
                <div class="col-md-8">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <asp:GridView AutoGenerateColumns="false" Font-Size="X-Small" runat="server" ID="gvdatos"
                                    CellSpacing="-1" CssClass="table table-condensed table-hover GridView1" AllowPaging="true"
                                    PageSize="5"
                                    OnRowCommand="gvdatos_RowCommand"
                                    OnPageIndexChanging="gvdatos_PageIndexChanging">
                                    <Columns>
                                        <asp:TemplateField>
                                            <HeaderTemplate>
                                                Descripción
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblNombre" Text='<%# Bind("DESCRIPCION") %>' Font-Size="XX-Small"
                                                    ToolTip='<%# Bind("DESCRIPCION") %>' runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <HeaderTemplate>
                                                ¿Esta Activo?
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:CheckBox ID="ckItem" runat="server" Checked='<%# Eval("ISACTIVO")== null ? false : true %>'/>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="btnModificar" Text="" CausesValidation="false" runat="server"
                                                    Font-Size="10pt" Style="text-decoration: none; color: yellowgreen"
                                                    CssClass="glyphicon glyphicon-pencil" ToolTip="Modificar"
                                                    CommandName="M" CommandArgument='<%# Bind("IdTipoIntegranteTribunal") %>' />
                                                <asp:LinkButton ID="btnEliminar" Text="" runat="server" CssClass="glyphicon glyphicon-remove"
                                                    ToolTip="Eliminar" Font-Size="10pt" Style="text-decoration: none; color: red"
                                                    CommandName="E" CausesValidation="false" OnClientClick="return confirm('Esta Seguro de Eliminar el registro?')"
                                                    CommandArgument='<%# Bind("IdTipoIntegranteTribunal") %>' />
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
</asp:Content>
