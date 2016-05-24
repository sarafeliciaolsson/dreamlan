<!-- Contact Section -->
    <section id="contact" class="container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>Contact Start Bootstrap</h2>
                <p>Feel free to email us to provide some feedback on our templates, give us suggestions for new templates and themes, or to just say hello!</p>
                <p><a href="mailto:feedback@startbootstrap.com">feedback@startbootstrap.com</a>
                </p>
                <ul class="list-inline banner-social-buttons">
                    <li>
                        <a href="https://twitter.com/SBootstrap" class="btn btn-default btn-lg"><i class="fa fa-twitter fa-fw"></i> <span class="network-name">Twitter</span></a>
                    </li>
                    <li>
                        <a href="https://github.com/IronSummitMedia/startbootstrap" class="btn btn-default btn-lg"><i class="fa fa-github fa-fw"></i> <span class="network-name">Github</span></a>
                    </li>
                    <li>
                        <a href="https://plus.google.com/+Startbootstrap/posts" class="btn btn-default btn-lg"><i class="fa fa-google-plus fa-fw"></i> <span class="network-name">Google+</span></a>
                    </li>
                </ul>
            </div>
        </div>
    </section>

    <!-- Map Section -->
    <div id="map"></div>

    <section id="schema" class="container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>Spelschema - Mallorcascenen</h2>
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
                    
                        % for i in mallorca:
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
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>Spelschema - Dieseltältet</h2>
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
                    
                            % for i in diesel:
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
                                <td>{{i["Bandet"]}}</t>
                            </tr>
                            %end
                        </tbody>
                    </table>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>Spelschema - Forumscenen</h2>
                    <table class="table table-responsive">
                        <tr>
                                <th>DATUM</th>
                                <th>STARTTID</th>
                                <th>SLUTTID</th>
                                <th>SCEN</th>
                                <th>BAND</th>
                            
                        </tr>
                    
                            % for i in diesel:
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
                    </table>
            </div>
        </div>
    </section>

<<<<<<< HEAD
                        <p class="intro-text">Välkommen till Dreamland. För att se festivalens spelschema klicka här! .</p>
                        <a href="#valjschema" class="btn btn-circle page-scroll">
=======