<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Holy Pictures</title>
    
    <!--<basehref="${pageContext.request.requestURI}" /> -->
    
    <link rel="icon" href="../IMG/icon.ico">
    <link rel="stylesheet" type="text/css" href="../CSS/overall.css" />
	<link rel="stylesheet" type="text/css" href="../CSS/options.css" />
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
            <a id="registrierungLink">Register</a>
            <section id="popup" class="hidden">
                <button class="popupclose">X</button>
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
			<section id="registrierungpopup" class="hidden">
                <button class="popupclose">X</button>
				<form id="formRegistrierung" method="post">
					<fieldset>
						<legend>Registrierung</legend>
							<div>
								<label for="name">Name: </label>
								<input type="text" name="name" id="formName" placeholder="Ihren Nachnamen">
							</div>
							<div>
								<label for="vorname">Vorname: </label>
								<input type="text" name="vorname" id="formVorname" placeholder="Ihren Vornamen">
							</div>
							<div>
								<label for="benutzer">Benutzernamen: </label>
								<input type="text" name="benutzer" id="formBenutzer" placeholder="Ihren gewünschten Benutzernamen" required>
								<span></span>
							</div>
							<div>
								<label for="password">Passwort: </label>
								<input type="password" name="password" id="formPassword" placeholder="Ihr Wunsch Passwort" required>
								<span></span>
							</div>
							<div>
								<label for="passwordRepeat">Passwort wiederholen: </label>
								<input type="password" name="passwordRepeat" id="formPasswordRepeat" placeholder="Bitte das Passwort wiederholen" required>
								<span></span>
							</div>
							<div>
								<label for="email">E-Mail-Adresse: </label>
								<input type="email" name="email" id="formEmail" placeholder="Ihre E-Mail-Adresse" required>
								<span></span>
							</div>
							<div>
								<button name="buttonRegistrieren" id="buttonRegistrieren" type="submit">Registrieren</button>
							</div>
							<div id="formInfo">
								(*) = Eingabe erforderlich
							</div>
					</fieldset>
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
	
	<h1>Profil bearbeiten</h1>
	
     
	<h2>Hier kannst du deine Persönlichen Daten ändern</h2>
   	
   	<div id="profiledit">
                <form id="formprofiledit" method="post">
                    <fieldset>
                        <legend>Profil bearbeiten</legend>
                        <div>
                            <label for="name">Name: </label>
                            <input type="text" name="name" id="formName" placeholder="Ihren Nachname" value="Ziehen aus der Datenbank">
                            <span></span>
                        </div>
                        <div>
                            <label for="vorname">Vorname: </label>
                            <input type="text" name="vorname" id="formVorname" placeholder="Ihren Vornamen" value="Ziehen aus der Datenbank">
                            <span></span>
                        </div>
                        <div>
                            <label for="benutzer">Benutzernamen: </label>
                            <input type="text" name="benutzer" id="formBenutzer" placeholder="Ihren gewünschten Benutzernamen" value="Ziehen aus der Datenbank" required>
                            <span></span>
                        </div>
                        <div>
                            <label for="password">Passwort: </label>
                            <input type="password" name="password" id="formPassword" placeholder="Ihr Wunsch Passwort" value="******" required>
                            <span></span>
                        </div>
                        <div>
                            <label for="passwordRepeat">Passwort wiederholen: </label>
                            <input type="password" name="passwordRepeat" id="formPasswordRepeat" placeholder="Bitte das Passwort wiederholen" value="******" required>
                            <span></span>
                        </div>
                        <div>
                            <label for="email">E-Mail-Adresse: </label>
                            <input type="email" name="email" id="formEmail" placeholder="Ihre E-Mail-Adresse" value="Ziehen aus der Datenbank"required>
                            <span></span>
                        </div>
                        <div>
                            <button name="buttonRegistrieren" type="submit">Registrieren</button>
                        </div>
                        <div id="formInfo">
                            (*) = Eingabe erforderlich
                        </div>
                    </fieldset>
                </form>
    </div>
    
      </main>
    
     <footer>
        <div id="footerLinkContainer">
            <a href="XXXX">AGB</a>
            <a href="../HTML/contact.html">Kontakt</a>
            <a href="XXXX">Impressum</a>
         </div>
     </footer>
    <script type="text/javascript" src="../JS/aside.js"></script>
    <script type="text/javascript" src="../JS/header.js"></script>
</body>
</html>