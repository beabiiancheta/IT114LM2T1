<%@ Page Language="C#" MasterPageFile="Site1.Master" AutoEventWireup="true" CodeBehind="WebFormMain.aspx.cs" Inherits="Module2Topic1.WebFormMain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Reflection</h1>
    <br />
    <h3>Question 1 : How would you compare plain HTML to ASP.NET WebForms?</h3>
    <br />
    <p> ASP.NET WebForms is similar to a toolkit that simplifies the process of constructing websites by ready-made components and functionality to make website development easier and more efficient,
        while plain HTML is like the building blocks for a website or the basic structure that defines the layout and content of a webpage.
    </p>
    <br/>
    <h3>Question 2 : The code behind (C#) and JavaScript seem to share many use cases. When should you implement logic in the code behind and when should you implement logic in JavaScript? Provide examples.</h3>
    <br />
    <p> When handling server-side tasks like database interactions, authentication, or complex computations, use logic in the code behind (C#). 
        When you want to improve user experience with interactive elements like animations, dynamic content changes without requiring a page reload, and form validation, use JavaScript.
    </p>
    <br/>
    <h3>Question 3 : Explain what post backs are.</h3>
    <br />
    <p> In ASP.NET WebForms, a postback is the process by which a webpage returns data to the server for further processing. 
        In this case, a postback occurs when you click a button on a website that starts a server-side action.
    </p>
</asp:Content>

