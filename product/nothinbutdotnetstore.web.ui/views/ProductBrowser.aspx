<%@ MasterType VirtualPath="Store.master" %>
<%@ Page Language="c#" AutoEventWireup="true" Inherits="System.Web.UI.Page" MasterPageFile="Store.master" %>
<%@ Import Namespace="System.Collections.Generic" %>
<%@ Import Namespace="nothinbutdotnetstore.model" %>


<asp:Content ID="content" runat="server" ContentPlaceHolderID="childContentPlaceHolder">
    <form></form>
    <p id="noResultsParagraph" runat="server" visible="true">No Results Found</p>
            <table>
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Quantity</th>                   
                        <th>Price</th>                                                
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
    
                <% foreach (var product in ((IEnumerable<Product>)Context.Items["blah"]))
                {%>

                <tr class="nonShadedRow">                    
                    <td class="ListItem">                    
                        <a href='Replace with a link to the detail page for the product'><%= product.name %></a>
                    </td>
                    <td><%= product.description %></td>
                    <td><input type="text" class="normalTextBox" value="1" /></td>
                    <td><%= product.price %></td>               
                    <td><input type="checkbox" class="normalCheckBox" /></td>
                    <td><asp:button id="addToCartButton" runat="server" Text="Add To cart"/></td>
                </tr>
<%
                }%>    						
        </table>	
                                <table>
                                    <tr>
                                        <td>
                                            <asp:button id="addSelectedItemsToCartButton" runat="server" Text="Add Selected Items To Cart" CssClass="normalButton"
                                                Width="184px"></asp:button></td>
                                        <td>
                                            <asp:Button id="goToCartButton" runat="server" Text="Go To Shopping Cart" CssClass="normalButton"></asp:Button></td>
                                        <td>
                                            <asp:button id="checkoutButton" runat="server" Text="Continue to checkout" CssClass="normalButton"
                                                Width="184px"></asp:button></td>
                                    </tr>
                                </table>							
                                    
                                
                            
        </asp:Content>
