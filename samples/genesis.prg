function Main()

   TEMPLATE
<html>

<head>
  <title>Genesis</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://fivetechsoft.github.io/xcloud/source/js/xcloud.js"></script>
  <link rel="stylesheet" href="https://fivetechsoft.github.io/xcloud/source/css/xcloud.css"> 

  <style>
      .vertical-menu a {
      background-color: rgb(34, 45, 50);
      color: gray;
      display: block;
      padding: 20px;
      padding-left: 30px;
      text-decoration: none;
      border-style: solid;
      border-width:1px;
      border-color: gray black black black;
      cursor: pointer;
      }

      .vertical-menu a.active {
      background-color: gainsboro;
      color: {{GetColor()}};
      }   

      .vertical-menu a:hover {
         background-color: black;
         color: white;
      }

   </style>
</head>

<body>

   <div class="container-fluid" style="overflow:hidden;">
      <div class="row" style="margin-right:0px">
         <div id="leftmenu" class="col-sm-2">
            <nav class="navbar navbar-expand-lg navbar-inverse" style="background-color:rgb(96, 82, 140);border:0px;">
               <a class="navbar-brand" style="color:white;cursor:pointer;padding-left:50px;">Gen<font color="silver">esis</font></a>
            </nav> 
            <div style="background-color:rgb(34, 45, 50);height:calc(100% - 50px);">
               <div class="vertical-menu" style="background-color:rgb(34, 45, 50);height:500px;">
                  <a onclick="SelectCategory( this, 'home' );">
                     <span class="glyphicon glyphicon-home" style="color: silver; padding-right: 15px;"></span>Home</a>
                  <a onclick="SelectCategory( this, 'router' );">
                     <span class="glyphicon glyphicon-random" style="color: silver; padding-right: 15px;"></span>Router</a>
                     <a onclick="SelectCategory( this, 'menu' );">
                     <span class="glyphicon glyphicon-th-list" style="color: silver; padding-right: 15px;"></span>Menu</a>
                  <a onclick="SelectCategory( this, 'views' );">
                     <span class="glyphicon glyphicon-eye-open" style="color: silver; padding-right: 15px;"></span>Views</a>
                  <a onclick="SelectCategory( this, 'controller' );">
                     <span class="glyphicon glyphicon-list-alt" style="color: silver; padding-right: 15px;"></span>Controllers</a>
                  <a onclick="SelectCategory( this, 'users' );">
                     <span class="glyphicon glyphicon-user" style="color: silver; padding-right: 15px;"></span>Users</a>
                  <a onclick="SelectCategory( this, 'database' );">
                     <span class="glyphicon glyphicon-cloud" style="color: silver; padding-right: 15px;"></span>Database</a>
                  <a onclick="SelectCategory( this, 'settings' );">
                     <span class="glyphicon glyphicon-cog" style="color: silver; padding-right: 15px;"></span>Settings</a>
               </div>
            </div>
         </div>
         <div class="col-sm-10">
            <nav class="navbar navbar-expand-lg navbar-inverse" style="background-color:rgb(96, 92, 170);border:0px;">
               <a style="cursor:pointer;" onclick="$( '#leftmenu' ).width( 75 );" class="navbar-brand">
                  <span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true" style="color: silver;">
                  </span></a>
               <a class="navbar-brand" style="color:white;">Main</a>
               <ul class="nav navbar-nav navbar-right">
                  <li><a style="cursor:pointer;">
                     <span class="glyphicon glyphicon-user" style="color: silver;">
                     </span> Sign Up</a></li>
                  <li><a onclick='MsgGet( "username:", "Please identify" );' style="cursor:pointer;">
                     <span class="glyphicon glyphicon-log-in" style="color: silver;"
                     ></span> Login</a></li>
               </ul>
            </nav> 
            <div style="background-color:#ecf0f5;height:calc( 100% - 50px );padding-top:50px;">
               <div style="background-color:white;margin:30px;padding:10px;padding-top:10px;padding-bottom:100px;border:1px;border-style:line;border-color:red;">
               <button type="button" class="btn btn-primary" style="background-color:rgb(96, 92, 170);">
                  <span class="glyphicon glyphicon-plus" style="color:silver;padding-right:10px;">
                  </span>Add</button><hr>
               <table class="table table-striped table-hover;">
               <thead>
                  <tr>
                     <th scope="col">#</th>
                     <th scope="col">First</th>
                     <th scope="col">Last</th>
                     <th scope="col">Handle</th>
                  </tr>
               </thead>
               <tbody>
                  <tr>
                     <th scope="row">1</th>
                     <td>Mark</td>
                     <td>Otto</td>
                     <td>@mdo</td>
                  </tr>
                  <tr>
                     <th scope="row">2</th>
                     <td>Jacob</td>
                     <td>Thornton</td>
                     <td>@fat</td>
                  </tr>
                  <tr>
                     <th scope="row">3</th>
                     <td>Larry</td>
                     <td>the Bird</td>
                     <td>@twitter</td>
                  </tr>
                  <tr>
                     <th scope="row">4</th>
                     <td>One</td>
                     <td>More</td>
                     <td>@yes</td>
                  </tr>
               </tbody>
               </table><hr>
               </div>
            </div>
         </div>
      </div>
   </div>
</body>

</html>

ENDTEXT

return nil   