<footer class="footer">         <!-- Footer -->
    <div class="footer-pri">            <!-- Primary Footer -->
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-4 footer-widget">            <!-- Footer Widget - Blog -->
                    <h5 class="heading inverse">About <span class="color2">PHAB</span></h5>
                    <ul class="blog-thumbnail">
                        <li class="entry">          <!-- Blog Entry Excerpt -->
                            <div class="entry-content">
                                <h4 class="entry-header"><a href="$PageLink('AboutPage')">Who We Are ?</a></h4>
                                <p class="entry-text">PHAB is an international organisation that provides social experiences for young people with disabilities.</p>
                            </div>
                        </li>
                        <li class="entry">          <!-- Blog Entry Excerpt -->
                            <div class="entry-content">
                                <h4 class="entry-header"><a href="$PageLink('HistoryPage')">What We Do ?</a></h4>
                                <p class="entry-text">PHAB holds weekly social clubs throughout the Auckland region mainly focused on young people, aged 16 - 25.</p>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="col-sm-2 footer-widget">            <!-- Footer Widget - Quick Links -->
                    <h5 class="heading inverse">Quick <span class="color2">Links</span></h5>
                    <ul class="quick-links">
                        <% with $GetPage('AboutPage') %>
                            <li><a href="$Link.html">$MenuTitle</a></li>
                        <% end_with %>
                        <% with $GetPage('HistoryPage') %>
                            <li><a href="$Link.html">$MenuTitle</a></li>
                        <% end_with %>
                        <% with $GetPage('ClubHolderPage') %>
                            <li><a href="$Link.html">$MenuTitle</a></li>
                        <% end_with %>
                        <% with $GetPage('EventHolderPage') %>
                            <li><a href="$Link">$MenuTitle</a></li>
                        <% end_with %>
                        <% with $GetPage('VolunteersPage') %>
                            <li><a href="$Link.html">$MenuTitle</a></li>
                        <% end_with %>
                        <% with $GetPage('ContactPage') %>
                            <li><a href="$Link">$MenuTitle</a></li>
                        <% end_with %>
                    </ul>
                </div>
                <div class="col-sm-3 footer-widget">            <!-- Footer Widget - Policies -->
                    <h5 class="heading inverse">External <span class="color2">Links</span></h5>
                    <ul class="quick-links">
                        <li><a href="http://thecube.org.nz/" target="_blank">The Cube</a></li>
                        <li><a href="http://www.linkage.co.nz/" target="_blank">Linkage NZ</a></li>
                    </ul>
                </div>
                <div class="col-sm-3 footer-widget">            <!-- Footer Widget - Contact Info -->
                    <h5 class="heading inverse">Contact <span class="color2">Us</span></h5>
                    <% with $GetPage('ContactPage') %>
                        <address>
                            <strong>PHAB</strong>
                            <span>$Street,<br/> $Suburb,<br/> $City</span>
                        </address>
                        <a href="tel:+4525644563" class="phone"><i class="fa fa-phone fa-fw"></i> $Phone</a>
                        <br>
                        <a href="mailto:test@example.com" class="email"><i class="fa fa-envelope fa-fw"></i> $Email</a>
                    <% end_with %>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-sec">            <!-- Secondary Footer -->
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-9 col-sm-6">
                    <span class="copyright">&copy; Copyright PHAB Association (Auckland) Incorporated 2016</span>           <!-- Copyright Text -->
                </div>
                <div class="col-md-3 col-sm-6">
                    <ul class="social">          <!-- Social Media Links -->
                        <li><a href="https://www.facebook.com/phabnz/" target="_blank"><i class="fa fa-facebook"></i></a></li>
                        <%--<li><a href="#"><i class="fa fa-linkedin"></i></a></li>--%>
                    </ul>
                    <a href="$AbsoluteBaseURL">
                        <img class="t-footer-logo" src="$ThemeDir/img/logos/phab-circle-logo.svg" alt="phab">
                    </a>
                </div>
            </div>
        </div>
    </div>
</footer>

<div id="back"><i class="fa fa-angle-up"></i></div>     <!-- Back To Top -->