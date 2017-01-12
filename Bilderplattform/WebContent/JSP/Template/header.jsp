<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
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
								<input type="text" name="benutzer" id="formBenutzer" placeholder="Ihren gewÃ¼nschten Benutzernamen" required>
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
</body>
</html>