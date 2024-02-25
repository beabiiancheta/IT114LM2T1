﻿<%@ Page Language="C#" CodeBehind="~/Exercise1.aspx.cs" Inherits="Module1Exercise1.Exercise1" %>

<%-- Exercise 1: Exploring Basic Controls of ASP.NET WebForms--%>
<%-- Useful References: https://www.tutorialspoint.com/asp.net/index.htm --%>
<!DOCTYPE html>
<html>
<head>
    <title>Malayan Music Player</title>
</head>
<body>
    <h1>Malayan Music Player</h1>
    <%-- !! IMPORTANT: Make sure to use the asp tag for each TODO  !! --%>
    <form runat="server">
        <%-- TODO 2.1 Create a label displaying the name of your favorite song and its artist (e.g. Yesterday - The Beatles)--%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_custom_controls.htm#:~:text=Label --%>

        <div>
               <asp:Label ID="firstLabel" runat="server" Text="Le Sserafim - Perfect Night"></asp:Label>
        </div>

        <%-- TODO 2.2 Create an image that is 200px by 200x big showing the album cover of your favorite song. Make sure to set the alternative text. --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Image%20Control --%>

        <div>
            <asp:Image ID="firstImage" runat="server" ImageUrl="https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FPerfect_Night_%2528Le_Sserafim_song%2529&psig=AOvVaw0eVNc_GlX2pUO6_-y3FFUC&ust=1708955475348000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCPj10bPRxoQDFQAAAAAdAAAAABAE" Height="200px" Width="200px"></asp:Image>
        </div>

        <%-- TODO 2.3 Create three buttons with texts. "Prev", "Play", and "Next" --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Button%20Controls --%>

          <div>
            <asp:Button ID="firstButton" runat="server" Text="Prev" />
            <asp:Button ID="secondButton" runat="server" Text="Play" OnClick="buttonplayMusic" />
            <asp:Button ID="thirdButton" runat="server" Text="Next" />
        </div>

        <%-- TODO 2.4 Create a span. Once the play button is pressed, the span should display "Now playing <favorite song>" --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_event_handling.htm#:~:text=onclick=%22btnclick_Click%22 --%>

        <script runat="server">

            private void buttonplayMusic(object sender, EventArgs e)
            {
                string str = "Now Playing - Perfect Night";
                change_text.InnerHtml = str;
            }
            </script>
        <div>
            <span runat="server" id="change_text"></span>
        </div>

        <%-- TODO 2.5 Display the current time using the template syntax <%= %> --%>
        <%-- Hint: https://learn.microsoft.com/en-us/troubleshoot/developer/webapps/aspnet/development/inline-expressions#:~:text=displays%20the%20current%20time --%>

        <div>
            <%= DateTime.Now %>
        </div>

    </form>
</body>
</html>
