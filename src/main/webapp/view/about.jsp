 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 /*=============== GOOGLE FONTS ===============*/
@import url("https://fonts.googleapis.com/css2?family=Syne:wght@400;500;600&display=swap");
/*=============== VARIABLES CSS ===============*/
:root {
  --header-height: 3.5rem;
  /*========== Colors ==========*/
  /*Color mode HSL(hue, saturation, lightness)*/
  --first-color: hsl(230, 75%, 56%);
  --title-color: hsl(230, 75%, 15%);
  --text-color: hsl(230, 12%, 40%);
  --body-color: hsl(230, 100%, 98%);
  --container-color: hsl(230, 100%, 97%);
  --border-color: hsl(230, 25%, 80%);
  /*========== Font and typography ==========*/
  /*.5rem = 8px | 1rem = 16px ...*/
  --body-font: "Syne", sans-serif;
  --h2-font-size: 1.25rem;
  --normal-font-size: 0.938rem;
  /*========== Font weight ==========*/
  --font-regular: 400;
  --font-medium: 500;
  --font-semi-bold: 600;
  /*========== z index ==========*/
  --z-fixed: 100;
  --z-modal: 1000;
}

/*========== Responsive typography ==========*/
@media screen and (min-width: 1023px) {
  :root {
    --h2-font-size: 1.5rem;
    --normal-font-size: 1rem;
  }
}
/*=============== BASE ===============*/
* {
  box-sizing: border-box;
  padding: 0;
  margin: 0;
}

html {
  scroll-behavior: smooth;
}


body,
input,
button {
  font-family: var(--body-font);
  font-size: var(--normal-font-size);
}

body {
  background-color: var(--body-color);
  color: var(--text-color);
}

input,
button {
  border: none;
  outline: none;
}

ul {
  list-style: none;
}

a {
  text-decoration: none;
}

img {
  display: block;
  max-width: 100%;
  height: auto;
}

/*=============== REUSABLE CSS CLASSES ===============*/
.container {
  max-width: 1120px;
  margin: 0 auto;
  padding: 0 15px;
}

.main {
  position: relative;
  height: 100vh;
}

.main__bg {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  -o-object-fit: cover;
  object-fit: cover;
  -o-object-position: center;
  object-position: center;
  z-index: -1;
}

.search,
.login {
  position: fixed;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  z-index: var(--z-modal);
  background-color: hsla(230, 75%, 15%, 0.1);
  -webkit-backdrop-filter: blur(24px);
  backdrop-filter: blur(24px);
  padding: 8rem 1.5rem 0;
  opacity: 0;
  pointer-events: none;
  transition: opacity 0.2s;
}

.search__close,
.login__close {
  position: absolute;
  top: 2rem;
  right: 2rem;
  font-size: 1.5rem;
  color: var(--title-color);
  cursor: pointer;
}

/*=============== HEADER & NAV ===============*/
.header {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  background-color: var(--body-color);
  box-shadow: 0 2px 16px hsla(230, 75%, 32%, 0.15);
  z-index: var(--z-fixed);
}

