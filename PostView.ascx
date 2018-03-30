<%@ Control Language="C#" AutoEventWireup="true" EnableViewState="false" Inherits="BlogEngine.Core.Web.Controls.PostViewBase" %>

<article class="post xfolkentry" id="post<%=Index %>">
  <header>
    <h1><a href="<%=Post.RelativeLink %>" class="taggedlink"><%=Server.HtmlEncode(Post.Title) %></a></h1>
    <small>
      <time pubdate="" datetime="<%=Post.DateCreated.ToString("yyyy-MM-dd") %>"><%=Post.DateCreated.ToString("d. MMMM yyyy") %></time> by <a class="author" href="<%=VirtualPathUtility.ToAbsolute("~/") + "author/" + BlogEngine.Core.Utils.RemoveIllegalCharacters(Post.Author) %>.aspx"><%=Post.AuthorProfile != null ? Post.AuthorProfile.DisplayName : Post.Author %></a>
    </small>
  </header>
  <div class="text">
    <asp:PlaceHolder ID="BodyContent" runat="server" />
  </div>
  <footer>
    <p class="meta">
      <span class="admin"><%=AdminLinks %></span> <%=TagLinks(" | ") %> | <%=CategoryLinks(" | ") %> |  <a class="teal" rel="bookmark" href="<%=Post.PermaLink %>" title="<%=Server.HtmlEncode(Post.Title) %>">Permalink</a> |
    <a class="teal" rel="nofollow" href="<%=Post.RelativeLink %>#comment"><%=Resources.labels.comments %> (<%=Post.ApprovedComments.Count %>)</a>    
    </p>
  </footer>
</article>
