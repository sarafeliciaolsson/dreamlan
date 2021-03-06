<!DOCTYPE html>
<html lang="en">
<!--- HEAD --->
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Dreamland</title>

    <!-- Bootstrap Core CSS -->
    <link href="/static/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/static/css/grayscale.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/static/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    
    
    
    


</head>
<!--- /HEAD --->
<!--- BODY --->

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

    <!-- Navigation -->
    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">

                    <i class="fa fa-play-circle"></i>  <span class="light">Festival</span> 

                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                <ul class="nav navbar-nav">
                    <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>

                    <li>
                        <a class="page-scroll" href="/">Startsidan</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#list">Anställda</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#add">Lägg till</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#delete">Ta bort</a>
                    </li>
                    
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        
        
        <!-- /.container -->
    </nav>

    <!-- Intro Header -->
    <header class="intro">
        <div class="intro-body">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <h1 class="brand-heading">ADMIN</h1>
                        <p class="intro-text">På denna sida kan du se alla anställda, lägga till nya anställda och ta bort anställda.</p>
                        <a href="#list" class="btn btn-circle page-scroll">
                            <i class="fa fa-angle-double-down animated"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Employees Listed Section -->
    <section id="list" class="container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                
              
                <h2>Anställda</h2>
                    <table class="table">
                        <tr>
                            <th>Personnummer</th>
                            <th>Namn</th>
                            <th>Telefonnummer</th>  
                        </tr>
                        
                        % for i in employees:  
                        <tr>
                            <td>{{i["Nr"]}}</td>
                            <td>{{i["Name"]}}</td>
                            <td>{{i["Phone"]}}</td> 
                        </tr>
                        %end
                    </table>
            </div>    
        </div>
    </section>
    <!-- /Employees Listed Section -->
    <!-- Adding Employees Section -->
    <section id="add" class="container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>Lägg till Anställda</h2>
                <form id="form" name="form" method="post" action="/add_employees"> 

                    <table class="table">
                        <tr>
                            <th>Personnummer:</th>
                            <th>Namn:</th>
                            <th>Telefonnummer:</th>  
                        </tr>

                        <tr>
                            <td><input class="form-control" type="text" class="color" name="Nr" id="fnamn" /></td>
                            <td><input class="form-control" type="text" class="color" name="Name" id="enamn" /></td>
                            <td><input class="form-control" type="text" class="color" name="Phone" id="epost" /></td> 
                        </tr>

                    </table>
                    
                    <button type="submit" class="btn btn-default" name="skicka" id="skicka" value="Lägg till"> Lägg till </button>

                </form>
            </div>    
        </div>
    </section>
    <!-- /Adding Employees Section -->
    <!-- Deteing Employees Section -->
    <section id="delete" class="container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <div class="col-lg-8 col-lg-offset-2">
                    <h2>Ta bort Anställda</h2>
                    <form class="form-horizontal" id="deleteform" name="deleteform" method="post" action="/del_employees">
                        <div class="form-group">
                            <table class="table">
                                <tr>
                                    <th>Personnummer:</th>
                                    <td>
                                        <select class="form-control" name="person" >
                                        %for i in employees:
                                            <option>{{i["Nr"]}}</option>
                                        %end                   
                                        </select>
                                    </td>
                                </tr>
                                
                            </table>
                            <button type="submit" class="btn btn-default">Ta bort</button>
                        </div>
                    </form>
                </div>
            </div>    
        </div>
    </section>
    <!-- /Deteing Employees Section -->
    <!-- Footer -->
    <footer>
        <div class="container text-center">
            <p>Copyright &copy; Sara och Emma 2016</p>
        </div>
    </footer>
    <!-- /Footer -->
    
    <!-- jQuery -->
    <script src="static/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="static/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="static/js/jquery.easing.min.js"></script>




    <!-- Custom Theme JavaScript -->
    <script src="static/js/grayscale.js"></script>
<!--- /BODY --->
</body>

</html>
