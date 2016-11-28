﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AdminSistema.Master" CodeBehind="WebCRUDRestaurante.aspx.cs" Inherits="RestauranteWeb.WebForm1" Async="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div>
                <table style="width:100%;">
                    
                    <tr class="col-lg-12" style="float:left">
                        <td class="col-lg-12">
                            <asp:TextBox CssClass="col-lg-6" ID="textBoxDesc" runat="server" PlaceHolder="Nome" style="margin-left: -29px"></asp:TextBox>
                            <asp:RequiredFieldValidator style="margin-top: 10px" CssClass="col-lg-6" ID="RequiredFieldValidator2" runat="server" ErrorMessage="É necessário preencher o campo para inserir o restaurante" ControlToValidate="textBoxDesc"></asp:RequiredFieldValidator>
                        </td>

                        <td>
                            <ul style="list-style-type: none;">
                            </ul>
                        </td>

                    </tr>

                    <tr>
                        <td>
                            <asp:Button ID="btnInsert"  CssClass="ls-btn-primary  ls-ico-plus" runat="server" Text="Inserir Restaurante" OnClick="btnInsert_Click" />
                            <asp:Button ID="btnSelect"  CssClass="ls-btn-primary" runat="server" Text="Atualizar Lista" OnClick="btnSelect_Click" />
                        </td>
                    </tr>

                    <tr style="width:100%">
                        <td class="auto-style1">
                            <asp:GridView GridLines="Horizontal" CssClass="ls-table ls-bg-header" ID="GridView1" runat="server"
                            AutoGenerateColumns="false" DataKeyNames="Id" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit"
                            OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="Nenhum restaurante foi adicionado.">
                            <Columns>
            
                                <asp:TemplateField HeaderText="Restaurante" SortExpression="Descricao" >
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtDescricao" runat="server" Text='<%# Eval("Descricao") %>'></asp:TextBox>
                                    </EditItemTemplate>

                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server"
                                            Text='<%# Eval("Descricao") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:CommandField ButtonType="Link" ShowEditButton="true" edittext="Editar" ItemStyle-Width="100"/>
                                <asp:CommandField ShowDeleteButton="true" ButtonType="Link" deletetext="Excluir" ItemStyle-Width="100"/>  

                            </Columns>
                        </asp:GridView>

                        </td> 
                        <td>&nbsp;</td>
                    </tr>
                </table>
               
            </div>
            <link href="css/locastyle.css" rel="stylesheet" type="text/css"/>
            <link href="css/style.css" rel="stylesheet" type="text/css" />
            <link href="css/StyleSheet1.css" rel="stylesheet" />
            <link rel="icon" sizes="192x192" href="/locawebstyle/assets/images/ico-boilerplate.png"/>
            <link rel="apple-touch-icon" href="/locawebstyle/assets/images/ico-boilerplate.png"/>
</asp:Content>
