<nav class="navbar navbar-light bg-faded">
  <ul class="nav navbar-nav">
    <li class="nav-item active">
      <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Prova</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Ranking</a>
    </li>
    
    <% if (request.getParameter("isLogado") != null) { %>
    <li class="nav-item">
      <a class="nav-link" href="#">Histórico</a>
    </li>
    <% } %>
    
    <% if (request.getParameter("isAdm") != null) { %>
    <li class="nav-item">
      <a class="nav-link" href="#">ADM</a>
    </li>
    <% } %>
  </ul>
</nav>