.nav {
  height: var(--header-height);
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.nav__logo {
  color: var(--title-color);
  font-weight: var(--font-semi-bold);
  transition: color 0.2s;
}
.nav__menu {
  /* Navigation for mobile devices */
}
@media screen and (max-width: 1023px) {
  .nav__menu {
    position: fixed;
    top: -100%;
    left: 0;
    background-color: var(--body-color);
    box-shadow: 0 8px 16px hsla(230, 75%, 32%, 0.15);
    width: 100%;
    padding-block: 4.5rem 4rem;
    transition: top 0.2s;
  }
}
.nav__list {
  display: flex;
  flex-direction: column;
  row-gap: 2.5rem;
  text-align: center;
}
.nav__link {
  color: var(--title-color);
  font-weight: var(--font-semi-bold);
  transition: color 0.2s;
}
.nav__close {
  position: absolute;
  top: 1.15rem;
  right: 1.5rem;
}
.nav__actions {
  display: flex;
  align-items: center;
  -moz-column-gap: 1rem;
  column-gap: 1rem;
}
.nav__search,
.nav__login,
.nav__toggle,
.nav__close {
  font-size: 1.25rem;
  color: var(--title-color);
  cursor: pointer;
  transition: color 0.2s;
}

:is(.nav__logo, .nav__search, .nav__login, .nav__toggle, .nav__link):hover {
  color: var(--first-color);
}

/* Show menu */
.show-menu {
  top: 0;
}

/*=============== SEARCH ===============*/
.search__form {
  display: flex;
  align-items: center;
  -moz-column-gap: 0.5rem;
  column-gap: 0.5rem;
  background-color: var(--container-color);
  box-shadow: 0 8px 32px hsla(230, 75%, 15%, 0.2);
  padding-inline: 1rem;
  border-radius: 0.5rem;
  transform: translateY(-1rem);
  transition: transform 0.2s;
}
.search__icon {
  font-size: 1.25rem;
  color: var(--title-color);
}
.search__input {
  width: 100%;
  padding-block: 1rem;
  background-color: var(--container-color);
  color: var(--text-color);
}
.search__input::-moz-placeholder {
  color: var(--text-color);
}
.search__input::placeholder {
  color: var(--text-color);
}

/* Show search */
.show-search {
  opacity: 1;
  pointer-events: initial;
}

.show-search .search__form {
  transform: translateY(0);
}

/*=============== LOGIN ===============*/
.login__form {
  display: grid;
  background-color: var(--container-color);
  padding: 2rem 1.5rem 2.5rem;
  box-shadow: 0 8px 32px hsla(230, 75%, 15%, 0.2);
  border-radius: 1rem;
  row-gap: 1.25rem;
  text-align: center;
  transform: translateY(-1rem);
  transition: transform 0.2s;
}
.login__title {
  font-size: var(--h2-font-size);
  color: var(--title-color);
}
.login__group {
  display: grid;
  row-gap: 1rem;
}
.login__label {
  display: block;
  text-align: initial;
  color: var(--title-color);
  font-weight: var(--font-medium);
  margin-bottom: 0.25rem;
}
.login__input {
  width: 100%;
  background-color: var(--container-color);
  border: 2px solid var(--border-color);
  padding: 1rem;
  border-radius: 0.5rem;
  color: var(--text-color);
}
.login__input::-moz-placeholder {
  color: var(--text-color);
}
.login__input::placeholder {
  color: var(--text-color);
}
.login__signup {
  margin-bottom: 0.5rem;
}
.login__signup a {
  color: var(--first-color);
}
.login__forgot {
  display: inline-block;
  color: var(--first-color);
  margin-bottom: 1.25rem;
}
.login__button {
  display: inline-block;
  background-color: var(--first-color);
  width: 100%;
  color: #fff;
  font-weight: var(--font-semi-bold);
  padding: 1rem;
  border-radius: 0.5rem;
  cursor: pointer;
  transition: box-shadow 0.4s;
}
.login__button:hover {
  box-shadow: 0 4px 24px hsla(230, 75%, 40%, 0.4);
}
/* Show login */
.show-login {
  opacity: 1;
  pointer-events: initial;
}

.show-login .login__form {
  transform: translateY(0);
}
  .myimg{
  
  height:450px;
  width:450px;
  
  border-radius:50%;
  background-image:url("premimg.png");
  background-size:cover;
  margin-top: 100px;
  display: inline-block;
  border-bottom: 20px solid pink;
  }
  .introduce{
  position: absolute;
  bottom: 300px;
  right: 200px
  }
  .desc{
  position: absolute;
  bottom:  50px;
  right: 200px;
  height: 300px;
  width: 600px;
 right:100px;
  }

/*=============== BREAKPOINTS ===============*/
/* For medium devices */
@media screen and (min-width: 576px) {
  .search,
  .login {
    padding-top: 10rem;
  }
  .search__form {
    max-width: 450px;
    margin-inline: auto;
  }
  .search__close,
  .login__close {
    width: -moz-max-content;
    width: max-content;
    top: 5rem;
    left: 0;
    right: 0;
    margin-inline: auto;
    font-size: 2rem;
    color: #fff;
  }
  .login__form {
    max-width: 400px;
    margin-inline: auto;
  }
}
/* For large devices */
@media screen and (min-width: 1023px) {
  .nav {
    height: calc(var(--header-height) + 2rem);
    -moz-column-gap: 3rem;
    column-gap: 3rem;
  }
  .nav__close,
  .nav__toggle {
    display: none;
  }
  .nav__menu {
    margin-left: auto;
  }
  .nav__list {
    flex-direction: row;
    -moz-column-gap: 3rem;
    column-gap: 3rem;
  }
  .login__form {
    padding: 3rem 2rem 3.5rem;
  }
}
@media screen and (min-width: 1150px) {
  .container {
    margin-inline: auto;
  }
}
body {
  background: #182028;
  display: flex;
  flex-direction: column;
  justify-content: center;
  height: 100vh;
  margin: 0;
}

 
h2 {
  font-size: 5vmin;
  color: #8bf;
  text-align: left;
  font-family: Lato, sans-serif;
  font-weight: 700;
  margin: 1rem 0 1rem 2rem;
}
h4 {
  font-size: 3vmin;
  color: #8bf;
  text-align: left;
  font-family: Lato, sans-serif;
  font-weight: 700;
  margin: 1rem 0 1rem 2rem;
  letter-spacing: 1px;
}

 

/**/

 
</style>
</head>
<body>
<header class="header" id="header">
  <nav class="nav container">
    <a class="nav__logo" href=""> <img alt="" src="p.png" height="40px" width="40px"></a>

    <div class="nav__menu" id="nav-menu">
      <ul class="nav__list">
        <li class="nav__item"><a class="nav__link" href="homepage">Home</a></li>
        <li class="nav__item"><a class="nav__link" href="aboutpage">About us</a></li>
        <li class="nav__item"><a class="nav__link" href="servicepage">Services</a></li>
     
        <li class="nav__item"><a class="nav__link" href="contactpage">Contact me</a></li>
         <li class="nav__item"><a class="nav__link" href="loginpage">Logout</a></li>
      </ul>
      <!-- Close button -->
      <div class="nav__close" id="nav-close">
        <i class="ri-close-line"></i>
      </div>
    </div>

    <div class="nav__actions">
      <!-- Search button -->
      <i class="ri-search-line nav__search" id="search-btn"></i>
      <!-- Login button -->
      <i class="ri-user-line nav__login" id="login-btn"></i>
      <!-- Toggle button -->
      <div class="nav__toggle" id="nav-toggle">
        <i class="ri-menu-line"></i>
      </div>
    </div>
  </nav>
</header>

<!--==================== SEARCH ====================-->
<div class="search" id="search">
  <form class="search__form" action="">
    <i class="ri-search-line search__icon"></i>
    <input class="search__input" type="search" placeholder="What are you looking for?">
  </form>
  <i class="ri-close-line search__close" id="search-close"></i>
</div>

<!--==================== LOGIN ====================-->
<div class="login" id="login">
  <form class="login__form" action="">
    <h2 class="login__title">Log In</h2>

    <div class="login__group">
      <div class="login__item">
        <label class="login__label" for="email">Email</label>
        <input class="login__input" type="email" placeholder="Write your email" id="email">
      </div>

      <div class="login__item">
        <label class="login__label" for="password">Password</label>
        <input class="login__input" type="password" placeholder="Enter your password" id="password">
      </div>
    </div>

    <div class="login__register">
      <p class="login__signup">
        You do not have an account? <a href="#">Sign up</a>
      </p>

      <a class="login__forgot" href="#">
        You forgot your password
      </a>

      <button class="login__button" type="submit">Log In</button>
    </div>
  </form>

  <i class="ri-close-line login__close" id="login-close"></i>
</div>


 <div class="myimg">
 </div>
  
  <div class="introduce"><link href="https://fonts.googleapis.com/css2?family=Lato:wght@700&display=swap" rel="stylesheet">

 
 
</div>
<div class="desc">
 
<h2>Hello My Name Is Prem Lond</h2>
<h4> I am a B.Sc Computer Science student with a strong foundation in Java development and a passion for full-stack development. I have a solid understanding 
of data structures and algorithms, along with hands-on experience in building 
web applications using Java, Spring Boot, and front-end technologies like 
HTML, CSS, JavaScript, and Angular. I am eager to contribute myskills and 
knowledge  to a dynamic development team.</h4>
</div>

 
</body>
</html>