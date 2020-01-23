// Your web app's Firebase configuration
var firebaseConfig = {
    apiKey: "AIzaSyDCf0l8yzcCd-66PszmoJocne9IDG9awyc",
    authDomain: "sipc-c6da0.firebaseapp.com",
    databaseURL: "https://sipc-c6da0.firebaseio.com",
    projectId: "sipc-c6da0",
    storageBucket: "sipc-c6da0.appspot.com",
    messagingSenderId: "37122009912",
    appId: "1:37122009912:web:f146b664f6a2052819afcd",
    measurementId: "G-Q2W6SET2PX"
};
// Initialize Firebase
firebase.initializeApp(firebaseConfig);
firebase.analytics();


firebase.auth().onAuthStateChanged(function(user) {
    if (user) {
        var displayName = user.displayName;
        var email = user.email;
        var emailVerified = user.emailVerified;
        var photoURL = user.photoURL;
        var isAnonymous = user.isAnonymous;
        var uid = user.uid;
        var textoVerificado="";
        if(emailVerified===false){
            textoVerificado="Email no verificado";
        }
        else{
            textoVerificado="Email verificado";
        }
        var providerData = user.providerData;
        document.getElementById('botonAcceso').style.display="none";
        document.getElementById('checkLogin').style.display="none";
        document.getElementById('areaRegistro').style.display="none";
        document.getElementById('passA').style.display="none";
        document.getElementById('areaLogin').style.display="";
        document.getElementById('btnCerrar').style.display="";
        document.getElementById('emailA').value=email;


        console.log(user);
    } else {
        document.getElementById('botonAcceso').style.display="";
        document.getElementById('checkLogin').style.display="";
        document.getElementById('areaRegistro').style.display="";
        document.getElementById('areaLogin').style.display="none";
        document.getElementById('passA').style.display="";
        document.getElementById('btnCerrar').style.display="none";



    }
});

function enviar() {
    var email = document.getElementById('email').value;
    var pass = document.getElementById('pass').value;
    firebase.auth().createUserWithEmailAndPassword(email, pass).catch(function(error) {
        var errorCode = error.code;
        var errorMessage = error.message;
        alert(errorMessage);
    }).then(function (){
        verificar();
    })
}
function verificar() {
    var user = firebase.auth().currentUser;

    user.sendEmailVerification().then(function () {
        //Email sent
    }).catch(function (error) {
        //error
    });

}
function acceso() {
    var emailA = document.getElementById('emailA').value;
    var passA = document.getElementById('passA').value;
    firebase.auth().signInWithEmailAndPassword(emailA, passA).catch(function(error) {
        var errorCode = error.code;
        var errorMessage = error.message;
        alert(errorMessage);

    });
}
function cerrar() {
    firebase.auth().signOut()
        .then(function() {
            console.log('Salir');
        })
        .catch(function (error) {
            console.log(error);
        })

}
$(document).ready(function(){
    $('#loginRestro').change(function(){
        if($(this).is(':checked')){
            $('#areaLogin').hide();
            $('#areaRegistro').show();
        }
        else{
            $('#areaLogin').show();
            $('#areaRegistro').hide();
        }
    });
});
