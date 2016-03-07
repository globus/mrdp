<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="image/x-icon" href="{{get_url('static', filename='img/favicon.ico')}}" />
    <link rel="icon" type="image/x-icon" href="{{get_url('static', filename='img/favicon.ico')}}" />

    <title>{{title}}</title>

    <!-- CSS files -->
    <link rel="stylesheet" type="text/css" href="{{get_url('static', filename='css/bootstrap.min.css')}}" />
    <link rel="stylesheet" type="text/css" href="{{get_url('static', filename='css/style.css')}}" />

    <!-- Custom Fonts -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

    <!-- JavaScript files -->
    <script type="text/javascript" src="{{get_url('static', filename='js/jquery.min.js')}}"></script>
    <script type="text/javascript" src="{{get_url('static', filename='js/jquery-ui.min.js')}}"></script>
    <script type="text/javascript" src="{{get_url('static', filename='js/bootstrap.min.js')}}"></script>
  </head>
  <body>
    <nav class="navbar navbar-default navbar-custom navbar-fixed-top">
      <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header page-scroll">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/">Modern Research Data Portal</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav navbar-right">
            <!-- Display these links only is user is not authenticated -->
            %if not authenticated_user:
              <li><a href="{{get_url('login')}}">Login</a></li>
            <!-- Display these links if user is not authenticated -->
            %else:
              <li><a href="{{get_url('repository')}}">Repository</a></li>
              <li><a href="{{get_url('logout')}}">Logout</a></li>
            %end
          </ul>
        </div> <!-- /.navbar-collapse -->
      </div> <!-- /.container-fluid -->
    </nav>

    <!-- Page body -->
    {{!base}}

    <!-- Page footer -->
    %include('views/footer.tpl')

  </body>
</html>
