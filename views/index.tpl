<!DOCTYPE html>
<html lang="en">
<!--- Head --->
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
<!--- /Head --->

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
                        <a class="page-scroll" href="admin">Admin</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /Navigation -->
        
        <!-- /.container -->
    </nav>
<!--- PAGE ONE --->
    <!-- Intro Header -->
    <header class="intro">
        <div class="intro-body">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <h1 class="brand-heading">Dreamland</h1>
                        <p class="intro-text">Klicka här för att se spelschema</p>
                        <a href="#valjschema" class="btn btn-circle page-scroll">

                            <i class="fa fa-angle-double-down animated"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </header>
<!--- /PAGE ONE --->
        <section id="valjschema" class="container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <div class="col-lg-8 col-lg-offset-2">
                    <h2>Visa spelschema</h2>
                    <form class="form-horizontal" id="schemapicker" name="schemapicker" method="post" action="/valj_schema">
                        <div class="form-group">
                            <table class="table">
                                <tr>
                                    <th>Välj scen:</th>
                                    <td>
                                        <select class="form-control" name="scen" >
                                        
                                            <option value="1">Mallorcascenen</option>
                                            <option value="2">Dieseltältet</option>
                                            <option value="3">Forumschenen</option>
                                                       
                                        </select>
                                    </td>
                                </tr>
                                
                            </table>
                            <button type="submit" class="btn btn-default">Visa</button>
                        </div>
                    </form>
                </div>
            </div>    
        </div>
    </section>
    
    
    
    <!-- About Section -->
    %if schema != '':
    <section id="schema" class="container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>Spelschema</h2>
                    <table class="table table-responsive">
                        <thead>
                            <tr>
                                <th>DATUM</th>
                                <th>STARTTID</th>
                                <th>SLUTTID</th>
                                <th>SCEN</th>
                                <th>BAND</th>

                            </tr>
                        </thead>
                        <tbody>
                        
                        % for i in schema:
                            <tr>
                                <td>{{i["Concert_date"]}}</td>
                                %Begin = str(i["Begin"])[:-3]
                                %if len(Begin) == 4:
                                <td>0{{Begin}}</td>
                                %else:
                                <td>{{Begin}}</td>
                                %end
                                %End = str(i["End"])[:-3]
                                %if len(End) == 4:
                                <td>0{{End}}</td>
                                %else:
                                <td>{{End}}</td>
                                %end
                                <td>{{i["Scen"]}}</td>
                                <td>{{i["Bandet"]}}</td>
                            </tr>

                        %end
                        
                        </tbody>
                    </table>
            </div>
        </div>
    </section>
    <script>document.getElementById('schema').scrollIntoView();</script>
    %end


    <!-- Footer -->
    <footer>
        <div class="container text-center">
            <p>Copyright &copy; Sara och Emma 2016</p>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="static/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="static/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="static/js/jquery.easing.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="static/js/grayscale.js"></script>


</body>

</html>
