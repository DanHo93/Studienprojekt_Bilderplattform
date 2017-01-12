<!doctype html>
<html>
 <head>
   <meta charset="utf-8">
   	<title>Hauptmenü</title>
   	
   	<!--<basehref="${pageContext.request.requestURI}" /> -->
   	
   	<link rel="stylesheet" type="text/css" href="../CSS/overall.css"/>
    <link rel="stylesheet" href="../CSS/profil.css">

 </head>
    

 <body>
    <header>
        <div id="headerLogoContainer">
            <img id="navWelcome" alt="Welcome" src="../IMG/icon.ico">
        </div>
        <div id="headerTitleContainer">
            <a href="./index.html">Fotoplattform - Holy Picture</a>
        </div>
        <div id="headerLoginContainer">
            <a id="loginLink">Login</a>
            <a href="./registrierung.html">Register</a>
            <section id="popup">
                <button id="popupclose">X</button>
                <form method="post" action="/login">
                    <fieldset>
                        <H3>Anmelden</H3>
                        <div>
                            <label id="benutzername" for="benutzername">Benutzername:</label>
                            <input type="text" name="name" id="benName" placeholder="Ihren Benutzernamen" value="HolyID">
                        </div>
                        <div>
                            <label id="passwort" for="passwort">Passwort:</label>
                            <input type="text" name="passwort" id="passwortlogin" placeholder="Ihr Passwort" value="Holypasswort">
                        </div>

                    </fieldset>
                    <button type="submit" id="anmelden">Login</button>
                </form>
            </section>
        </div>
    </header>
     
     <aside>
        <div id="navContainer">
            <div class="navIcon">
                <img id="navProfil" alt="Profil" src="../IMG/aside/profil.png">
            </div>
            <div class="navIcon">
                <img id="navGallery" alt="Gallery" src="../IMG/aside/gallery.png">
            </div>
            <div class="navIcon">
                <img id="navUpload" alt="Upload" src="../IMG/aside/upload.png">
            </div>
            <div class="navIcon">
                <img id="navOptions" alt="Options" src="../IMG/aside/options.png">
            </div>
        </div>
     </aside>
	
	
	

    
     
     <main>
         <h1>Persönliche Startseite</h1>
         <section class="slideContainer">
            <div class="slideContainerTitle">
                Kategorie 1
            </div>
            <div class="slideContainerImages">

             </div>
         </section>

        <section class="slideContainer">
            <div class="slideContainerTitle">
                Kategorie 2
            </div>
            <div class="slideContainerImages">

             </div>
         </section>

        <section class="slideContainer">
            <div class="slideContainerTitle">
                Kategorie 3
            </div>
            <div class="slideContainerImages">

             </div>
         </section>

         <section class="slideContainer">
            <div class="slideContainerTitle">
                Kategorie 4
            </div>
            <div class="slideContainerImages">

             </div>
         </section>

         <section class="slideContainer">
            <div class="slideContainerTitle">
                Kategorie 5
            </div>
            <div class="slideContainerImages">

             </div>
         </section>
    </main>

	<footer>
        <div id="footerLinkContainer">
            <a href="XXXX">AGB</a>
            <a href="../HTML/contact.html">Kontakt</a>
            <a href="XXXX">Impressum</a>
         </div>
     </footer>
    <script type="text/javascript" src="../JS/aside.js"></script>
    <script type="text/javascript" src="../JS/profil.js"></script>
    <script type="text/javascript" src="../JS/header.js"></script>
</body>
</html>