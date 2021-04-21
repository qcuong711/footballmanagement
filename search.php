<html>
<body>
  <form action="search.php" method="POST">
    <input type="text" size="40" name="search_kw" value="<? if (!empty($_POST['search_kw']))
    echo $_POST['search_kw'];?>"/>
    <input type="submit" value="Search">
    <hr>
  </form>
  <h3>Search result</h3>
  <?php
  if (isset($_POST['search_kw'])){
    include 'search_function.php';
    search($_POST['search_kw']);
  }
  ?>

</body>
</html>
