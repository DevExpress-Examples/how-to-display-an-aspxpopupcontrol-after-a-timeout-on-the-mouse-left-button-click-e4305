<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v12.1, Version=12.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to display an ASPxPopupControl after a timeout on the mouse left button click</title>
    <script type="text/javascript">
        function ShowPopup(s, e) {
            setTimeout(function () {
                popup.ShowAtElementByID("btn");
            }, 1000);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxButton ID="btn" runat="server" ClientInstanceName="btn" Text="Show Popup"
            AutoPostBack="false">
            <ClientSideEvents Click="ShowPopup" />
        </dx:ASPxButton>
        <dx:ASPxPopupControl ID="popup" runat="server" ClientInstanceName="popup" HeaderText="Popup"
            PopupHorizontalAlign="LeftSides" PopupVerticalAlign="Below" Width="255">
            <ContentCollection>
                <dx:PopupControlContentControl>
                    <div style="text-align: center;">
                        The content of this popup control is relevant to: <b><%= DateTime.Now.ToLongTimeString() %></b>
                    </div>
                </dx:PopupControlContentControl>
            </ContentCollection>
        </dx:ASPxPopupControl>
    </form>
</body>
</html>
